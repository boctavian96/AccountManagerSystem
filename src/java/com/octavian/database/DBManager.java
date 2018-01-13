/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.octavian.database;

import com.octavian.config.DbConfig;
import com.octavian.models.ClientInfo;
import com.octavian.models.TransactionInfo;
import com.octavian.config.DbTableColumns;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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
    
    /**
     * ONLY Updates and Inserts
     * @param query 
     */
    public void execute(String query)
    {
        try{
            statement = connection.createStatement();
            statement.execute(query);
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
    
    /**
     * ONLY for selects !!!
     * @param query
     * @return 
     */
    public ResultSet execQuery(String query){
        
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
                
                user = rs.getString(DbTableColumns.EMAIL);
                pwd = rs.getString(DbTableColumns.PASSWORD);
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
       
        if (user.equals(email) && pass.equals(pwd)){
            return true;
        }
        
        return false;
    }
    
    /**
     * 
     * @param uid 
     */
    public List<TransactionInfo> getTransactionInfo(int uid){
        List<TransactionInfo> ti = new ArrayList<TransactionInfo>();
        
        int id = 0;
        int oid = 0;
        int amount = 0;
        String Product = "";
        String Entity = "";
        Date date = null;
        
        rs = execQuery("SELECT * FROM Transactions WHERE ClientID=" + uid + ";");
        
        try{
            while(rs.next()){
      
                id = rs.getInt(DbTableColumns.ORDER_ID);
                oid = rs.getInt(DbTableColumns.ORDER_NUMBER);
                amount = rs.getInt(DbTableColumns.TRANSACTION_AMOUNT);
                Product = rs.getString(DbTableColumns.PRODUCT);
                Entity = rs.getString(DbTableColumns.ENTITY);
                date = rs.getDate(DbTableColumns.DATE);
                
                ti.add(new TransactionInfo(id, oid, uid, amount, Product, Entity, date));
            }
        }catch(SQLException e){
                e.printStackTrace();
            }
        
        return ti;
    }
    
    /**
     * 
     * @param query
     * @return 
     */
    private ClientInfo getBackClientInfo(String query){
                ClientInfo ci = null;
        int id = 0;
        int buget = 0;
        int age = 0;
        String account = "";
        String currency = "";
        String phone = "";
        String ln = "";
        String fn = "";
        String email = "";
        String pass = "";
        
        rs = execQuery(query);

        try{
            if(rs.next()){
                id = rs.getInt(DbTableColumns.ID);
                buget = rs.getInt(DbTableColumns.CLIENT_AMOUNT);
                age = rs.getInt(DbTableColumns.AGE);
                account = rs.getString(DbTableColumns.ACCOUNT_ID);
                currency = rs.getString(DbTableColumns.CUR);
                phone = rs.getString(DbTableColumns.PHONE);
                ln = rs.getString(DbTableColumns.LAST_NAME);
                fn = rs.getString(DbTableColumns.FIRST_NAME);
                pass = rs.getString(DbTableColumns.PASSWORD);
                email = rs.getString(DbTableColumns.EMAIL);
                
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        
        ci = new ClientInfo(id, fn, ln, email, pass, phone, currency, account, buget, age);
        
        return ci;
    }
    
    /**
     * 
     * @param email
     * @param pass
     * @return 
     */
    public ClientInfo getClientInfo(String email, String pass){
       return getBackClientInfo("SELECT * FROM Clients WHERE Email="+"\'"+email+"\' AND password=\'" + pass + "\'");
    }
    
    /**
     * 
     * @param account
     * @return 
     */
    public ClientInfo getClientInfo(String account){
        return getBackClientInfo("SELECT * FROM Clients WHERE Email="+"\'"+account+"\'");
    }
    
}
