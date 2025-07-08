package com.nt.serviceimpl;

import com.nt.dto.ReqUserDTO;
import com.nt.entity.User;
import com.nt.mapper.UserMapper;
import com.nt.repository.UserRepository;
import com.nt.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public boolean addUser(ReqUserDTO reqDto) {
        User user = new User();
        user.setUsername(reqDto.getUsername());
        user.setMobile(reqDto.getMobile());
        user.setEmail(reqDto.getEmail());
        user.setAddress(reqDto.getAddress());
        user.setPassword(reqDto.getPassword());

        // ❌ Avoid setting role during signup (default to "USER")
        user.setRole("USER");

        return userRepository.save(user) != null;
    }

    @Override
    public ReqUserDTO verifyUser(String email, String password, String role) {
        // ✅ Deny access if role is ADMIN but email is not admin@gmail.com
        if ("ADMIN".equalsIgnoreCase(role) && !email.equalsIgnoreCase("admin@gmail.com")) {
            return null; // ⛔ unauthorized admin attempt
        }

        User user = userRepository.findByEmailAndPassword(email, password);
        if (user != null) {
            // ✅ Save role during login
            user.setRole(role);
            userRepository.save(user);

            ReqUserDTO dto = UserMapper.toDTO(user);
            dto.setRole(role);
            return dto;
        }
        return null;
    }

    @Override
    public void saveRole(String email, String role) {
        User user = userRepository.findByEmail(email);
        if (user != null) {
            user.setRole(role);
            userRepository.save(user);
        }
    }
}
