package com.example.demo.controller;

import com.core.services.ProductService;
import com.example.demo.enums.PagesConstants;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductController {

    @GetMapping("/products")
    public String productList() {
        return PagesConstants.PRODUCT_LIST_PAGE;
    }

}

