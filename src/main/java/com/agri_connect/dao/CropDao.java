package com.agri_connect.dao;

import java.util.List;

public interface CropDao {
	
	 boolean addCrop(CropDao cropDao);

	    CropDao getCropById(int cropId);

	    List<CropDao> getAllCrops();

	    void updateCrop(CropDao cropDao);

	   void deleteCrop(int cropId);

}
