<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	Admin admin = (Admin) session.getAttribute("admin");
%>
<!DOCTYPE html>
<html>
<%@page import="java.util.*,Control.*,Beans.*"%>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/mio.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<title>header</title>
</head>
<body>
	<nav class="mio-nav navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#"> </a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href="./index.jsp"">Home <span class="sr-only">(current)</span>
				</a></li>
				<%
					if (admin == null) {
				%>
				<li class="nav-item"><a class="nav-link"
					href="ricercaAvanzata.jsp">Ricerca avanzata <span
						class="sr-only">(current)</span></a></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Rilevazione prezzi </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Settimanale</a> <a
							class="dropdown-item" href="#">Media mensile</a>
						
						
					</div></li>


		
				<%
					}
				%>
				<%
					if (admin != null) {
				%>
				<li class="nav-item"><a class="nav-link"
					href="./AggiungiImpianto.jsp"">Aggiungi impianto</a></li>
				<%
					}
				%>
				<%
					if (admin == null) {
				%>
				<li class="nav-item"><a class="nav-link" href="./Login.jsp">Login</a></li>
				<%
					} else {
				%>
				<li class="nav-item"><a class="nav-link" href="./LogoutServlet">Logout</a></li>
				<%
					}
				%>
			</ul>

		</div>
	</nav>

</body>
</html>