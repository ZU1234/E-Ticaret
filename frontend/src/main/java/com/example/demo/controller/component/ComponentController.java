package com.example.demo.controller.component;

import com.core.model.Product;
import com.core.services.ProductService;
import com.example.demo.enums.PagesConstants;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class ComponentController {
    private ProductService productService;

    public ComponentController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/productList")
    public String productList(Model model) {
        List<Product> productList = productService.findAll();
        model.addAttribute("products", productList);
        return PagesConstants.PRODUCT_LIST_COMPONENT;
    }

    @GetMapping("/productDetails/{productId}")
    public String productDetails(@PathVariable("productId") long productId, Model model) {
        Product product = productService.find(productId);
        model.addAttribute("product", product);
        return PagesConstants.PRODUCT_DETAIL_COMPONENT;
    }
    @GetMapping("/scrollBanner")
    public String productBanner(Model model) {
        List<Product> productList = productService.findAll();
        model.addAttribute("products", productList);
        return PagesConstants.SCROLL_BANNER_COMPONENT;
    }

}
