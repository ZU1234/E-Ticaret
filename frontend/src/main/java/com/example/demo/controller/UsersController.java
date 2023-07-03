package com.example.demo.controller;

import com.core.model.Product;
import com.core.model.User;
import com.core.services.UserService;
import com.example.demo.enums.UrlConstants;
import com.example.demo.form.UserForm;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class UsersController {

    private final UserService userService;


    public UsersController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping(UrlConstants.LOGIN)
    public String showLoginForm(Model model) {
        return "login";
    }
    @PostMapping(UrlConstants.LOGIN)
    public String showLogin(Model model) {
        return "redirect:/home";
    }


    @GetMapping(UrlConstants.REGISTER)
    public String showRegisterForm(Model model) {
        return "register";
    }

    @PostMapping(UrlConstants.REGISTER)
    public String registerfront(@ModelAttribute("userForm") UserForm userForm) {

        return "redirect:/home";
    }




}
