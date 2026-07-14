package com.agri_connect.daoimpl;

import java.sql.Connection;
import java.util.List;

import com.agri_connect.dao.ApmcDao;
import com.agri_connect.utility.Connector;

public class ApmcImpl implements ApmcDao{
	
	private Connection con;
	public ApmcImpl() {
		this.con=Connector.RequestConnector();
	}

	@Override
	public void registerOwner(ApmcDao owner) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ApmcDao loginOwner(String email, String password) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ApmcDao getOwnerById(int ownerId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateOwner(ApmcDao owner) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteOwner(int ownerId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<ApmcDao> getAllOwners() {
		// TODO Auto-generated method stub
		return null;
	}
	

}
