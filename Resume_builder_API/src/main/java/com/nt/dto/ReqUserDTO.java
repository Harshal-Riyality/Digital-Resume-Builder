package com.nt.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReqUserDTO {

    private String username;
    private String mobile;
    private String email;
    private String address;
    private String password;
    private String role; // ✅ Add this line
}
