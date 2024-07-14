package com.customer;

import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

//import jakarta.servlet.http.HttpSession;

public class CustomerDBUtil {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
    public static Customer validateUser(String userName, String password) {
        Customer user = null;
        
        
        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
//             Check in customer table
            String customerSql = "SELECT * FROM customer WHERE username='" + userName + "' AND password='" + password + "'";
            rs = stmt.executeQuery(customerSql);
            
            if (rs.next()) {
                
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String phone = rs.getString("customercol");
                String userU = rs.getString("username");
                String passU = rs.getString("password");
                
                user = new Customer(id, name, email, phone, userU, passU, "customer");
                
            } else {
//                 Check in admin table
                String adminSql = "SELECT * FROM admin WHERE username='" + userName + "' AND password='" + password + "'";
                
                ResultSet rs1 = stmt.executeQuery(adminSql);
                
                if (rs1.next()) {
                    
                    int id = rs1.getInt("id");
                    String name = rs1.getString("name");
                    String email = rs1.getString("email");
                    String phone = rs1.getString("phone");
                    String userU = rs1.getString("username");
                    String passU = rs1.getString("password");
                    
                    user = new Customer(id, name, email, phone, userU, passU, "admin");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return user;
    }
    
    boolean isSuccess = false;
//    Insert Users(Registration Users)
    public static boolean insertCustomer(String name, String email, String phone, String username, String password) {
    	boolean isSuccess = false;
    	
        
        try {
//        	create DB connection
        	con = DBConnect.getConnection();
            stmt = con.createStatement();    
//          SQL query
            String sql = "insert into customer values(0, '"+name+"', '"+email+"', '"+phone+"', '"+username+"', '"+password+"')";
            int result = stmt.executeUpdate(sql);
            
            if(result > 0) {
            	isSuccess = true;
            	
            } else {
            	isSuccess = false;
            }
        	
        } catch(Exception e) {
        	e.printStackTrace();
        	
        }
	
    	return isSuccess;
    }
    
    
//    Update User Details
    public static boolean updateCustomer(String id, String name, String email, String phone, String username, String password) {
    	boolean isSuccess = false;
    	
    	try {
    		// Create database connection
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		// SQL query
    		String sql = "update customer set name='"+name+"',email='"+email+"',customercol='"+phone+"',username='"+username+"',password='"+password+"' where id='"+id+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true; 
    		} else {
    			isSuccess = false;
    		}
    		
    		
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    	
    }
    
    
    
    
}
