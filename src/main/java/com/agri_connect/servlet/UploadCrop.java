package com.agri_connect.servlet;

import java.io.IOException;
import java.sql.Date;

import com.agri_connect.dao.Farmer_CropDao;
import com.agri_connect.daoimpl.Farmer_CropImpl;
import com.agri_connect.dto.Farmer;
import com.agri_connect.dto.Farmer_Crop;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/UploadCrop")
public class UploadCrop extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session = req.getSession();

        Farmer farmer = (Farmer) session.getAttribute("login done");

        Farmer_Crop fc = new Farmer_Crop();

        fc.setFarmer_id(farmer.getFarmer_id());

        fc.setCrop_id(Integer.parseInt(req.getParameter("crop_id")));

        fc.setQuantity(Double.parseDouble(req.getParameter("quantity")));

        fc.setPrice(Double.parseDouble(req.getParameter("price")));

        fc.setHarvested(Date.valueOf(req.getParameter("harvestDate")));

        fc.setStatus(req.getParameter("status"));

        Farmer_CropDao dao = new Farmer_CropImpl();
        
        System.out.println("Farmer ID = " + fc.getFarmer_id());
        System.out.println("Crop ID = " + fc.getCrop_id());
        System.out.println("Quantity = " + fc.getQuantity());
        System.out.println("Price = " + fc.getPrice());
        System.out.println("Harvest Date = " + fc.getHarvested());
        System.out.println("Status = " + fc.getStatus());

        dao.addFarmerCrop(fc);

        req.setAttribute("success", "Crop Uploaded Successfully 🌾");

        req.getRequestDispatcher("UploadCrop.jsp").forward(req, resp);
    }
}