package com.clover.gesrdv.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.clover.gesrdv.bdd.JdbcConnection;
import com.clover.gesrdv.forms.connectionForm;



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
	
	
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	RequestDispatcher rd = null;
	connectionForm connected = new connectionForm();	
	
	
	System.out.println(username);
	System.out.println(password);
	
	HttpSession session = request.getSession();
	
	if ((username== null || username.isEmpty())|| (password == null || password.isEmpty())) {
		rd= request.getRequestDispatcher("/WEB-INF/login.jsp");
		rd.forward(request, response);
	}else {
		
		String message = connected.verifieridentifiants(username, password);
		
		
		System.out.println(message);
		
		if(message.equals("SUCCESS")) {
			
			session.setAttribute("nom", username);
			
			rd = request.getRequestDispatcher("/WEB-INF/vues/acceuil.jsp");
			rd.forward(request, response);
		}else if(message.equals("FAILURE")) {
			//rd = request.getRequestDispatcher("/WEB-INF/vues/acceuil.jsp");
			rd= request.getRequestDispatcher("/WEB-INF/login.jsp");
			rd.forward(request, response);
		}
	}
		
	
		
		

		
	}

}
