package com.nt.controller.controller;

import com.nt.controller.DTO.LoginReqDTO;
import com.nt.controller.DTO.UserDTO;
import com.nt.controller.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class LoginController {

	@Autowired
	private UserService userService;

	// 🔐 Login POST handler
	@PostMapping("/loginUser")
	public String login(@RequestParam String email, @RequestParam String password, @RequestParam String role,
			HttpSession session, Model model) {

		// Prepare login DTO
		LoginReqDTO dto = new LoginReqDTO(email, password, role);

		// Validate user through service/API
		UserDTO user = userService.validateLogin(dto);

		if (user != null) {
			// ✅ Update role in DB if different or not set
			if (user.getRole() == null || !user.getRole().equalsIgnoreCase(role)) {
				user.setRole(role);
				userService.updateUserRole(email, role); // ✅ Only this line added
			}

			// ✅ Store user in session
			session.setAttribute("loggedInUser", user);

			// ✅ Redirect based on role
			if ("admin".equalsIgnoreCase(role)) {
				return "redirect:/dashboard";
			} else if ("user".equalsIgnoreCase(role)) {
				return "redirect:/index";
			} else {
				model.addAttribute("error", "Unknown role. Access denied.");
				return "module/login";
			}
		} else {
			model.addAttribute("error", "Invalid email, password, or role.");
			return "module/login";
		}
	}

	// 🌐 Admin Dashboard
	@GetMapping("/dashboard")
	public String dashboard() {
		return "module/dashboard"; // maps to: /WEB-INF/views/module/dashboard.jsp
	}

	// 🚫 Do not add /index mapping to avoid HomeController conflict
}
