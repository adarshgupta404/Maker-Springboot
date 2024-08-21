package com.makershark.backend.Repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.makershark.backend.Entity.ManufacturingProcess;
import com.makershark.backend.Entity.NatureOfBusiness;
import com.makershark.backend.Entity.Supplier;

public interface SupplierRepository extends JpaRepository<Supplier, Long>, JpaSpecificationExecutor<Supplier> {
    Page<Supplier> findByLocationAndNatureOfBusinessAndManufacturingProcessesContaining(
            String location, NatureOfBusiness natureOfBusiness, ManufacturingProcess manufacturingProcess, Pageable pageable);
}
