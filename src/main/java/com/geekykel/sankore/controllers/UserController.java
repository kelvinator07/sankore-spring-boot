package com.geekykel.sankore.controllers;

import com.geekykel.sankore.entities.User;
import com.geekykel.sankore.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;


/**
 * Created by Kelvin on 3/02/2020
 */
@Controller
public class UserController {

    @Autowired
    UserService userService;

//    @RequestMapping("/")
//    public String home() {
//        return "list-users";
//    }

    @GetMapping("/list")
    public String listUsers(Model theModel) {

        // get users from the service
        List<User> theUsers = userService.getAllUsers();

        // add the users to the model
        theModel.addAttribute("users", theUsers);

        return "list-users";
    }

    @GetMapping("/addUserForm")
    public String showFormForAdd(Model theModel) {

        // create model attribute to bind form data
        User user = new User();

        theModel.addAttribute("user", user);

        return "user-form";
    }

    @PostMapping("/saveUser")
    public String saveUser(@Valid @ModelAttribute("user") User user, BindingResult result) {

        if (result.hasErrors()) {
            return "user-form";
        }
        // save the user using our service
        userService.saveUser(user);

        return "redirect:/list";
    }

    @GetMapping("/updateUserForm")
    public String showFormForUpdate(@RequestParam("userId") long id, Model theModel) {

        // get the user from our service
        User user = userService.getUserById(id);

        // set user as a model attribute to pre-populate the form
        theModel.addAttribute("user", user);

        // send over to our form		
        return "user-form";
    }

    @GetMapping("/delete")
    public String deleteUser(@RequestParam("userId") long id) {

        // delete the user
        userService.deleteUser(id);

        return "redirect:/list";
    }
    


}
