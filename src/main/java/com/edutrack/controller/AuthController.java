package com.edutrack.controller;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.edutrack.model.User;
import com.edutrack.service.UserService;


import java.util.List;

@RestController
@RequestMapping("/auth")
@CrossOrigin
public class AuthController {

    @Autowired
    private UserService userService;

    @PostMapping("/register")
    public User register(@RequestBody User user){
        return userService.register(user);
    }

@PostMapping("/login")
public String login(@RequestBody User user){

    User loggedUser = userService.login(user.getEmail(), user.getPassword());

    if(loggedUser != null){
        return "Login Successful";
    } else {
        return "Invalid Email or Password";
    }
}

    @GetMapping("/users")
    public List<User> getUsers(){
        return userService.getAllUsers();
    }

}