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
import javax.websocket.Session;

import java.util.Properties;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.clover.gesrdv.beans.rdv;



public class rdvForm {
	
	
	
	String from = "lckkrm@gmail.com";
	String pass = "Log@rdel10";
	String[] to =new String[] {};
	String subject = "Clover GesRDV";
	String body = "Vous avez recu une notification de Clover GesRDV";
	
	

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

	/* 
	 private static void sendFromGMail(String from, String pass, String to[], String subject, String body) {
	        Properties props = System.getProperties();
	        String host = "smtp.gmail.com";
	        props.put("mail.smtp.starttls.enable", "true");
	        props.put("mail.smtp.host", host);
	        props.put("mail.smtp.user", from);
	        props.put("mail.smtp.password", pass);
	        props.put("mail.smtp.port", "587");
	        props.put("mail.smtp.auth", "true");

	        Session session = Session.getDefaultInstance(props);
	        MimeMessage message = new MimeMessage(session);

	        try {
	            message.setFrom(new InternetAddress(from));
	            InternetAddress[] toAddress = new InternetAddress[to.length];

	            // To get the array of addresses
	            for( int i = 0; i < to.length; i++ ) {
	                toAddress[i] = new InternetAddress(to[i]);
	                System.out.println(toAddress[i]);
	            }

	            for( int i = 0; i < toAddress.length; i++) {
	                message.addRecipient(Message.RecipientType.TO, toAddress[i]);
	            }

	            message.setSubject(subject);
	            message.setText(body);
	            Transport transport = session.getTransport("smtp");
	            transport.connect(host, from, pass);
	            transport.sendMessage(message, message.getAllRecipients());
	            transport.close();
	        }
	        catch (AddressException ae) {
	            ae.printStackTrace();
	        }
	        catch (MessagingException me) {
	            me.printStackTrace();
	        }
	    }

	}
	 */
	 
	 
	 
	 public List<rdv>agendardv(){
			
		 List<rdv> rendezvs = new ArrayList<rdv>();
		 	Statement stat = null;
		 	ResultSet result = null;
		 	
		 	
		 	loadDatabase();
		 	
		 	try {
		 		stat = connexion.createStatement();
		 		result = stat.executeQuery("SELECT * "
		 				+ "FROM rdv "
		 				+ "WHERE statutrdv= 1 "
		 				
		 						
		 				);
		 		System.out.println("la requete a ete executee");
		 		
		 		while(result.next()) {
		 			String id = result.getString("idrdv");
		 			String motif = result.getString("Motifrdv");
		 			String daterdv = result.getString("date");
		 			String etatrdv = result.getString("Etatrdv");
		 			String heure = result.getString("heure");
		 			/*String utilnom = result.getString("Nomutil");
		 			String utilprenom = result.getString("Prenomutil");
		 			String cltnom = result.getString("Nomclt");
		 			String cltprenom = result.getString("Prenomclt");*/
		 			
		 			rdv rdvss = new rdv();
		 			rdvss.setId(id);
		 			rdvss.setMotif(motif);
		 			rdvss.setDaterdv(daterdv);
		 			rdvss.setEtatrdv(etatrdv);
		 			rdvss.setHeure(heure);
		 			/*rdvss.setUtilprenom(utilprenom);
		 			rdvss.setUtilnom(utilnom);
		 			rdvss.setCltnom(cltnom);
		 			rdvss.setCltprenom(cltprenom);*/
		 			
		 			
		 			rendezvs.add(rdvss);
		 			
		 			//System.out.println(user.getNom());	
		 		}
		 	} catch(SQLException E) {
		 		E.printStackTrace();
		 	}
		 	
		 	return rendezvs;
		 }

	 
	 
