package com.surkoff.ecommerce.dao;

import com.surkoff.ecommerce.entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface ProductRepository extends JpaRepository<Product, Long> {

    /**
     * Automatically expose http://localhost:8080/api/products/<b>search/findByCategoryId?id=2</b>
     */
    Page<Product> findByCategoryId(@Param("id") Long id, Pageable pageable);

    @org.springframework.data.rest.core.annotation.RestResource(path = "findByNameContaining")
    Page<Product> findByNameContainingIgnoreCase(@Param("name") String name, Pageable pageable);
}
