<%-- 
    Document   : register.jsp
    Created on : Jan 11, 2018, 6:54:33 PM
    Author     : octavian
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>Register</title>
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
			<a class="navbar-brand" href="main.jsp">Utopia Bank</a>
		</div>

	</div>
	</nav>

	<div class="container">
		<h3>Create your account</h3>
		<p>Become an Utopia bank client right now ! Satisfaction guaranteed</p>
		<br />
		<br />
		<br />
                
    <form action="registerBackend.jsp">
                      
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="first_name" type="text" class="form-control" name="first_name" placeholder="FirstName">
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="last_name" type="text" class="form-control" name="last_name" placeholder="LastName">
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-tree-deciduous"></i></span>
      <input id="user_age" type="text" class="form-control" name="user_age" placeholder="Age">
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
      <input id="user_phone" type="text" class="form-control" name="user_phone" placeholder="PhoneNumber">
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-euro"></i></span>
      <input id="user_cur" type="text" class="form-control" name="user_cur" placeholder="Currency">
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
      <input id="user_email" type="text" class="form-control" name="user_email" placeholder="Email">
    </div>
    <br/>
    <br/>
    
    <button type="submit" class="btn btn-default">Register</button>
  </form>


	</div>


</body>
</html>

