/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.octavian.database;

import com.octavian.config.DbConfig;

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
    
    public void executeQuery(String query){
        
        try{
         statement = connection.createStatement();
         
            //Executam instructiunea Query
         statement.execute(query);
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
        
    public static void main(String[] args){
        DBManager dbm = new DBManager();
        
        dbm.connectToDB();
        dbm.executeQuery("SELECT * FROM Clients");
    }
    
}
