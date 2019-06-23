<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Login admin</title>
		<link rel="stylesheet" href="./css/bootstrap.min.css">
		<link rel="stylesheet" href="./css/style.css">
	</head>
	
	<body>
		<div class="row" style="width: 90%;display: flex;height: 10vw;margin: 25px auto 0;">
			<a class="col-2 pull-left" href="./Home.jsp">			
				<img src="logo_sito.png" style="width: 100%;" alt="logo">
			</a>
		 	<span class="col-8 text-center text-uppercase font-weight-bold" style="margin: 50px auto auto;display: block;float: left;line-height: 1;font-size: 40px;">Search the Best refuelling</span>
			<div class="col-2"></div>
		</div>
		<form action="TODO" style="margin-top: 80px;">
			<input class="row" type="text" name="username" placeholder="Username" style="margin: 10px auto;">
			<input class="row" type="password" name="password" placeholder="Password" style="margin: 15px auto;">
			<input class="row" type="submit" value="Login" style="margin: 30px auto;">
		</form>
	</body>
</html>