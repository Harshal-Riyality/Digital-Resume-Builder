package com.nt.service;

import com.nt.dto.ReqUserDTO;

public interface UserService {
    boolean addUser(ReqUserDTO reqDto);
    ReqUserDTO verifyUser(String email, String password, String role);
    void saveRole(String email, String role); // ✅ Add this
}
