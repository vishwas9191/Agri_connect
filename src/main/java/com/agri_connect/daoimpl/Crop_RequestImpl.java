package com.agri_connect.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.agri_connect.dao.Crop_RequestDao;
import com.agri_connect.dto.Crop_Request;
import com.agri_connect.utility.Connector;

public class Crop_RequestImpl implements  Crop_RequestDao{
	private Connection con;
	public Crop_RequestImpl() {
		this.con=Connector.RequestConnector();
	}

	@Override
	public void sendRequest(Crop_Request request) {
		String query = "INSERT INTO crop_request VALUES(?,?,?,?)";
		
		try {
			PreparedStatement ps = con.prepareStatement(query);
			 ps.setInt(1, request.getOwner_id());
	            ps.setInt(2, request.getFarmer_crop_id());
	            ps.setString(3, request.getStatus());
	            ps.setDate(4, request.getRequest_date());

	            ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}

	@Override
	public void acceptRequest(int requestId) {
		 String query = "UPDATE crop_request SET status=? WHERE request_id=?";
		 try {
			PreparedStatement ps = con.prepareStatement(query);
			  ps.setString(1, "Accepted");
	            ps.setInt(2, requestId);

	            ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}

	@Override
	public void rejectRequest(int requestId) {
		 String query = "UPDATE crop_request SET status=? WHERE request_id=?";
		 
		 try {
			PreparedStatement ps = con.prepareStatement(query);
			
			ps.setString(1, "Rejected");
            ps.setInt(2, requestId);

            ps.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}

	@Override
	public Crop_Request getRequestById(int requestId) {
		 Crop_Request request = null;

	        String query = "SELECT * FROM crop_request WHERE request_id=?";
	        try {
				PreparedStatement ps = con.prepareStatement(query);

	            ps.setInt(1, requestId);

	            ResultSet rs = ps.executeQuery();

	            while(rs.next()) {

	                request = new Crop_Request();

	                request.setRequest_id(rs.getInt("request_id"));
	                request.setOwner_id(rs.getInt("owner_id"));
	                request.setFarmer_crop_id(rs.getInt("farmer_crop_id"));
	                request.setStatus(rs.getString("status"));
	                request.setRequest_date(rs.getDate("request_date"));
	            }
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		return request;
	}

	@Override
	public List<Crop_Request> getAllRequests() {
		List<Crop_Request> list = new ArrayList<>();

        String query = "SELECT * FROM crop_request";

        try {
			PreparedStatement ps = con.prepareStatement(query);
			  ResultSet rs = ps.executeQuery();

	            while (rs.next()) {

	                Crop_Request request = new Crop_Request();

	                request.setRequest_id(rs.getInt("request_id"));
	                request.setOwner_id(rs.getInt("owner_id"));
	                request.setFarmer_crop_id(rs.getInt("farmer_crop_id"));
	                request.setStatus(rs.getString("status"));
	                request.setRequest_date(rs.getDate("request_date"));

	                list.add(request);
	            }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Crop_Request> getRequestsByOwner(int ownerId) {
		 List<Crop_Request> list = new ArrayList<>();

	        String query = "SELECT * FROM crop_request WHERE owner_id=?";
	        try {
				PreparedStatement ps = con.prepareStatement(query);
			     ps.setInt(1, ownerId);

		            ResultSet rs = ps.executeQuery();

		            while (rs.next()) {

		                Crop_Request request = new Crop_Request();

		                request.setRequest_id(rs.getInt("request_id"));
		                request.setOwner_id(rs.getInt("owner_id"));
		                request.setFarmer_crop_id(rs.getInt("farmer_crop_id"));
		                request.setStatus(rs.getString("status"));
		                request.setRequest_date(rs.getDate("request_date"));

		                list.add(request);
		            }
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return list;
	}

	@Override
	public List<Crop_Request> getRequestsByFarmerCrop(int farmerCropId) {
		 List<Crop_Request> list = new ArrayList<>();

	        String query = "SELECT * FROM crop_request WHERE farmer_crop_id=?";
	        try {
				PreparedStatement ps = con.prepareStatement(query);
				  ps.setInt(1, farmerCropId);

		            ResultSet rs = ps.executeQuery();

		            while (rs.next()) {

		                Crop_Request request = new Crop_Request();

		                request.setRequest_id(rs.getInt("request_id"));
		                request.setOwner_id(rs.getInt("owner_id"));
		                request.setFarmer_crop_id(rs.getInt("farmer_crop_id"));
		                request.setStatus(rs.getString("status"));
		                request.setRequest_date(rs.getDate("request_date"));

		                list.add(request);
		            }
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		return list;
	}

	@Override
	public void deleteRequest(int requestId) {
		 String query = "DELETE FROM crop_request WHERE request_id=?";

		 try {
			PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, requestId);

            ps.executeUpdate();

            System.out.println("Request Deleted Successfully");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	

	
	}


