package com.clover.gesrdv.forms;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import com.clover.gesrdv.beans.rdv;


public class rdvForm {

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

	 public List<rdv>recupererrdv(){
			
		 List<rdv> rendezvs = new ArrayList<rdv>();
		 	Statement stat = null;
		 	ResultSet result = null;
		 	
		 	
		 	loadDatabase();
		 	
		 	try {
		 		stat = connexion.createStatement();
		 		result = stat.executeQuery("SELECT * "
		 				+ "FROM rdv, utilisateur, client "
		 				+ "WHERE Etatrdv='accepter'"
		 				+ "AND  UTI_Idpers = Idpers"
		 				
		 				
		 				
		 				);
		 		System.out.println("la requete a ete executee");
		 		
		 		while(result.next()) {
		 			String id = result.getString("idrdv");
		 			String motif = result.getString("Motifrdv");
		 			String daterdv = result.getString("date");
		 			String etatrdv = result.getString("Etatrdv");
		 			String heure = result.getString("heure");
		 			String utilnom = result.getString("Nomutil");
		 			String utilprenom = result.getString("Prenomutil");
		 			String cltnom = result.getString("Nomclt");
		 			String cltprenom = result.getString("Prenomclt");
		 			
		 			rdv rdvss = new rdv();
		 			rdvss.setId(id);
		 			rdvss.setMotif(motif);
		 			rdvss.setDaterdv(daterdv);
		 			rdvss.setEtatrdv(etatrdv);
		 			rdvss.setHeure(heure);
		 			rdvss.setUtilprenom(utilprenom);
		 			rdvss.setUtilnom(utilnom);
		 			rdvss.setCltnom(cltnom);
		 			rdvss.setCltprenom(cltprenom);
		 			
		 			
		 			rendezvs.add(rdvss);
		 			
		 			//System.out.println(user.getNom());	
		 		}
		 	} catch(SQLException E) {
		 		E.printStackTrace();
		 	}
		 	
		 	return rendezvs;
		 }

	 
	 public List<rdv>agendardv(){
			
		 List<rdv> rendezvs = new ArrayList<rdv>();
		 	Statement stat = null;
		 	ResultSet result = null;
		 	
		 	
		 	loadDatabase();
		 	
		 	try {
		 		stat = connexion.createStatement();
		 		result = stat.executeQuery("SELECT * "
		 				+ "FROM rdv, utilisateur, client "
		 				+ "WHERE statutrdv=1 "
		 				+ "AND UTI_Idpers = Idpers"
		 						
		 				);
		 		System.out.println("la requete a ete executee");
		 		
		 		while(result.next()) {
		 			String id = result.getString("idrdv");
		 			String motif = result.getString("Motifrdv");
		 			String daterdv = result.getString("date");
		 			String etatrdv = result.getString("Etatrdv");
		 			String heure = result.getString("heure");
		 			String utilnom = result.getString("Nomutil");
		 			String utilprenom = result.getString("Prenomutil");
		 			String cltnom = result.getString("Nomclt");
		 			String cltprenom = result.getString("Prenomclt");
		 			
		 			rdv rdvss = new rdv();
		 			rdvss.setId(id);
		 			rdvss.setMotif(motif);
		 			rdvss.setDaterdv(daterdv);
		 			rdvss.setEtatrdv(etatrdv);
		 			rdvss.setHeure(heure);
		 			rdvss.setUtilprenom(utilprenom);
		 			rdvss.setUtilnom(utilnom);
		 			rdvss.setCltnom(cltnom);
		 			rdvss.setCltprenom(cltprenom);
		 			
		 			
		 			rendezvs.add(rdvss);
		 			
		 			//System.out.println(user.getNom());	
		 		}
		 	} catch(SQLException E) {
		 		E.printStackTrace();
		 	}
		 	
		 	return rendezvs;
		 }

	 
	 public List<rdv>toutrdv(){
			
		 List<rdv> rendezvs = new ArrayList<rdv>();
		 	Statement stat = null;
		 	ResultSet result = null;
		 	
		 	
		 	loadDatabase();
		 	
		 	try {
		 		stat = connexion.createStatement();
		 		result = stat.executeQuery("SELECT * "
		 				+ "FROM rdv, utilisateur, client "
		 				+ "WHERE Etatrdv='reporter'"
		 				+ "AND UTI_Idpers = Idpers"
		 						
		 				);
		 		System.out.println("la requete a ete executee");
		 		
		 		while(result.next()) {
		 			String id = result.getString("idrdv");
		 			String motif = result.getString("Motifrdv");
		 			String daterdv = result.getString("date");
		 			String etatrdv = result.getString("Etatrdv");
		 			String heure = result.getString("heure");
		 			String utilnom = result.getString("Nomutil");
		 			String utilprenom = result.getString("Prenomutil");
		 			String cltnom = result.getString("Nomclt");
		 			String cltprenom = result.getString("Prenomclt");
		 			
		 			rdv rdvss = new rdv();
		 			rdvss.setId(id);
		 			rdvss.setMotif(motif);
		 			rdvss.setDaterdv(daterdv);
		 			rdvss.setEtatrdv(etatrdv);
		 			rdvss.setHeure(heure);
		 			rdvss.setUtilprenom(utilprenom);
		 			rdvss.setUtilnom(utilnom);
		 			rdvss.setCltnom(cltnom);
		 			rdvss.setCltprenom(cltprenom);
		 			
		 			
		 			rendezvs.add(rdvss);
		 			
		 			//System.out.println(user.getNom());	
		 		}
		 	} catch(SQLException E) {
		 		E.printStackTrace();
		 	}
		 	
		 	return rendezvs;
		 }

	 
	 
	  
	 
