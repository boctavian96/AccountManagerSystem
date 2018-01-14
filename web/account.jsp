<%@ page language="java" import ="com.octavian.config.*, com.octavian.models.*, com.octavian.database.*" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    
    <%
    String username = (String)session.getAttribute("u_name");
    String password = (String)session.getAttribute("u_pass");
        
        
    DBManager db = (DBManager)session.getAttribute("dbConnection");
    ClientInfo ci = db.getClientInfo(username, password);
    
    session.setAttribute("client_info", ci);
    %>
    
<title>Utopia Bank - Dashboard</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="account.jsp">Utopia Bank</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="account.jsp">Home</a></li>
			<li><a href="transactions.jsp">Transactions</a></li>
			<li><a href="reports.jsp">Reports</a></li>
			<li><a href="settings.jsp">Settings</a></li>
                        <li><a href="main.jsp">Logout</a></li>
		</ul>
	</div>
	</nav>

	<div class="container">
		<h3>Dashboard</h3>
		<p>Find here info about your account</p>
                <p><% out.print("Wellcome back <b>" + ci.getFname()+ " !</b>"); %></p>
		<br />
		<br />
		<br />
                
                <%
                
                
                %>
                
                <h3>
			Account Balance:
                        <% out.print(ci.getBuget() + " " + ci.getCurrency()); %>
		</h3>
                        
                        <br/>
                        <br/>

                        <h4>
                        Spending info - AccountID <% out.print(ci.getAccount()); %>
                        </h4>
		<div class="progress">
			<div class="progress-bar progress-bar-success progress-bar-striped"
				role="progressbar" aria-valuenow="40" aria-valuemin="0"
				aria-valuemax="100" style="width: 25%">
				<% out.print(Config.AVAILABLE + " " + ci.getBuget()); %>
			</div>
		</div>

		<div class="progress">
			<div class="progress-bar progress-bar-danger progress-bar-striped"
				role="progressbar" aria-valuenow="70" aria-valuemin="0"
				aria-valuemax="100" style="width: 10%">
				<% out.print(Config.SPENDT); %>
			</div>
                </div>

		<br />
		<br />


	</div>


</body>
</html>
