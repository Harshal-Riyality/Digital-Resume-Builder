package com.nt.controller.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class LoginReqDTO {
	private String email;
	
	private String password;
	private String role;
	
	
}
