/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package facebook;

/**
 *
 * @author ps
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author ps
 */
 public class DB {
    String driverName = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "trydb1";// database name
        String userName = "root";
        String password = "prabal";
        Connection con = null;
        ResultSet rs;
 
    ResultSet DataBase(String qry) {
      
		
        try{
                System.out.println(qry);
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection(url+dbName,userName,password);
                JOptionPane.showMessageDialog(null, "connected to Database");
                Statement stmt = con.createStatement();
                rs = stmt.executeQuery(qry);
                JOptionPane.showMessageDialog(null, "Result "+rs.getString("Title"));
        }
        catch(Exception e)
        {}
        return rs;
    }
    
    void DataInsert(String qry) {
      
		
        try{
                System.out.println(qry);
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection(url+dbName,userName,password);
                JOptionPane.showMessageDialog(null, "connected to Database");
                Statement stmt = con.createStatement();
                stmt.executeUpdate(qry);
                
        }
        catch(Exception e)
        {}
      
    }
     
        
    }

