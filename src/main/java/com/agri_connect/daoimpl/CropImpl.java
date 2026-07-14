package com.agri_connect.daoimpl;

import java.sql.Connection;
import java.util.List;

import com.agri_connect.dao.Crop_RequestDao;
import com.agri_connect.utility.Connector;

public class CropImpl implements Crop_RequestDao{
	
	private Connection con;
	public CropImpl() {
		this.con=Connector.RequestConnector();
	}

	@Override
	public void sendRequest(Crop_RequestDao request) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void acceptRequest(int requestId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void rejectRequest(int requestId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Crop_RequestDao getRequestById(int requestId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Crop_RequestDao> getAllRequests() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Crop_RequestDao> getRequestsByOwner(int ownerId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Crop_RequestDao> getRequestsByFarmerCrop(int farmerCropId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteRequest(int requestId) {
		// TODO Auto-generated method stub
		
	}

}
