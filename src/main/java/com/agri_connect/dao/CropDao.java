package com.agri_connect.dao;

import java.util.List;

import com.agri_connect.dto.Crop;

public interface CropDao {
	
	 boolean addCrop(Crop cp);

	    Crop getCropById(int cropId);

	    List<Crop> getAllCrops();

	    void updateCrop(Crop cp);

	   void deleteCrop(int cropId);

}
