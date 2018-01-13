<%@page import="java.util.List"%>
<%@page import="com.octavian.database.DBManager"%>
<%@page import="com.octavian.models.TransactionInfo"%>
<%@page import="com.octavian.models.ClientInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
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
		<h2>Transactions Page</h2>
		<p>Here you can view everything about your account transactions</p>
		<table class="table">
			<thead>
				<tr>
					<th>Entity</th>
					<th>Product</th>
					<th>Date</th>
					<th>Amount</th>
				</tr>
			</thead>
			<tbody>
                            
                            <%
                                ClientInfo ci = (ClientInfo)session.getAttribute("client_info");
                                List<TransactionInfo> ti;
                                DBManager dbm = new DBManager();
                                dbm.connectToDB();
                                ti = dbm.getTransactionInfo(ci.getId());
                                
                                
                                for(TransactionInfo i : ti){
                                    
                                    if(i.getAmount() > 0){
                                        out.print("<tr class=\"success\">");
                                    }else{
                                        out.print("<tr class=\"danger\">");
                                    }
                                    
                                    out.print("<td>" + i.getEntity() + "</td>");
                                    out.print("<td>" + i.getProduct() + "</td>");
                                    out.print("<td>" + i.getDate() + "</td>");
                                    out.print("<td>" + i.getAmount() + "</td>");
                                
                                }
                                
                            %>
			</tbody>
		</table>

	</div>


</body>
</html>
