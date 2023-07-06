package com.example.demo.controller;

import com.core.services.UserService;
import com.example.demo.enums.PagesConstants;
import com.example.demo.form.UserForm;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UsersController {

    @GetMapping("/login")
    public String loginForm() {
        return PagesConstants.LOGIN_PAGE;
    }

    @PostMapping("/login")
    public String Login(Model model) {
        return PagesConstants.REDIRECT;
    }

    @GetMapping("/register")
    public String registerForm(Model model) {
        return PagesConstants.REGISTER_PAGE;
    }

    @PostMapping("/register")
    public String register(@ModelAttribute("userForm") UserForm userForm) {

        return PagesConstants.REDIRECT;
    }
}
