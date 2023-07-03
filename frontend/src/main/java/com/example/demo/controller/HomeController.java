package com.example.demo.controller;

import com.core.model.Product;
import com.core.services.ProductService;
import com.example.demo.enums.UrlConstants;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/")
public class HomeController {
    private ProductService productService;

    public HomeController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping
    public String myPage() {
        return "homePage";
    }
    @GetMapping("/home")
    public String home() {
        return "welcome";
    }
    @GetMapping(UrlConstants.LIST)
    public String userList(Model model) {
        List<Product> productList = productService.findAll();
        model.addAttribute("products", productList);
        return "products";
    }

    @PostMapping(UrlConstants.LIST)
    public String userListPost(Model model) {
        List<Product> productList = productService.findAll();
        model.addAttribute("products", productList);
        return "redirect:/products";
    }
}