	 public void RDVInsert(rdv rdv ) {
		 loadDatabase();
		 try {
			 PreparedStatement preparedStatement  = connexion.prepareStatement("INSERT INTO rdv(date,heure,Motifrdv,UTI_Idpers) "
			 		+ "VALUES(?,?,?,?);");
			 preparedStatement.setString(1, rdv.getDaterdv());
			 preparedStatement.setString(2, rdv.getHeure());
			 preparedStatement.setString(3, rdv.getMotif());
			 preparedStatement.setString(4, rdv.getIdutil());
			 
			 preparedStatement.executeUpdate();
			 
			 System.out.println("la requete a ete executee: insertion de rdv");
		
		 	 
		 
		 }catch(SQLException e){
			 e.printStackTrace();
		 }
	 }

	 
		
		public String Accepter(String id) {
			
			
			 PreparedStatement state = null;
			 int idv = Integer.valueOf(id).intValue();
			 loadDatabase();
			 
			 try {
				  
				 state = connexion.prepareStatement("UPDATE rdv SET Etatrdv= 'accepter', statutrdv=0 WHERE idrdv = ?");
				 
				  state.setInt(1,idv);
				 
				   state.executeUpdate();
				 
				 System.out.println("la requete a ete execute:update accepter");
				 
			 	}
			 catch(SQLException e) {
				 e.printStackTrace();
			   } 
			return "OK";   
				
		}
		
		public String refuser(String id) {
			
			
			 PreparedStatement state = null;
			 int idv = Integer.valueOf(id).intValue();
			 loadDatabase();
			 
			 try {
				  
				 state = connexion.prepareStatement("UPDATE rdv SET Etatrdv='refuser', statutrdv=0 WHERE idrdv = ?");
				 
				  state.setInt(1,idv);
				 
				   state.executeUpdate();
				 
				 System.out.println("la requete a ete execute");
				 
			 	}
			 catch(SQLException e) {
				 e.printStackTrace();
			   } 
			return "OK";   
			
			
		}
		
		
		public String reporter(String id) {
			
			
			 PreparedStatement state = null;
			 int idv = Integer.valueOf(id).intValue();
			 loadDatabase();
			 
			 try {
				  
				 state = connexion.prepareStatement("UPDATE rdv SET Etatrdv='reporter', statutrdv=0 WHERE idrdv = ?");
				 
				  state.setInt(1,idv);
				 
				   state.executeUpdate();
				 
				 System.out.println("la requete a ete execute");
				 
			 	}
			 catch(SQLException e) {
				 e.printStackTrace();
			   } 
			return "OK";   
			
			
		}
	
}
