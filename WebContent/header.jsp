<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	Admin admin = (Admin) session.getAttribute("admin");
String uri = request.getRequestURI();

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
<body class = "home">
	<nav class="mio-nav navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#"> </a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
			
			 <%if(uri.equals("/BD2/index.jsp")) { %>
			
				<li class="nav-item active"><a class="nav-link"
					href="./index.jsp">Home <span class="sr-only">(current)</span>
				</a></li>
				<% }else{ %>
				<li class="nav-item"><a class="nav-link"
					href="./index.jsp">Home <span class="sr-only">(current)</span>
				</a></li>
				<%} %>
				
				
				<%
					if (admin == null) {
				%>
				
				 <%if(uri.equals("/BD2/ricercaAvanzata.jsp")) { %>
				 <li class="nav-item active"><a class="nav-link"
					href="ricercaAvanzata.jsp">Ricerca avanzata <span
						class="sr-only">(current)</span></a></li>
				 <%}else{ %>
				 <li class="nav-item"><a class="nav-link"
					href="ricercaAvanzata.jsp">Ricerca avanzata <span
						class="sr-only">(current)</span></a></li>
				 
				 <%} %>
				 
				 
				 
				 <%if(uri.equals("/BD2/selezionadata.jsp")) { %>
				 	<li class="nav-item dropdown active">
				 	<a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Rilevazione prezzi </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="selezionadata.jsp">Settimanale</a>
						 <a
							class="dropdown-item" href="./mediaPrezziMensili">Media mensile</a>
						
						
					</div></li>
				 
				 <%}else{ %>
				 
				 	<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Rilevazione prezzi </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="selezionadata.jsp">Settimanale</a> <a
							class="dropdown-item" href="./mediaPrezziMensili">Media mensile</a>
						
						
					</div></li>
				 <%} %>
		
			


		
				<%
					}
				%>
				<%
					if (admin != null) {
				%>
				
				
				 <%if(uri.equals("/BD2/AggiungiImpianto.jsp")) { %>
				 
				<li class="nav-item active"><a class="nav-link"
					href="./AggiungiImpianto.jsp">Aggiungi impianto</a></li>
				 <%}else{ %>
				 
				<li class="nav-item"><a class="nav-link"
					href="./AggiungiImpianto.jsp"">Aggiungi impianto</a></li>
				 
				 <%} %>
				
				
				
				<%
					}
				%>
				<%
					if (admin == null) {
				%>
				
				
				<%if(uri.equals("/BD2/Login.jsp")) { %>
				<li class="nav-item active"><a class="nav-link" href="./Login.jsp">Login</a></li>
				
				<%}else{ %>
								<li class="nav-item"><a class="nav-link" href="./Login.jsp">Login</a></li>
				
				
				<%} %>
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