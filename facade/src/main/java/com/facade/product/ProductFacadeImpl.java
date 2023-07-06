package com.facade.product;

import com.core.model.Product;
import com.core.services.ProductService;
import org.springframework.stereotype.Component;

import java.util.List;
@Component
public class ProductFacadeImpl {
    private ProductService productService;

    public ProductFacadeImpl(ProductService productService) {
        this.productService = productService;
    }

    public List<Product> findAll() {
        return productService.findAll();

    }

    public Product find(long productId) {
        return productService.find(productId);
    }
}
