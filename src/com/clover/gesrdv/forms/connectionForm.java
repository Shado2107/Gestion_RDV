package com.clover.gesrdv.forms;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class connectionForm {

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

	
	
	public String verifieridentifiants( String username , String password) {
		
		String message = null;
		PreparedStatement statement= null;
		
		loadDatabase();
		
		try {
		
			statement = connexion.prepareStatement("SELECT login, motdepasse  FROM utilisateur  WHERE login= ?  AND motdepasse= ? ");
			statement.setString(1, username);
			statement.setString(2, password);
			
			ResultSet rs = statement.executeQuery();
			
			String log=" ";
			String pass=" ";
			
			while(rs.next()) {
				log = rs.getString(1);
				pass = rs.getString(2);
			}
				
			
			if (log.equalsIgnoreCase(username) && pass.equalsIgnoreCase(password)) {
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
	
	
	
	
	
	
}
