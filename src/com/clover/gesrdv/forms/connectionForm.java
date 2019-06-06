package com.clover.gesrdv.forms;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;



public class connectionForm {

	private String resultat;
	private Connection connexion;
	private String prenom;
	private String profil;
	private int id;
	private int idD;
	//DBConnection con = new DBConnection();
	


	public int getIdD() {
		return idD;
	}


	public void setIdD(int idD) {
		this.idD = idD;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getProfil() {
		return profil;
	}


	public void setProfil(String profil) {
		this.profil = profil;
	}


	public String getPrenom() {
		return prenom;
	}


	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	
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

	/*
	
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
			
			e.printStackTrace();
		}
		
		return message;
		
	}
	
	*/
	
	public void verifierIdentifiants(HttpServletRequest request) {
		ResultSet result = null;
		PreparedStatement state = null;
		String login = request.getParameter("username");
		String pass = request.getParameter("password");
		
		if(!login.equals(null)) {
			
			//con.loadDatabase();
			loadDatabase();
			 
			try {
				state = connexion.prepareStatement("SELECT login, motdepasse, Fonction ,PrenomUtil FROM utilisateur  WHERE login= ?  AND motdepasse= ? ");
				
				state.setString(1, login);
				state.setString(2, pass);
				
				result = state.executeQuery();
				
				String log="";
				String pas="";
				String prenomR="";
				String profilR="";
				//int idP=0;
				//int idDe=0;
				
				while(result.next()) {
					log = result.getString(1);
					pas = result.getString(2);
					prenomR = result.getString(4);
					profilR = result.getString(3);
					//idP = result.getInt(5);
				//	idDe = result.getInt(6);
				}
						
				System.out.println(idD);
				
				if(log.equalsIgnoreCase(login) && pas.equalsIgnoreCase(pass)) {
					resultat = "";
					prenom = prenomR;
					profil = profilR;
				//	id = idP;
				//	idD = idDe;
				}
				else {
					resultat= "no";
				}

				System.out.println(resultat);

			}
			catch(SQLException e){
				e.printStackTrace();
			}
		}
		else {
			resultat= "no";
		}			
		
	}
	
	
	
	
	
}
