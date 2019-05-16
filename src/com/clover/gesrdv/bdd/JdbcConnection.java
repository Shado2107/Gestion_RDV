package com.clover.gesrdv.bdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JdbcConnection {
	
	
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
