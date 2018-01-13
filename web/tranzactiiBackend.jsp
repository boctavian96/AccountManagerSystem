<%-- 
    Document   : tranzactiiBackend
    Created on : Jan 14, 2018, 12:20:21 AM
    Author     : octavian
--%>

<%@page import="java.sql.Date"%>
<%@page import="java.util.Random"%>
<%@page import="com.octavian.models.TransactionInfo"%>
<%@page import="com.octavian.models.ClientInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Random random = new Random();
    Date d = new Date(30149149);
    
    ClientInfo ci = (ClientInfo)session.getAttribute("client_info");
    TransactionInfo ti = null;
    String productName = (String)request.getAttribute("product_name");
    int Amount = Integer.decode((String)request.getAttribute("product_amount"));
    String userAccount = (String)request.getAttribute("user_account_id");
    
    ti = new TransactionInfo(random.nextInt(1000000), random.nextInt(1000000), client_id, Amount, productName, ci.getFname() + " " + ci.getLname(), d);
%>
