package com.clover.gesrdv.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clover.gesrdv.beans.rdv;
import com.clover.gesrdv.forms.listeutilisateur;
import com.clover.gesrdv.forms.rdvForm;

/**
 * Servlet implementation class RDV
 */
@WebServlet("/RDV")
public class RDV extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RDV() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		
		listeutilisateur tableuser = new listeutilisateur();
		request.setAttribute("util", tableuser.recupererutilisateur() );
	
	
		this.getServletContext().getRequestDispatcher("/WEB-INF/vues/secretaire/rdvregister.jsp").forward(request,response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		rdv rendezv = new rdv();
		rendezv.setDaterdv(request.getParameter("daterdv"));
		rendezv.setMotif(request.getParameter("motif"));
		rendezv.setCltnom(request.getParameter("Nom"));
		rendezv.setHeure(request.getParameter("heurerdv"));
		rendezv.setCltprenom(request.getParameter("Prenom "));
	    rendezv.setIdutil(request.getParameter("responsable"));
	
		
		rdvForm tablerdv = new rdvForm();
		tablerdv.RDVInsert(rendezv);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/vues/secretaire/rdvregister.jsp").forward(request,response);
		
		
	}

}
