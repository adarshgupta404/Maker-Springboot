package com.makershark.backend.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.makershark.backend.Entity.ManufacturingProcess;
import com.makershark.backend.Entity.NatureOfBusiness;
import com.makershark.backend.Entity.Supplier;
import com.makershark.backend.Service.SupplierService;

@RestController
@RequestMapping("/api/supplier")
public class SupplierController {

    @Autowired
    private SupplierService supplierService;

    @PostMapping("/query")
    public ResponseEntity<Page<Supplier>> querySuppliers(
            @RequestBody SupplierQueryRequest request) {
        String sortBy = (request.getSortBy() != null) ? request.getSortBy() : "companyName";
        String sortDirection = (request.getSortDirection() != null) ? request.getSortDirection() : "asc";

        Page<Supplier> suppliers = supplierService.findSuppliers(
                request.getLocation(),
                request.getNatureOfBusiness(),
                request.getManufacturingProcess(),
                request.getPage(),
                request.getSize(),
                sortBy,
                sortDirection);

        return ResponseEntity.ok(suppliers);
    }
}

class SupplierQueryRequest {
    private String location;
    private NatureOfBusiness natureOfBusiness;
    private ManufacturingProcess manufacturingProcess;
    private int page = 0;
    private int size = 10;
    private String sortBy;
    private String sortDirection;

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public NatureOfBusiness getNatureOfBusiness() {
        return natureOfBusiness;
    }

    public void setNatureOfBusiness(NatureOfBusiness natureOfBusiness) {
        this.natureOfBusiness = natureOfBusiness;
    }

    public ManufacturingProcess getManufacturingProcess() {
        return manufacturingProcess;
    }

    public void setManufacturingProcess(ManufacturingProcess manufacturingProcess) {
        this.manufacturingProcess = manufacturingProcess;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public String getSortBy() {
        return this.sortBy;
    }

    public void setSortBy(String sortBy) {
        this.sortBy = sortBy;
    }

    public String getSortDirection() {
        return this.sortDirection;
    }

    public void setSortDirection(String sortDirection) {
        this.sortDirection = sortDirection;
    }
}
