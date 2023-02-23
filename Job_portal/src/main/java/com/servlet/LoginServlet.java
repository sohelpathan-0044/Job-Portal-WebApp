package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.UserDAO;
import com.entity.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			String em=req.getParameter("email");
			String pa=req.getParameter("password");
			
			User u=new User();
			HttpSession session=req.getSession();
			
			
			if("admin@gmail.com".equals(em) && "admin@123".equals(pa)) {
				u.setRole("admin");
				session.setAttribute("userobj", u);
				resp.sendRedirect("admin.jsp");
				
			}else {
				UserDAO dao =new UserDAO(DBConnect.getConn());
				User user=dao.login(em, pa);
				if(user!=null) {
					session.setAttribute("userobj", user);
					resp.sendRedirect("home.jsp");
					
				}else {
					session.setAttribute("succMsg", "Invalid Email & Password");
					resp.sendRedirect("login.jsp");
					
				}
				
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
 