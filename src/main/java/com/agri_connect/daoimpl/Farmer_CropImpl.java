package com.agri_connect.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.agri_connect.dao.Farmer_CropDao;
import com.agri_connect.dto.Farmer_Crop;
import com.agri_connect.utility.Connector;

public class Farmer_CropImpl implements Farmer_CropDao{
	private Connection con;
	public Farmer_CropImpl() {
		this.con=Connector.RequestConnector();
	}

	@Override
	public void addFarmerCrop(Farmer_Crop fc) {
		  String query = "insert into farmer_crop values(0,?,?,?,?,?,?)";
		  
		  try {
			PreparedStatement ps = con.prepareStatement(query);
			 ps.setInt(1, fc.getFarmer_id());
	            ps.setInt(2, fc.getCrop_id());
	            ps.setDouble(3, fc.getQuantity());
	           ps.setDouble(4, fc.getPrice());
	            ps.setDate(5, fc.getHarvested());
	            ps.setString(6, fc.getStatus());

	            ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public void updateFarmerCrop(Farmer_Crop fc) {
		String query = "update farmer_crop set farmer_id=?,crop_id=?,quantity=?,price_per_kg=?,harvest_date=?,status=? where farmer_crop_id=?";

		try {
			PreparedStatement ps = con.prepareStatement(query);
			  ps.setInt(1, fc.getFarmer_id());
	            ps.setInt(2, fc.getCrop_id());
	            ps.setDouble(3, fc.getQuantity());
	            ps.setDouble(4, fc.getPrice());
	            ps.setDate(5, fc.getHarvested());
	            ps.setString(6, fc.getStatus());
	            ps.setInt(7, fc.getCrop_id());

	            ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override 
	public void deleteFarmerCrop(int farmerCropId) {
        String query = "delete from farmer_crop where farmer_crop_id=?";
         try {
			PreparedStatement ps = con.prepareStatement(query);
			 ps.setInt(1, farmerCropId);

	            ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}

	@Override
	public Farmer_CropDao getFarmerCropById(int farmerCropId) {
		Farmer_Crop fc = null;
		String query = "select * from farmer_crop where farmer_crop_id=?";
		
		try {
			PreparedStatement ps = con.prepareStatement(query);
			
			 ps.setInt(1, farmerCropId);

	            ResultSet rs = ps.executeQuery();

	            while (rs.next()) {

	                fc = new Farmer_Crop();

	                fc.setCrop_id(farmerCropId);
	                fc.setFarmer_id(rs.getInt("farmer_id"));
	                fc.setCrop_id(rs.getInt("crop_id"));
	                fc.setQuantity(rs.getDouble("quantity"));
	                fc.setPrice(rs.getDouble("price"));
	                fc.setHarvested(rs.getDate("harvest_date"));
	                fc.setStatus(rs.getString("status"));

	            }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Farmer_Crop> getAllFarmerCrops() {
		
		  List<Farmer_Crop> list = new ArrayList<>();

		    String query = "SELECT * FROM farmer_crop";

		try {
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();

	        while (rs.next()) {

	            Farmer_Crop fc = new Farmer_Crop();

	            fc.setCrop_id(rs.getInt("farmer_crop_id"));
	            fc.setFarmer_id(rs.getInt("farmer_id"));
	            fc.setCrop_id(rs.getInt("crop_id"));
	            fc.setQuantity(rs.getDouble("quantity"));
	            fc.setPrice(rs.getDouble("price_per_kg"));
	            fc.setHarvested(rs.getDate("harvest_date"));
	            fc.setStatus(rs.getString("status"));

	            list.add(fc);
	        }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Farmer_Crop> getCropsByFarmerId(int farmerId) {
		List<Farmer_Crop> list = new ArrayList<>();

	    String query = "SELECT * FROM farmer_crop WHERE farmer_id=?";
	    
	    try {
			PreparedStatement ps = con.prepareStatement(query);
			 ps.setInt(1, farmerId);

		        ResultSet rs = ps.executeQuery();

		        while (rs.next()) {

		            Farmer_Crop fc = new Farmer_Crop();

		            fc.setCrop_id(rs.getInt("farmer_crop_id"));
		            fc.setFarmer_id(rs.getInt("farmer_id"));
		            fc.setCrop_id(rs.getInt("crop_id"));
		            fc.setQuantity(rs.getDouble("quantity"));
		            fc.setPrice(rs.getDouble("price_per_kg"));
		            fc.setHarvested(rs.getDate("harvest_date"));
		            fc.setStatus(rs.getString("status"));

		            list.add(fc);
		        }
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Farmer_Crop> getCropsByCropId(int cropId) {
		List<Farmer_Crop> list = new ArrayList<>();
		 String query = "SELECT * FROM farmer_crop WHERE crop_id=?";
		try {
			PreparedStatement ps = con.prepareStatement(query);
			 ps.setInt(1, cropId);

		        ResultSet rs = ps.executeQuery();

		        while (rs.next()) {

		            Farmer_Crop fc = new Farmer_Crop();

		            fc.setCrop_id(rs.getInt("farmer_crop_id"));
		            fc.setFarmer_id(rs.getInt("farmer_id"));
		            fc.setCrop_id(rs.getInt("crop_id"));
		            fc.setQuantity(rs.getDouble("quantity"));
		            fc.setPrice(rs.getDouble("price_per_kg"));
		            fc.setHarvested(rs.getDate("harvest_date"));
		            fc.setStatus(rs.getString("status"));

		            list.add(fc);
		        }
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	

	

}
