<%-- 
    Document   : tranzactiiBackend
    Created on : Jan 14, 2018, 12:20:21 AM
    Author     : octavian
--%>

<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="com.octavian.database.DatabaseActions"%>
<%@page import="com.octavian.database.DBManager"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.Random"%>
<%@page import="com.octavian.models.TransactionInfo"%>
<%@page import="com.octavian.models.ClientInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Random random = new Random();
    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
    LocalDate localDate = LocalDate.now();
    
    Date d = Date.valueOf(localDate);
    DBManager dbm = new DBManager();    
    DatabaseActions dac = new DatabaseActions();
    ClientInfo ci = (ClientInfo)session.getAttribute("client_info");
    TransactionInfo ti = null;
    TransactionInfo ti_destinatar = null;
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
        int tid = random.nextInt(1000000);
        int tid2 = random.nextInt();
        int productId = random.nextInt(1000000);
        int newBuget = ci.getBuget() - am;
        int newBugetDestinatar = destinatar.getBuget() + am;
        
        
        ti = new TransactionInfo(tid, productId, ci.getId(), -am, productName, destinatar.getFname() + " " + ci.getLname(), d);
        ti_destinatar = new TransactionInfo(tid2, productId, destinatar.getId(), am, productName, ci.getFname() + " " + ci.getLname(), d);
        ci.setBuget(newBuget);
        destinatar.setBuget(newBugetDestinatar);
        
        updateAccount.insertIntoDB(ci, 'u');
        updateAccount.insertIntoDB(destinatar, 'u');
        updateAccount.insertIntoDB(ti);
        updateAccount.insertIntoDB(ti_destinatar);
        
    }else{
        out.print("Insufficient funds !!!");
    }
    
    response.sendRedirect("transactions.jsp");
%>
