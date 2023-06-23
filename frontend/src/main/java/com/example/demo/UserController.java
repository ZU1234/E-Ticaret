package com.example.demo;

import com.core.model.User;
import com.core.services.UserService;
import com.example.demo.form.UserForm;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }


    @GetMapping("/")
    public String viewRegisterForm(Model model) {
        UserForm userForm = new UserForm();
        int size= userService.findAll().size();
        if(size>0){
        userForm.setFullName(userService.findAll().get(size-1).getFullName());}
        model.addAttribute("userForm", userForm);
        return "register";
    }

    @PostMapping("/")
    public String register(Model model, @ModelAttribute("userForm") UserForm userForm) {
        User user = new User();
        user.setName(userForm.getName());
        user.setEmail(userForm.getEmail());
        user.setSurname(userForm.getSurname());
        user.setFullName(userForm.getName() + " " + userForm.getSurname());
        userService.save(user);
        model.addAttribute("userForm", userForm);
        return "register";
    }
}
