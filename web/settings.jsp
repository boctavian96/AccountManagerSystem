
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
		<h3>Settings</h3>
		<p>Find here info about your settings and modify your settings</p>
		<br />
		<br />
		<br />
                
                  <form>
                      
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="email" type="text" class="form-control" name="email" placeholder="FirstName">
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="email" type="text" class="form-control" name="email" placeholder="LastName">
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="email" type="text" class="form-control" name="email" placeholder="Age">
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
      <input id="email" type="text" class="form-control" name="email" placeholder="PhoneNumber">
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-euro"></i></span>
      <input id="email" type="text" class="form-control" name="email" placeholder="Currency">
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
      <input id="email" type="text" class="form-control" name="email" placeholder="Email">
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input id="password" type="password" class="form-control" name="password" placeholder="Password">
    </div>
    <br/>
    <br/>
    
    <button type="submit" class="btn btn-default">Submit</button>
  </form>


	</div>


</body>
</html>