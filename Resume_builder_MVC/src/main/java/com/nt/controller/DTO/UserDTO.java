package com.nt.controller.DTO;

public class UserDTO {

    private String username;
    private String mobile;
    private String email;
    private String address;
    private String password;
    private String role; // ✅ Add this

    public UserDTO() {}

    public UserDTO(String username, String mobile, String email, String address, String password, String role) {
        this.username = username;
        this.mobile = mobile;
        this.email = email;
        this.address = address;
        this.password = password;
        this.role = role;
    }

    // Getters & Setters

    public String getUsername() { return username; }
    public void setUsername(String username) { this.username = username; }

    public String getMobile() { return mobile; }
    public void setMobile(String mobile) { this.mobile = mobile; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getAddress() { return address; }
    public void setAddress(String address) { this.address = address; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }
}
