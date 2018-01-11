/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.octavian.database;

import com.octavian.config.DbConfig;
import com.octavian.models.ClientInfo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author octavian
 */
public class DBManager {
    
    private Connection connection = null;
    
    //object Statement interface, used for executing sql statements
    private Statement statement = null;
    
    //Resultset, uses a table for output data from the table
    private ResultSet rs = null;
    
    //QueryStatus
    private boolean queryStatus;
    
    public void connectToDB(){
        try{
            Class.forName(DbConfig.DRIVER);
        }catch(ClassNotFoundException e){
            e.printStackTrace();
        }
        try{
            connection = DriverManager.getConnection(DbConfig.URL + DbConfig.DATABASE, DbConfig.DB_USER, DbConfig.DB_PASS);
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
    
    private ResultSet execQuery(String query){
        
        try{
         statement = connection.createStatement();
         
            //Executam instructiunea Query
         return statement.executeQuery(query);
        }catch(SQLException e){
            e.printStackTrace();
        }
        
        return null;
    }
    
    public boolean userExists(String email, String pass){
        rs = execQuery("SELECT * FROM Clients WHERE Email="+"\'"+email+"\' AND password=\'" + pass + "\'");

        String pwd = "";
        String user = ""; //EMAIL
        
        try{
            if(rs.next()){
                
                user = rs.getString("Email");
                pwd = rs.getString("password");
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
       
        if (user.equals(email) && pass.equals(pwd)){
            return true;
        }
        
        return false;
    }
    
    public ClientInfo getClientInfo(String email, String pass){
        ClientInfo ci = null;
        int id = 0;
        int buget = 0;
        int age = 0;
        String account = "";
        String currency = "";
        String phone = "";
        String ln = "";
        String fn = "";
        
        rs = execQuery("SELECT * FROM Clients WHERE Email="+"\'"+email+"\' AND password=\'" + pass + "\'");

        try{
            if(rs.next()){
                id = rs.getInt("ID");
                buget = rs.getInt("amount");
                age = rs.getInt("Age");
                account = rs.getString("AccountID");
                currency = rs.getString("Currency");
                phone = rs.getString("Phone");
                ln = rs.getString("LastName");
                fn = rs.getString("FirstName");
                
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        
        ci = new ClientInfo(id, fn, ln, email, pass, phone, currency, account, buget, age);
        
        return ci;
    }
        
    public static void main(String[] args){
        DBManager dbm = new DBManager();
        
        dbm.connectToDB();
        dbm.execQuery("SELECT * FROM Clients");
        
        System.out.println(dbm.userExists("andreip@yahoo.com", "12345"));
    }
    
}
