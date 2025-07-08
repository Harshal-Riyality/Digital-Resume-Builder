package com.nt.controller.service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.nt.controller.DTO.LoginReqDTO;
import com.nt.controller.DTO.UserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class UserServiceimpl implements UserService {

    @Autowired
    private RestTemplate restTemplate;

    @Override
    public boolean registerUser(UserDTO reqDto) {
        String url = "http://localhost:8181/saveUser";
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);

        HttpEntity<UserDTO> request = new HttpEntity<>(reqDto, headers);
        try {
            restTemplate.postForObject(url, request, String.class);
            return true;
        } catch (Exception e) {
            System.out.println("Error during signup: " + e.getMessage());
            return false;
        }
    }

    @Override
    public UserDTO loginReqUser(LoginReqDTO dto) {
        return null;
    }

    @Override
    public UserDTO validateLogin(LoginReqDTO dto) {
        String url = "http://localhost:8181/login";
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);

        HttpEntity<LoginReqDTO> request = new HttpEntity<>(dto, headers);

        try {
            ResponseEntity<String> response = restTemplate.postForEntity(url, request, String.class);
            String body = response.getBody();

            if (response.getStatusCode() == HttpStatus.OK && body != null && body.trim().startsWith("{")) {
                ObjectMapper mapper = new ObjectMapper();
                JsonNode jsonNode = mapper.readTree(body);

                UserDTO user = new UserDTO();
                user.setUsername(jsonNode.get("username").asText());
                user.setMobile(jsonNode.get("mobile").asText());
                user.setEmail(jsonNode.get("email").asText());
                user.setAddress(jsonNode.get("address").asText());
                user.setPassword(jsonNode.get("password").asText());
                user.setRole(dto.getRole()); // use role from login form

                // ✅ Call API to update role in DB
                updateUserRole(user.getEmail(), user.getRole());

                return user;
            }

        } catch (Exception e) {
            System.out.println("Login error: " + e.getMessage());
        }

        return null;
    }

    public void updateUserRole(String email, String role) {
        try {
            String updateUrl = "http://localhost:8181/updateRole?email=" + email + "&role=" + role;
            restTemplate.put(updateUrl, null);
        } catch (Exception e) {
            System.out.println("Failed to update role: " + e.getMessage());
        }
    }
}
