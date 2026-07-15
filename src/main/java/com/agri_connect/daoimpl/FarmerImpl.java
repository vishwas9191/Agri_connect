package com.agri_connect.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Farmer findbymailandpassword(String email, String password) {
		Farmer f= null;
		String query="select*from farmer where email=? and password=?";
		try {
			PreparedStatement ps= con.prepareStatement(query);
		ps.setString(1, email);
		ps.setString(2, password);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			f=new Farmer();
			
		    f.setName(rs.getString("name"));
		    f.setPhone(rs.getString("phone"));
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
	public void updateFarmer(FarmerDao f) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void deletebyid(Integer id) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public List<Farmer> findall() {
		// TODO Auto-generated method stub
		return null;
	}

	


}
