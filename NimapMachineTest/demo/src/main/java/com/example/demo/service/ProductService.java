package com.example.demo.service;

import org.springframework.data.domain.Page;

import com.example.demo.entity.Product;

public interface ProductService {
    Page<Product> getAllProducts(int page);
    Product getProductById(Long id);
    Product createProduct(Product product);
    Product updateProduct(Long id, Product product);
    void deleteProduct(Long id);
}
