package com.nt.controller.controller;

import com.nt.controller.DTO.UserDTO;
import com.nt.controller.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/users")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/registerUser")
    public ResponseEntity<String> registerUser(@RequestBody UserDTO userDTO) {
        userService.registerUser(userDTO);
        return ResponseEntity.ok("User registered successfully from API");
    }
}
