<%-- 
    Document   : registerBackend
    Created on : Jan 11, 2018, 9:39:39 PM
    Author     : octavian
--%>

<%@page import="com.octavian.database.DBManager"%>
<%@page import="com.octavian.genetators.*, com.octavian.models.ClientInfo, com.octavian.database.DatabaseActions" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 
    DatabaseActions da = new DatabaseActions();
    ClientInfo ci;
    
    String firstname = request.getParameter("first_name");
    String lastname = request.getParameter("last_name");
    String age = request.getParameter("user_age");
    String phoneNb = request.getParameter("user_phone");
    String currency = request.getParameter("user_cur");
    String uemail = request.getParameter("user_email");
    String password = CodeGenerator.generatePassword(20);
    String accountId = CodeGenerator.generateAccount(7);
    
    out.print(firstname + lastname + age + phoneNb + currency + uemail + password + accountId);
    
    ci = new ClientInfo(firstname, lastname, uemail, password, phoneNb, currency, accountId, 0, Integer.decode(age));
    da.insertIntoDB(ci, 'i');
    
%>
