<%-- 
    Document   : settingsBackend
    Created on : Jan 13, 2018, 10:04:53 PM
    Author     : octavian
--%>

<%@page import="com.octavian.models.ClientInfo"%>
<%@page import="com.octavian.database.DatabaseActions"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    DatabaseActions da = new DatabaseActions();
    ClientInfo ci;
    ClientInfo oldInfo = (ClientInfo)session.getAttribute("client_info");
    
    String fn = request.getParameter("user_fn");
    String ln = request.getParameter("user_ln");
    String age = request.getParameter("user_age");
    String phone = request.getParameter("user_ph");
    String currency = request.getParameter("user_cur");
    String email = request.getParameter("user_email");
    String pass = request.getParameter("user_pass");
    
    ci = new ClientInfo(oldInfo.getId(), fn, ln, email, pass, phone, currency, Integer.decode(age));
    da.insertIntoDB(ci, 'u');
    
    response.sendRedirect("account.jsp");
%>
