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
					<th>Email</th>
					<th>Date</th>
					<th>Amounth</th>
				</tr>
			</thead>
			<tbody>
				<tr class="success">
					<td>BearingPoint SRL</td>
					<td>bearingpoint@bp.de</td>
					<td>14.06.2018</td>
					<td>+3000</td>
				</tr>
				<tr class="danger">
					<td>Profi SRL</td>
					<td>hr@profi.ro</td>
					<td>9.9.2018</td>
					<td>-37</td>
				</tr>
				<tr class="danger">
					<td>Pornhub.com</td>
					<td>ph@pornhub.com</td>
					<td>9.1.2018</td>
					<td>-90</td>
				</tr>
				<tr class="danger">
					<td>Fabrica de Bere TM</td>
					<td>fabrica@timisoara.ro</td>
					<td>11.1.2018</td>
					<td>-350</td>
				</tr>
			</tbody>
		</table>

	</div>


</body>
</html>
