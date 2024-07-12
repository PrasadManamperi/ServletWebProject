package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static String url = "jdbc:mysql://localhost:3306/hotel";
	private static String dbUser = "root";
	private static String dbPass = "Prasa,1397";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, dbUser, dbPass);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return con;
	}
}