	 public List<rdv>recupererrdv(){
			
		 List<rdv> rendezvs = new ArrayList<rdv>();
		 	Statement stat = null;
		 	ResultSet result = null;
		 	
		 	
		 	loadDatabase();
		 	
		 	try {
		 		stat = connexion.createStatement();
		 		result = stat.executeQuery("SELECT * "
		 				+ "FROM rdv "
		 				+ "WHERE Etatrdv='accepter'"
		 				
		 				
		 				
		 				);
		 		System.out.println("la requete a ete executee");
		 		
		 		while(result.next()) {
		 			String id = result.getString("idrdv");
		 			String motif = result.getString("Motifrdv");
		 			String daterdv = result.getString("date");
		 			String etatrdv = result.getString("Etatrdv");
		 			String heure = result.getString("heure");
		 			/*String utilnom = result.getString("Nomutil");
		 			String utilprenom = result.getString("Prenomutil");
		 			String cltnom = result.getString("Nomclt");
		 			String cltprenom = result.getString("Prenomclt");*/
		 			
		 			rdv rdvss = new rdv();
		 			rdvss.setId(id);
		 			rdvss.setMotif(motif);
		 			rdvss.setDaterdv(daterdv);
		 			rdvss.setEtatrdv(etatrdv);
		 			rdvss.setHeure(heure);
		 			/*rdvss.setUtilprenom(utilprenom);
		 			rdvss.setUtilnom(utilnom);
		 			rdvss.setCltnom(cltnom);
		 			rdvss.setCltprenom(cltprenom);*/
		 			
		 			
		 			rendezvs.add(rdvss);
		 			
		 			//System.out.println(user.getNom());	
		 		}
		 	} catch(SQLException E) {
		 		E.printStackTrace();
		 	}
		 	
		 	return rendezvs;
		 }

	 
	 public int notifrdv(int nb){
			
		 
		 	Statement stat = null;
		 	ResultSet result = null;
		 	
		 	
		 	loadDatabase();
		 	
		 	try {
		 		stat = connexion.createStatement();
		 		result = stat.executeQuery("SELECT count(Idrdv) "
		 				+ "FROM rdv "
		 				+ "WHERE statutrdv= 1 "
		 									
		 				);
		 		System.out.println("la requete a ete executee");
		 		
		
		 		while(result.next()) {
		 			/*String id = result.getString("idrdv");
		 			String motif = result.getString("Motifrdv");
		 			String daterdv = result.getString("date");
		 			String etatrdv = result.getString("Etatrdv");
		 			String heure = result.getString("heure");
		 			
		 			
		 			rdv rdvss = new rdv();
		 			rdvss.setId(id);
		 			rdvss.setMotif(motif);
		 			rdvss.setDaterdv(daterdv);
		 			rdvss.setEtatrdv(etatrdv);
		 			rdvss.setHeure(heure);
		 		
		 			rendezvs.add(rdvss);*/
		 			
		 			//System.out.println(user.getNom());
		 			
		 			 nb = result.getInt(1);
		 		}
		 	} catch(SQLException E) {
		 		E.printStackTrace();
		 	}
		 	
		 	return nb ;
		 }

	 
	 public List<rdv>toutrdv(){
			
		 List<rdv> rendezvs = new ArrayList<rdv>();
		 	Statement stat = null;
		 	ResultSet result = null;
		 	
		 	
		 	loadDatabase();
		 	
		 	try {
		 		stat = connexion.createStatement();
		 		result = stat.executeQuery("SELECT * "
		 				+ "FROM rdv  "
		 				+ "WHERE  statutrdv = 0 "
		 				+ "AND Etatrdv= 'reporter' "
		 				+ "OR  Etatrdv= 'refuser' "
		 			
		 						
		 				);
		 		System.out.println("la requete a ete executee");
		 		
		 		while(result.next()) {
		 			String id = result.getString("idrdv");
		 			String motif = result.getString("Motifrdv");
		 			String daterdv = result.getString("date");
		 			String etatrdv = result.getString("Etatrdv");
		 			String heure = result.getString("heure");
		 			//String utilnom = result.getString("Nomutil");
		 			//String utilprenom = result.getString("Prenomutil");
		 			//String cltnom = result.getString("Nomclt");
		 			//String cltprenom = result.getString("Prenomclt");
		 			
		 			rdv rdvss = new rdv();
		 			rdvss.setId(id);
		 			rdvss.setMotif(motif);
		 			rdvss.setDaterdv(daterdv);
		 			rdvss.setEtatrdv(etatrdv);
		 			rdvss.setHeure(heure);
		 			//rdvss.setUtilprenom(utilprenom);
		 			//rdvss.setUtilnom(utilnom);
		 			//rdvss.setCltnom(cltnom);
		 			//rdvss.setCltprenom(cltprenom);
		 			
		 			
		 			rendezvs.add(rdvss);
		 			
		 			//System.out.println(user.getNom());	
		 		}
		 	} catch(SQLException E) {
		 		E.printStackTrace();
		 	}
		 	
		 	return rendezvs;
		 }

	 
	 public void RDVInsert(rdv rdv ) {
		 
		 String email = "";
		 loadDatabase();
		 try {
			 PreparedStatement preparedStatement  = connexion.prepareStatement("INSERT INTO rdv(date,heure,Motifrdv,UTI_Idpers,statutrdv) "
			 		+ "VALUES(?,?,?,1,'1');");
			 preparedStatement.setString(1, rdv.getDaterdv());
			 preparedStatement.setString(2, rdv.getHeure());
			 preparedStatement.setString(3, rdv.getMotif());
			
			 
			 
			 
			 preparedStatement.executeUpdate();
			 
			 System.out.println("la requete a ete executee: insertion de rdv");
		/*
			 to = new String[] {email};
			 
			 body ="Une demande est envoy�e, veuillez-vous connectez � Clover Ask pour plus d'informations";
			 
			 sendFromGMail(from, pass, to, subject, body);
			 System.out.println("Mail sent");*/
			 
		 
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
