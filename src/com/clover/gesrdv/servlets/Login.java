package com.clover.gesrdv.servlets;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request,response);
		
	
		//PrintWriter out = response.getWriter();
		//out.println("BONJOUR");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//String username = request.getParameter("username");
	//	String password = request.getParameter("password");
		
	//	HttpSession session = request.getSession();
	//	session.setAttribute(username, "username");
	//	session.setAttribute(password, "password");
		
		
//		this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request,response);
		
	}

}
