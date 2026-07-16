package com.agri_connect.dao;

import java.util.List;

import com.agri_connect.dto.Apmc;

public interface ApmcDao {
	
   void registerOwner(Apmc a);

   ApmcDao loginOwner(String email, String password);

   ApmcDao  getOwnerById(int ownerId);

    void updateOwner(Apmc a);

   void deleteOwner(int ownerId);

    List<ApmcDao> getAllOwners();

}
