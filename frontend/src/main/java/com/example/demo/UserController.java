package com.example.demo;

import com.core.model.User;
import com.core.services.UserService;
import com.example.demo.form.UserForm;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/aa")
    public String viewRegisterForm(Model model) {
        UserForm userForm = new UserForm();
        int size = userService.findAll().size();
        if (size > 0) {
//            userForm.setName(userService.findAll().get(size - 1).getName());
//            userForm.setSurname(userService.findAll().get(size - 1).getSurname());

            System.out.println(userService.findAll().get(size - 1).getFullName()+"-----");
        }
        model.addAttribute("userForm", userForm);
        return "login";
    }

    @PostMapping("/aa")
    public String register(@ModelAttribute("userForm") UserForm userForm, Model model) {
        User user = new User();
//        user.setName(userForm.getName());
//        user.setSurname(userForm.getSurname());
        user.setFullName(userForm.getName() + " " + userForm.getSurname());
        userService.save(user);
        model.addAttribute("userForm", userForm);
        return "login";
    }
}
