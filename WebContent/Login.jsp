<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, user-scalable=no,
initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
<title>Login admin</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/login.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
</head>

<body>
 <%@include file="header.jsp" %>

<br>
<br>
<br>
	<div class="container">


		<div class="text-center mb-4">
			<img class="mb-4" src="logo_sito.png" alt="" width="170" height="150">
			<h1 class="h3 mb-3 font-weight-normal">Search the Best
				refuelling</h1>
		</div>
		<div class="row">
			<div class="col-md-4 mx-auto">

				<form action="LoginServlet" method="post">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="material-icons">person</i></span>
						</div>
						<input type="text" name="user" id="user" class="form-control"
							placeholder="Username" required>
					</div>

					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="material-icons">verified_user</i></span>
						</div>
						<input type="password" name="password" id="password" class="form-control"
							placeholder="Password" required>
					</div>

					<div class="form-group">
						<input type="submit" name="btn" value="Login"
							class="btn btn-primary float-right login_btn">
					</div>

				</form>
			</div>
		</div>
	</div>




</body>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

</html>