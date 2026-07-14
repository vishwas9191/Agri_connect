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

@WebServlet("/register")
public class Register extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		FarmerDao dao= new FarmerImpl();
		Farmer f= new Farmer();
		
		f.setName(req.getParameter("name"));
		f.setPhone(req.getParameter("phone"));
		f.setEmail(req.getParameter("email"));
		f.setPassword(req.getParameter("password"));
		f.setVillage(req.getParameter("village"));
		f.setDistrict(req.getParameter("district"));
		f.setState(req.getParameter("state"));
		f.setRole(req.getParameter("role"));
		dao.addfarmer(f);
		
		
		
		req.setAttribute("success", "register sucessfull");
		req.getRequestDispatcher("Register.jsp").forward(req, resp);
		
	}

}
