package com.clover.gesrdv.forms;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.clover.gesrdv.beans.utilisateur;

public class listeutilisateur {

	private String resultat;
	private Connection connexion;
		
	public String getResultat() {
		return resultat;
	}
	
	public void setResultat(String resultat) {
		this.resultat = resultat;
	}
	
private void loadDatabase() {
		
        try{
           Class.forName("com.mysql.jdbc.Driver");	           
       }
       catch (ClassNotFoundException e)
       {
           System.out.println(e);
       }

        try {
            connexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/gesrdv","root","root");
          
        }
        catch(SQLException e) {
                e.printStackTrace();
        }
}


public List<utilisateur>recupererutilisateur(){
	
List<utilisateur> util = new ArrayList<utilisateur>();
	Statement stat = null;
	ResultSet result = null;
	
	
	loadDatabase();
	
	try {
		stat = connexion.createStatement();
		result = stat.executeQuery("SELECT * FROM utilisateur");
		System.out.println("la requete a ete executee");
		
		while(result.next()) {
			String id = result.getString("Idpers");
			String nom = result.getString("Nomutil");
			String prenom = result.getString("Prenomutil");
			String fonction = result.getString("Fonction");
			
			utilisateur user = new utilisateur();
			user.setNom(nom);
			user.setPrenom(prenom);
			user.setFonction(fonction);
			user.setIdentifiant(id);
			
			util.add(user);
			
			//System.out.println(user.getNom());	
		}
	} catch(SQLException E) {
		E.printStackTrace();
	}
	
	return util;
}

}
