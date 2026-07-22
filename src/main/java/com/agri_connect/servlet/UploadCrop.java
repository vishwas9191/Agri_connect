package com.agri_connect.servlet;

import java.io.IOException;

import com.agri_connect.dao.CropDao;
import com.agri_connect.daoimpl.CropImpl;
import com.agri_connect.dto.Crop;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UploadCrop")
public class UploadCrop extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        Crop crop = new Crop();

        crop.setName(req.getParameter("name"));
        crop.setCategory(req.getParameter("category"));
        crop.setSeason(req.getParameter("season"));

        CropDao dao = new CropImpl();

        if (dao.addCrop(crop)) {

            req.setAttribute("success", "Crop Uploaded Successfully 🌾");

        } else {

            req.setAttribute("error", "Failed to Upload Crop");

        }

        req.getRequestDispatcher("UploadCrop.jsp").forward(req, resp);

    }
}