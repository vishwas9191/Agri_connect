package com.agri_connect.dto;

public class Farmer {

    private int farmer_id;
    private String name;
    private String phone;
    private String email;
    private String password;
    private String village;
    private String district;
    private String state;
    private String role;

    public int getFarmer_id() {
        return farmer_id;
    }

    public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public void setFarmer_id(int farmer_id) {
        this.farmer_id = farmer_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getVillage() {
        return village;
    }

    public void setVillage(String village) {
        this.village = village;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Override
	public String toString() {
		return "Farmer [farmer_id=" + farmer_id + ", name=" + name + ", phone=" + phone + ", email=" + email
				+ ", password=" + password + ", village=" + village + ", district=" + district + ", state=" + state
				+ ", role=" + role + "]";
	}
}