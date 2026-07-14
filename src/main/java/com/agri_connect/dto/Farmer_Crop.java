package com.agri_connect.dto;

import java.sql.Date;

public class Farmer_Crop {
	private int framer_crop_id;
	private int farmer_id;
	private int crop_id;
	private double quantity;
	private double price;
	private Date harvested;
	private String status;
	public int getFramer_crop_id() {
		return framer_crop_id;
	}
	public void setFramer_crop_id(int framer_crop_id) {
		this.framer_crop_id = framer_crop_id;
	}
	public int getFarmer_id() {
		return farmer_id;
	}
	public void setFarmer_id(int farmer_id) {
		this.farmer_id = farmer_id;
	}
	public int getCrop_id() {
		return crop_id;
	}
	public void setCrop_id(int crop_id) {
		this.crop_id = crop_id;
	}
	public double getQuantity() {
		return quantity;
	}
	public void setQuantity(double quantity) {
		this.quantity = quantity;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public Date getHarvested() {
		return harvested;
	}
	public void setHarvested(Date harvested) {
		this.harvested = harvested;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Farmer_Crop [framer_crop_id=" + framer_crop_id + ", farmer_id=" + farmer_id + ", crop_id=" + crop_id
				+ ", quantity=" + quantity + ", price=" + price + ", harvested=" + harvested + ", status=" + status
				+ "]";
	}
	
	
}
