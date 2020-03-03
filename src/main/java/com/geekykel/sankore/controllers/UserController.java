package com.geekykel.sankore.controllers;

import com.geekykel.sankore.entities.User;
import com.geekykel.sankore.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;


/**
 * Created by Kelvin on 3/02/2020
 */
@Controller
@RequestMapping("/users")
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/list")
    public String listUsers(Model model) {

        // get users from the service
        List<User> users = userService.getAllUsers();

        // add the users to the model
        model.addAttribute("users", users);

        return "list-users";
    }

    @GetMapping("/addUserForm")
    public String showFormForAdd(Model model) {

        // create model attribute to bind form data
        User user = new User();

        model.addAttribute("user", user);

        return "user-form";
    }

    @PostMapping("/saveUser")
    public String saveUser(@Valid @ModelAttribute("user") User user, BindingResult result) {

        if (result.hasErrors()) {
            return "user-form";
        }

        // save the user using our service
        userService.saveUser(user);

        return "redirect:/users/list";
    }

    @GetMapping("/updateUserForm")
    public String showFormForUpdate(@RequestParam("userId") long id, Model model) {

        // get the user from our service
        User user = userService.getUserById(id);

        // set user as a model attribute to pre-populate the form
        model.addAttribute("user", user);

        // send over to our form		
        return "user-form";
    }

    @GetMapping("/deleteUser")
    public String deleteUser(@RequestParam("userId") long id) {

        // delete the user
        userService.deleteUser(id);

        return "redirect:/users/list";
    }
    


}
