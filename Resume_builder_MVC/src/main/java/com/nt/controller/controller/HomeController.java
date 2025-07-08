package com.nt.controller.controller;

import com.nt.controller.DTO.UserDTO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping({"/", "/login"})
    public String showLoginPage() {
        return "module/login";  // maps to: /WEB-INF/views/module/login.jsp
    }

    @GetMapping("/signup")
    public String showSignupPage(Model model) {
        model.addAttribute("customer", new UserDTO());
        return "module/signup";  // maps to: /WEB-INF/views/module/signup.jsp
    }

    @GetMapping("/index")
    public String indexPage() {
        return "index"; // maps to: /WEB-INF/views/index.jsp (User Dashboard)
    }
}
