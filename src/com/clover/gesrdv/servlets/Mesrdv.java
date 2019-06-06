package com.clover.gesrdv.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clover.gesrdv.forms.rdvForm;

/**
 * Servlet implementation class Mesrdv
 */
@WebServlet("/Mesrdv")
public class Mesrdv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mesrdv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	
		rdvForm tablerdv = new rdvForm();
		
		request.setAttribute("rendezvs", tablerdv.agendardv() );

		this.getServletContext().getRequestDispatcher("/WEB-INF/vues/directeur/mesrdv.jsp").forward(request,response);
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		rdvForm ag = new rdvForm();
		String id = request.getParameter("id");
		String dec = request.getParameter("dec");
		 System.out.println("donnees rexu");
		if(dec.equalsIgnoreCase("val")) {
			ag.Accepter(id);
		} else if(dec.equalsIgnoreCase("del")) {
			ag.refuser(id);
		} else if (dec.equalsIgnoreCase("rep")) {
			ag.reporter(id);
		}
		
		
		
	}

}
