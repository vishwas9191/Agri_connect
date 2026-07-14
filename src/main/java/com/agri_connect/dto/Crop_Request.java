package com.agri_connect.dto;

import java.sql.Date;

public class Crop_Request {
	private int request_id;
	private int owner_id;
	private int farmer_crop_id;
	private String status;
	private Date request_date;
	public int getRequest_id() {
		return request_id;
	}
	public void setRequest_id(int request_id) {
		this.request_id = request_id;
	}
	public int getOwner_id() {
		return owner_id;
	}
	public void setOwner_id(int owner_id) {
		this.owner_id = owner_id;
	}
	public int getFarmer_crop_id() {
		return farmer_crop_id;
	}
	public void setFarmer_crop_id(int farmer_crop_id) {
		this.farmer_crop_id = farmer_crop_id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getRequest_date() {
		return request_date;
	}
	public void setRequest_date(Date request_date) {
		this.request_date = request_date;
	}
	@Override
	public String toString() {
		return "Crop_Request [request_id=" + request_id + ", owner_id=" + owner_id + ", farmer_crop_id="
				+ farmer_crop_id + ", status=" + status + ", request_date=" + request_date + "]";
	}
	
}
