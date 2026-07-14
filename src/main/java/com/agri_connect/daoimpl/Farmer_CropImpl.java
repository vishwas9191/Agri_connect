package com.agri_connect.daoimpl;

import java.sql.Connection;
import java.util.List;

import com.agri_connect.dao.Farmer_CropDao;
import com.agri_connect.utility.Connector;

public class Farmer_CropImpl implements Farmer_CropDao{
	private Connection con;
	public Farmer_CropImpl() {
		this.con=Connector.RequestConnector();
	}

	
	
	@Override
	public void addFarmerCrop(Farmer_CropDao farmerCrop) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateFarmerCrop(Farmer_CropDao farmerCrop) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteFarmerCrop(int farmerCropId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Farmer_CropDao getFarmerCropById(int farmerCropId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Farmer_CropDao> getAllFarmerCrops() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Farmer_CropDao> getCropsByFarmerId(int farmerId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Farmer_CropDao> getCropsByCropId(int cropId) {
		// TODO Auto-generated method stub
		return null;
	}

}
