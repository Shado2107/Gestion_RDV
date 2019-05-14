package com.clover.gesrdv.bdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class connection {
	
	private String resultat;
	
	public String getResultat() {
		return resultat;
	}
	
	public void setResultat(String resultat) {
		this.resultat = resultat;
	}
	
	public String verifieridentifiants( String username , String password) {
		Connection  con = null;
		String message = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gesrdv", "root","root");
			PreparedStatement statement = con.prepareStatement("SELECT login, motdepasse  FROM utilisateur  WHERE login=?  AND motdepasse=? ");
			statement.setString(1, username);
			statement.setString(2, password);
			
			ResultSet rs = statement.executeQuery();
			
			if (rs.next()) {
				message= "SUCCESS";
			} else {
				message = "FAILURE";
			}
		} catch (Exception e) {
			message= "FAILURE";
			e.printStackTrace();
		}
		
		return message;
		
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
	                         Connection Connexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/gesrdv","root","root");
	                       
	                     }
	                     catch(SQLException e) {
	                             e.printStackTrace();
	                     }
	            }

	    

}
