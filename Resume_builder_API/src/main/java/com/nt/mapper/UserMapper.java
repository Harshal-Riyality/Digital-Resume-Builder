package com.nt.mapper;

import com.nt.dto.ReqUserDTO;
import com.nt.entity.User;

public class UserMapper {

    public static User toEntity(ReqUserDTO dto) {
        User user = new User();
        user.setUsername(dto.getUsername());
        user.setMobile(dto.getMobile());
        user.setEmail(dto.getEmail());
        user.setAddress(dto.getAddress());
        user.setPassword(dto.getPassword());
        user.setRole(dto.getRole()); // ✅ Now setting role
        return user;
    }

    public static ReqUserDTO toDTO(User user) {
        return new ReqUserDTO(
            user.getUsername(),
            user.getMobile(),
            user.getEmail(),
            user.getAddress(),
            user.getPassword(),
            user.getRole() // ✅ Now including role in DTO
        );
    }
}
