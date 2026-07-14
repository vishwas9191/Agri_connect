package com.agri_connect.dao;

import java.util.List;

public interface Farmer_CropDao {
	
    void addFarmerCrop(Farmer_CropDao farmerCrop);

    void updateFarmerCrop(Farmer_CropDao farmerCrop);

    void deleteFarmerCrop(int farmerCropId);

    Farmer_CropDao getFarmerCropById(int farmerCropId);

    List<Farmer_CropDao> getAllFarmerCrops();

    List<Farmer_CropDao> getCropsByFarmerId(int farmerId);

    List<Farmer_CropDao> getCropsByCropId(int cropId);
	
	

}
