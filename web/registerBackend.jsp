<%-- 
    Document   : registerBackend
    Created on : Jan 11, 2018, 9:39:39 PM
    Author     : octavian
--%>

<%@page import="com.octavian.genetators.*, com.octavian.models.ClientInfo" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 

    ClientInfo ci = null;
    
    String firstname = request.getParameter("first_name");
    String lastname = request.getParameter("last_name");
    String age = request.getParameter("user_age");
    String phoneNb = request.getParameter("user_phone");
    String currency = request.getParameter("user_currency");
    String uemail = request.getParameter("user_email");
    String password = CodeGenerator.generatePassword(20);
    String accountId = CodeGenerator.generateAccount(7);
    
    ci = new ClientInfo(-1, firstname, lastname, accountId, uemail, phoneNb, currency, Integer.decode(age), 0);


%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>