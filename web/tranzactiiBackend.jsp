<%-- 
    Document   : tranzactiiBackend
    Created on : Jan 14, 2018, 12:20:21 AM
    Author     : octavian
--%>

<%@page import="com.octavian.database.DatabaseActions"%>
<%@page import="com.octavian.database.DBManager"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.Random"%>
<%@page import="com.octavian.models.TransactionInfo"%>
<%@page import="com.octavian.models.ClientInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Random random = new Random();
    Date d = new Date(30149149);
    DBManager dbm = new DBManager();    
    DatabaseActions dac = new DatabaseActions();
    ClientInfo ci = (ClientInfo)session.getAttribute("client_info");
    TransactionInfo ti = null;
    String productName = (String)request.getParameter("product_name");
    String Amount = (String)request.getParameter("product_amount");
    int am = Integer.decode(Amount);
    String userAccount = (String)request.getParameter("user_account_id");
    
    dbm.connectToDB();
    ClientInfo destinatar;
    destinatar = dbm.getClientInfo(userAccount);
    dbm.closeConnection();
    
    if(ci.getBuget() >= am && am > 0){
        DatabaseActions updateAccount = new DatabaseActions();

        int newBuget = ci.getBuget() - am;
        ti = new TransactionInfo(random.nextInt(1000000), random.nextInt(1000000), destinatar.getId(), am, productName, ci.getFname() + " " + ci.getLname(), d);
        ci.setBuget(newBuget);
        
        updateAccount.insertIntoDB(ci, 'u');
        updateAccount.insertIntoDB(destinatar, 'u');
        updateAccount.insertIntoDB(ti);
    }else{
        out.print("Insufficient funds !!!");
    }
%>
