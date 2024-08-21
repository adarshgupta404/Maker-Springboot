package com.makershark.backend.Specification;

import org.springframework.data.jpa.domain.Specification;

import com.makershark.backend.Entity.ManufacturingProcess;
import com.makershark.backend.Entity.NatureOfBusiness;
import com.makershark.backend.Entity.Supplier;

import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Predicate;
import jakarta.persistence.criteria.Root;

public class SupplierSpecifications {

    public static Specification<Supplier> byFilters(String location, NatureOfBusiness natureOfBusiness,
            ManufacturingProcess manufacturingProcess) {
        return new Specification<Supplier>() {
            @Override
            public Predicate toPredicate(Root<Supplier> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
                Predicate predicate = cb.conjunction();

                if (location != null && !location.isEmpty()) {
                    predicate = cb.and(predicate, cb.equal(root.get("location"), location));
                }

                if (natureOfBusiness != null) {
                    predicate = cb.and(predicate, cb.equal(root.get("natureOfBusiness"), natureOfBusiness));
                }

                if (manufacturingProcess != null) {
                    predicate = cb.and(predicate,
                            cb.isMember(manufacturingProcess, root.get("manufacturingProcesses")));
                }

                return predicate;
            }
        };
    }
}