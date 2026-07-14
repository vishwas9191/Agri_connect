package com.agri_connect.dto;

public class Crop {
	private int crop_id;
	private String name;
	private String category;
	private String season;
	public int getCrop_id() {
		return crop_id;
	}
	public void setCrop_id(int crop_id) {
		this.crop_id = crop_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getSeason() {
		return season;
	}
	public void setSeason(String season) {
		this.season = season;
	}
	@Override
	public String toString() {
		return "Crop [crop_id=" + crop_id + ", name=" + name + ", category=" + category + ", season=" + season + "]";
	}
	
}
