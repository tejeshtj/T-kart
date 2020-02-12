package controller;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.Impl;


	@WebServlet("/login")
	public class loginController extends HttpServlet{
			
			
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
		{

			String email=req.getParameter("name");
			String password=req.getParameter("password");
			
			PrintWriter out=resp.getWriter();	
			boolean loginState=Impl.login(email, password);
			 HttpSession session=req.getSession(true);
			if(loginState) {
				if(session!=null)
				{
				 
				
			        session.setAttribute("user",email); 
			        
			    	RequestDispatcher   rd=req.getRequestDispatcher("./index.jsp");
					 rd.forward(req, resp);
			        System.out.println(email);
				}
				else
				{
					out.print("Sorry, username or password error!");  
					RequestDispatcher  rd=req.getRequestDispatcher("./login.jsp");
					 rd.include(req, resp);
					 
				}
			}

			
		}

	}
	
	
	
