package com.nt.controller.service;

import org.springframework.stereotype.Service;
import com.nt.controller.DTO.LoginReqDTO;
import com.nt.controller.DTO.UserDTO;

@Service
public interface UserService {
    boolean registerUser(UserDTO reqDto);

    UserDTO loginReqUser(LoginReqDTO dto);

    UserDTO validateLogin(LoginReqDTO dto);

    // ✅ NEW method
    void updateUserRole(String email, String role);
}
