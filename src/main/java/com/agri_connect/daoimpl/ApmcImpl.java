package com.agri_connect.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.agri_connect.dao.ApmcDao;
import com.agri_connect.dto.Apmc;
import com.agri_connect.utility.Connector;

public class ApmcImpl implements ApmcDao{
	private Connection con;
	public ApmcImpl() {
		this.con=Connector.RequestConnector();
	}
	@Override
	public void registerOwner(Apmc a) {
		String query = "INSERT INTO apmc_owner VALUES(0,?,?,?,?,?,?,?)";
		
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, a.getOwner_name());
			ps.setString(2,a.getMarket_name());
			ps.setString(3, a.getPhone());
			ps.setString(4, a.getEmail());
			ps.setString(5, a.getPassword());
			ps.setString(6, a.getDistrict());
			ps.setString(7, a.getState());
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public Apmc loginOwner(String email, String password) {
		Apmc a = null;
		String query = "select * from ampc_owner where email=? and password=?";
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				a= new Apmc();
				a.setOwner_name(rs.getString("name"));
				a.setMarket_name(rs.getString("marker_name"));
				a.setPhone(rs.getString("phone"));
				a.setEmail(rs.getString("email"));
				a.setPassword(rs.getString("password"));
				a.setDistrict(rs.getString("district"));
				a.setState(rs.getString("state"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return a;
	}

	@Override
	public Apmc getOwnerById(int ownerId) {
		
		 Apmc a = null;
		    String query = "SELECT * FROM apmc_owner WHERE owner_id=?";
		    try {
				PreparedStatement ps = con.prepareStatement(query);
				  ps.setInt(1, ownerId);

			        ResultSet rs = ps.executeQuery();

			        while(rs.next()) {
			            a = new Apmc();

			            a.setOwner_id(rs.getInt("owner_id"));
			            a.setOwner_name(rs.getString("owner_name"));
			            a.setMarket_name(rs.getString("market_name"));
			            a.setPhone(rs.getString("phone"));
			            a.setEmail(rs.getString("email"));
			            a.setPassword(rs.getString("password"));
			            a.setDistrict(rs.getString("district"));
			            a.setState(rs.getString("state"));
			        }
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return  a;
	}

	@Override
	public void updateOwner(Apmc a) {
		String query = "update apmc_owner set owner_name=?,market_name=?,phone=?,email=?,password=?,district=?,state=? where owner_id=?";
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, a.getOwner_name());
			ps.setString(2, a.getMarket_name());
			ps.setString(3, a.getPhone());
			ps.setString(4, a.getEmail());
			ps.setString(5, a.getPassword());
			ps.setString(6, a.getDistrict());
			ps.setString(7, a.getState());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public void deleteOwner(int ownerId) {
		 String query = "DELETE FROM apmc_owner WHERE owner_id=?";
		 try {
			PreparedStatement ps = con.prepareStatement(query);
			 ps.setInt(1, ownerId);

		        ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		
	}

	@Override
	public List<Apmc> getAllOwners() {
		List<Apmc> list = new ArrayList<>();

	    String query = "SELECT * FROM apmc_owner";
	    try {
			PreparedStatement ps = con.prepareStatement(query);
			 ResultSet rs = ps.executeQuery();

		        while (rs.next()) {

		            Apmc a = new Apmc();

		            a.setOwner_id(rs.getInt("owner_id"));
		            a.setOwner_name(rs.getString("owner_name"));
		            a.setMarket_name(rs.getString("market_name"));
		            a.setPhone(rs.getString("phone"));
		            a.setEmail(rs.getString("email"));
		            a.setPassword(rs.getString("password"));
		            a.setDistrict(rs.getString("district"));
		            a.setState(rs.getString("state"));

		            list.add(a);
		        }
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
		return list;
	}
	
	

	

}
