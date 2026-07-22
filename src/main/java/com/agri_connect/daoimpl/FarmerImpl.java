package com.agri_connect.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.agri_connect.dao.FarmerDao;
import com.agri_connect.dto.Farmer;
import com.agri_connect.utility.Connector;

public class FarmerImpl implements FarmerDao{
	private Connection con;
	public FarmerImpl() {
		this.con=Connector.RequestConnector();
	}
	@Override
	public void addfarmer(Farmer f) {
		String query = "insert into Farmer values(0,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, f.getName());
			ps.setString(2, f.getPhone());
			ps.setString(3, f.getEmail());
			ps.setString(4, f.getPassword());
			ps.setString(5, f.getVillage());
			ps.setString(6, f.getDistrict());
			ps.setString(7, f.getState());
			ps.setString(8, f.getRole());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	@Override
	public Farmer findidby(Integer id) {
		 Farmer f = null;
		    String query = "SELECT * FROM farmer WHERE farmer_id=?";
		    try {
				PreparedStatement ps = con.prepareStatement(query);
				 ps.setInt(1, id);

			        ResultSet rs = ps.executeQuery();

			        while(rs.next()) {
			            f = new Farmer();

			            f.setFarmer_id(rs.getInt("farmer_id"));
			            f.setName(rs.getString("name"));
			            f.setPhone(rs.getString("phone"));
			            f.setEmail(rs.getString("email"));
			            f.setPassword(rs.getString("password"));
			            f.setVillage(rs.getString("village"));
			            f.setDistrict(rs.getString("district"));
			            f.setState(rs.getString("state"));
			            f.setRole(rs.getString("role"));
			        }
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return f;
	}
	@Override
	public Farmer findbymailandpassword(String email, String password) {

	    Farmer f = null;

	    String query = "SELECT * FROM farmer WHERE email=? AND password=?";

	    try {

	        PreparedStatement ps = con.prepareStatement(query);

	        ps.setString(1, email);
	        ps.setString(2, password);

	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {

	            f = new Farmer();

	            f.setFarmer_id(rs.getInt("farmer_id"));   // ⭐ MOST IMPORTANT

	            f.setName(rs.getString("name"));

	            f.setPhone(rs.getString("phone"));

	            f.setEmail(rs.getString("email"));

	            f.setPassword(rs.getString("password"));

	            f.setVillage(rs.getString("village"));

	            f.setDistrict(rs.getString("district"));

	            f.setState(rs.getString("state"));

	            f.setRole(rs.getString("role"));
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return f;
	}
	@Override
	public void updateFarmer(Farmer f) {
		String query="update farmer set name=?,phone=?,email=?,password=?,village=?,district=?,state=?,role=? where  farmer_id=?";
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, f.getName());
			ps.setString(2, f.getPhone());
			ps.setString(3, f.getEmail());
			ps.setString(4,f.getPassword());
			ps.setString(5, f.getVillage());
			ps.setString(6, f.getDistrict());
			ps.setString(7, f.getState());
			ps.setString(8, f.getRole());
			ps.setInt(9, f.getFarmer_id());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	@Override
	public void deletebyid(Integer id) {
		String query = "DELETE FROM farmer WHERE farmer_id=?";
		 try {
			PreparedStatement ps = con.prepareStatement(query);
			  ps.setInt(1, id);

		        ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	@Override
	public List<Farmer> findall() {
		 List<Farmer> list = new ArrayList<>();

		    String query = "SELECT * FROM farmer";
		    
		    try {
				PreparedStatement ps = con.prepareStatement(query);
				 ResultSet rs = ps.executeQuery();

			        while (rs.next()) {

			            Farmer f = new Farmer();

			            f.setFarmer_id(rs.getInt("farmer_id"));
			            f.setName(rs.getString("name"));
			            f.setPhone(rs.getString("phone"));
			            f.setEmail(rs.getString("email"));
			            f.setPassword(rs.getString("password"));
			            f.setVillage(rs.getString("village"));
			            f.setDistrict(rs.getString("district"));
			            f.setState(rs.getString("state"));
			            f.setRole(rs.getString("role"));

			            list.add(f);
			        }
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}


		return list;
	}
	@Override
	public Farmer findemailby(String email) {
		String query="select*from farmer where email=?";
		Farmer f=null;
		try {
			PreparedStatement ps= con.prepareStatement(query);
			ps.setString(1, email);
			ResultSet rs= ps.executeQuery();
			while(rs.next()) {
				f=new Farmer();
				f.setFarmer_id(rs.getInt("farmer_id"));
				f.setName(rs.getString("name"));
				f.setPhone(rs.getString("phone"));
				f.setEmail(rs.getString("email"));
				f.setPassword(rs.getString("password"));
				f.setVillage(rs.getString("village"));
				f.setDistrict(rs.getString("district"));
				f.setState(rs.getString("state"));
				f.setRole(rs.getString("role"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return f;
	}

	


}
