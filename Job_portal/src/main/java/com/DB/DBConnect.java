package com.DB;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
  private static Connection conn;
  public static Connection getConn() {
  
	  
	/* try {
		  
		  if(conn==null) {
			  
			Class.forName("com.mysql.cj.jdbc.Driver");	 
			  conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal","root","saif khan   ");
		  }
		  
	  }catch(Exception e) {
		  e.printStackTrace();
		  
	  }
	  
	  
	  
  return conn; */
	  
	  Connection conn = null;
	  try {
	    // Load the JDBC driver
	    Class.forName("com.mysql.cj.jdbc.Driver");

	    // Establish a connection to the database
	    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal","root","saif khan");
	  } catch (Exception e) {
	    e.printStackTrace();
	  }
	return conn;

	  
	  
  
  
  }


}
