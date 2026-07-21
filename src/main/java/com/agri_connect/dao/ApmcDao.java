package com.agri_connect.dao;

import java.util.List;

import com.agri_connect.dto.Apmc;

public interface ApmcDao {
	
   void registerOwner(Apmc a);

   Apmc loginOwner(String email, String password);

   Apmc  getOwnerById(int ownerId);

    void updateOwner(Apmc a);

   void deleteOwner(int ownerId);

    List<Apmc> getAllOwners();

}
