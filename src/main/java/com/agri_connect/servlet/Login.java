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
import jakarta.servlet.http.HttpSession;
@WebServlet("/Login")
public class Login extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		FarmerDao dao=new FarmerImpl();
		
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		Farmer f= dao.findbymailandpassword(email, password);
	
		if(f!=null) {
			HttpSession session=req.getSession();
			session.setAttribute("login done", f);
			req.getRequestDispatcher("Login.jsp").forward(req, resp);
		}
		else {
			req.setAttribute("error", "invalid password or invalid email");
			req.getRequestDispatcher("Login.jsp").forward(req, resp);
		}
		
		
	}

}
