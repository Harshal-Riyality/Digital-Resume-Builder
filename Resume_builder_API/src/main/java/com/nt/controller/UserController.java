package com.nt.controller;

import com.nt.dto.LoginDTO;
import com.nt.dto.ReqUserDTO;
import com.nt.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin("*")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/saveUser")
    public ResponseEntity<Boolean> addUser(@RequestBody ReqUserDTO reqDto) {
        boolean result = userService.addUser(reqDto);
        return ResponseEntity.ok(result);
    }

    @PostMapping("/login")
    public ResponseEntity<ReqUserDTO> login(@RequestBody LoginDTO dto) {
        ReqUserDTO result = userService.verifyUser(dto.getEmail(), dto.getPassword(), dto.getRole());
        if (result != null) {
            return new ResponseEntity<>(result, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
        }
    }

    // ✅ New endpoint to update user role
    @PutMapping("/updateRole")
    public ResponseEntity<String> updateUserRole(@RequestParam String email, @RequestParam String role) {
        userService.saveRole(email, role);
        return ResponseEntity.ok("Role updated successfully");
    }
}
