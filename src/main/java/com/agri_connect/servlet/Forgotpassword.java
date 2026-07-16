package com.agri_connect.servlet;

import java.io.IOException;

import com.agri_connect.dao.FarmerDao;
import com.agri_connect.daoimpl.FarmerImpl;
import com.agri_connect.dto.Farmer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/forgotpassword")
public class Forgotpassword extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		FarmerDao dao = new FarmerImpl();
		Farmer f = dao.findemailby(req.getParameter("email"));
	        if(f!=null) {
	        	if(req.getParameter("password").equals(req.getParameter("confirm"))) {
	        		f.setPassword(req.getParameter("password"));
	        		req.setAttribute("success", "Password updated successfully");
	        		req.getRequestDispatcher("Login.jsp").forward(req, resp);
	        		dao.updateFarmer(f);
	        	}else {
	        		req.setAttribute("error", "Passwords do not match");
	        		req.getRequestDispatcher("forgotpassword.jsp").forward(req, resp);
	        	}
	        }else {
	        	req.setAttribute("error", "User not found");
	    		req.getRequestDispatcher("forgotpassword.jsp").forward(req, resp);
	        }
	      
	        

		}
	
	}


