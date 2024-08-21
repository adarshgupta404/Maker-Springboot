package com.makershark.backend.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.makershark.backend.Entity.ManufacturingProcess;
import com.makershark.backend.Entity.NatureOfBusiness;
import com.makershark.backend.Entity.Supplier;
import com.makershark.backend.Repository.SupplierRepository;
import com.makershark.backend.Specification.SupplierSpecifications;

@Service
public class SupplierService {

    @Autowired
    private SupplierRepository supplierRepository;

    public Page<Supplier> findSuppliers(String location, NatureOfBusiness natureOfBusiness,
            ManufacturingProcess manufacturingProcess, int page,
            int size, String sortBy, String sortDirection) {

        // Provide default values if sortBy or sortDirection is not specified
        Sort.Direction direction = (sortDirection != null && !sortDirection.isEmpty()) 
                ? Sort.Direction.fromString(sortDirection) 
                : Sort.Direction.ASC;
        String sortField = (sortBy != null && !sortBy.isEmpty()) ? sortBy : "companyName";
        
        Pageable pageable = PageRequest.of(page, size, Sort.by(direction, sortField));
        
        // Create specification based on the provided filters
        Specification<Supplier> spec = SupplierSpecifications.byFilters(location, natureOfBusiness, manufacturingProcess);
        
        return supplierRepository.findAll(spec, pageable);
    }
}
