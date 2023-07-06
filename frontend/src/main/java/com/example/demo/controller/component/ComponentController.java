package com.example.demo.controller.component;

import com.core.model.Product;
import com.example.demo.enums.PagesConstants;
import com.facade.product.ProductFacadeImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class ComponentController {
    private ProductFacadeImpl productFacade;

    public ComponentController(ProductFacadeImpl productFacade) {
        this.productFacade = productFacade;
    }

    @GetMapping("/productList")
    public String productList(Model model) {
        List<Product> productList = productFacade.findAll();
        model.addAttribute("products", productList);
        return PagesConstants.PRODUCT_LIST_COMPONENT;
    }

    @GetMapping("/productDetails/{productId}")
    public String productDetails(@PathVariable("productId") long productId, Model model) {
        Product product = productFacade.find(productId);
        model.addAttribute("product", product);
        return PagesConstants.PRODUCT_DETAIL_COMPONENT;
    }
    @GetMapping("/scrollBanner")
    public String productBanner(Model model) {
        List<Product> productList = productFacade.findAll();
        model.addAttribute("products", productList);
        return PagesConstants.SCROLL_BANNER_COMPONENT;
    }

}
