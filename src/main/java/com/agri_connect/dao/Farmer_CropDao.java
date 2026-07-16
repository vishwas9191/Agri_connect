package com.agri_connect.dao;

import java.util.List;

import com.agri_connect.dto.Farmer_Crop;

public interface Farmer_CropDao {
	
    void addFarmerCrop(Farmer_Crop fc);

    void updateFarmerCrop(Farmer_Crop fc);

    void deleteFarmerCrop(int farmerCropId);

    Farmer_CropDao getFarmerCropById(int farmerCropId);

    List<Farmer_CropDao> getAllFarmerCrops();

    List<Farmer_CropDao> getCropsByFarmerId(int farmerId);

    List<Farmer_CropDao> getCropsByCropId(int cropId);
	
	

}
