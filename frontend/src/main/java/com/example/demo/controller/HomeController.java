package com.example.demo.controller;

import com.example.demo.enums.PagesConstants;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/")
public class HomeController {

    @GetMapping
    public String home() {
        return PagesConstants.WELCOME_PAGE;
    }

    @GetMapping("/welcome")
    public String welcome() {
        return PagesConstants.WELCOME_PAGE;
    }

}

