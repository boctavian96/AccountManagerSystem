<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.octavian.models.TransactionInfo"%>
<%@page import="java.util.List"%>
<%@page import="com.octavian.models.ClientInfo"%>
<%@page import="com.octavian.funds.ReportEngine"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>Utopia Bank - Reports</title>
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
		<h3>Reports</h3>
		<p>Find here your reports</p>
		<br />
		<br />
		<br />
                
                
        <%
        ClientInfo ci = (ClientInfo)session.getAttribute("client_info");
        ReportEngine re = new ReportEngine(ci.getId());
        DateFormat dateFormat = new SimpleDateFormat("MM");
        Date date = new Date();
        String month = dateFormat.format(date);
        
        re.calculateIncomeExpenses(Integer.decode(month) - 1);
    
        int income = re.getIncome();
        int expenses = re.getExpenses();
        
        float incomePr = 0;
        float expensesPr = 0;
        
        if(income != 0){
            incomePr = ((float)income/(income-expenses))*100f;
        }
        
        if(expenses != 0){
            expensesPr = -((float)expenses/(income-expenses))*100f;
        }
        
        
        
        out.println("<p>Buget pe " + month + " : " + ci.getBuget() + "</p>");
        out.println("<p>This month income : " + income + " </p>");
        out.println("<p>This month expenses : " + expenses + " </p>");
        
        %>
        
        <div class="progress">
    <div class="progress-bar progress-bar-success" role="progressbar" style="width:<% out.print(incomePr); %>%">
        Income <% out.print("( "+ incomePr +" %)"); %>
    </div>
            <div class="progress-bar progress-bar-danger" role="progressbar" style="width:<% out.print(expensesPr); %>%">
                Expense <% out.print("( " + expensesPr + " %)"); %>
    </div>
    </div>

	</div>


</body>
</html>
