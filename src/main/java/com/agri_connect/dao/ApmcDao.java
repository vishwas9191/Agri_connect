package com.agri_connect.dao;

import java.util.List;

public interface ApmcDao {
	
   void registerOwner(ApmcDao owner);

   ApmcDao loginOwner(String email, String password);

   ApmcDao  getOwnerById(int ownerId);

    boolean updateOwner(ApmcDao owner);

    boolean deleteOwner(int ownerId);

    List<ApmcDao> getAllOwners();

}
