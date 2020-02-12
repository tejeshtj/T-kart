package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.Impl;

@WebServlet("/cart")
public class CartController extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
       int productId=Integer.parseInt(req.getParameter("productId"));
       HttpSession session=req.getSession(false);
       System.out.println("adding to cart");
       if(session!=null) {
    	  String email=(String) session.getAttribute("user");
    	  System.out.println(email);
    	  int count= Impl.addToCart(email,productId);
    	  if(count>0) {
    		  RequestDispatcher   rd=req.getRequestDispatcher("./cart.jsp");
				 rd.forward(req, resp);
		        System.out.println(productId);
    	  }
       }
	}
}
