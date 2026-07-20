package com.agri_connect.dao;

import java.util.List;

import com.agri_connect.dto.Crop_Request;

public interface Crop_RequestDao {
	
	
    void sendRequest(Crop_Request request);

    void acceptRequest(int requestId);

    void rejectRequest(int requestId);

    Crop_Request getRequestById(int requestId);

    List<Crop_Request> getAllRequests();

    List<Crop_Request> getRequestsByOwner(int ownerId);

    List<Crop_Request> getRequestsByFarmerCrop(int farmerCropId);

    void deleteRequest(int requestId);

}
