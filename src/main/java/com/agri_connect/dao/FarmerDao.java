package com.agri_connect.dao;

import java.util.List;

import com.agri_connect.dto.Farmer;



public interface FarmerDao {
	
	 void addfarmer(Farmer f);  // create
	 
	 Farmer findidby(Integer id);  // find by id

	 Farmer findbymailandpassword(String email, String password);

	 void updateFarmer(FarmerDao f);

	 void deletebyid(Integer id);

	 List<Farmer> findall();

}
