package com.nt.controller.controller;

import com.nt.controller.DTO.UserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/signup")
public class SignupController {

    @Autowired
    private RestTemplate restTemplate;

    private final String API_URL = "http://localhost:8080/api/users/registerUser";

    @GetMapping("/form")
    public String showSignupForm() {
        return "module/signup";
    }

    @PostMapping("/registerUser")
    public String registerUser(@ModelAttribute UserDTO reqDto, RedirectAttributes redirectAttributes) {
        // ✅ Default role assigned during signup
        reqDto.setRole("USER");

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        HttpEntity<UserDTO> request = new HttpEntity<>(reqDto, headers);

        try {
            ResponseEntity<String> response = restTemplate.postForEntity(API_URL, request, String.class);
            if (response.getStatusCode().is2xxSuccessful()) {
                redirectAttributes.addFlashAttribute("message", "Signup successful. Please log in.");
                return "redirect:/login";
            } else {
                redirectAttributes.addFlashAttribute("error", "Signup failed. Please try again.");
                return "redirect:/signup/form";
            }
        } catch (Exception e) {
            e.printStackTrace();
            redirectAttributes.addFlashAttribute("error", "Error during signup. Please try again.");
            return "redirect:/signup/form";
        }
    }
}
