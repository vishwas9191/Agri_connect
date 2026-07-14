package com.agri_connect.dao;

import java.util.List;

public interface Crop_RequestDao {
	
	
    void sendRequest(Crop_RequestDao request);

    void acceptRequest(int requestId);

    void rejectRequest(int requestId);

    Crop_RequestDao getRequestById(int requestId);

    List<Crop_RequestDao> getAllRequests();

    List<Crop_RequestDao> getRequestsByOwner(int ownerId);

    List<Crop_RequestDao> getRequestsByFarmerCrop(int farmerCropId);

    void deleteRequest(int requestId);

}
