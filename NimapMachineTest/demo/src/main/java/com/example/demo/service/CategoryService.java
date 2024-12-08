package com.example.demo.service;

import org.springframework.data.domain.Page;

import com.example.demo.entity.Category;

public interface CategoryService {
    Page<Category> getAllCategories(int page);
    Category getCategoryById(Long id);
    Category createCategory(Category category);
    Category updateCategory(Long id, Category category);
    void deleteCategory(Long id);
}
