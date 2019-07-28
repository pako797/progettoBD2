
<%
Stazione stazione = (Stazione) session.getAttribute("stazione");
List<Prezzo> prezziStazione = (ArrayList<Prezzo>) session.getAttribute("prezzi");

if(stazione == null){
	response.sendRedirect("./dettagli.jsp");
	return;

}

if(prezziStazione == null){
	response.sendRedirect("./dettagli.jsp");
	return;

}

%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@page import="java.util.*,Control.*,Beans.*"%>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, user-scalable=no,
initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
<title>Home page</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/style.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>

</head>
<body class ="dettagli">
 <%@include file="header.jsp" %>
	<div class="container">
		<div class="py-5 text-center">
			<img class="d-block mx-auto mb-4"
				src="/docs/4.3/assets/brand/bootstrap-solid.svg" alt="" width="72"
				height="72">
			<h2><%= stazione.getGestore() %></h2>
		</div>

		<div class="row">
			<div class="col-md-4 order-md-2 mb-4">
				<h4 class="d-flex justify-content-between align-items-center mb-3">
					<span class="text-muted">Prezzi</span> <span
						class="badge badge-secondary badge-pill"><%= prezziStazione.size() %></span>
				</h4>
				<ul class="list-group mb-3">

					<%for(Prezzo temp : prezziStazione){ %>
					<li
						class="list-group-item d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0"><%=temp.getDescCarburante()%></h6>
							<%if(temp.getIsSelf() == 0){ %>
							<small class="text-muted">No Self Service</small>
							<%}else{ %>
							<small class="text-muted">Si Self Service</small>

							<%} %>
						</div> <span class="text-muted"><%=temp.getPrezzo()%> euro</span>
					</li>

					<%} %>
					
					<a class="btn btn-primary btn-lg btn-block" href = "./ConfrontaPrezzi">Confronta prezzi</a>


				</ul>


			</div>



			<div class="col-md-8 order-md-1">
				<h4 class="mb-3">Informazioni stazione</h4>

				<div class="row">
					<div class="col-md-6 mb-3">
						<b><label>Gestore:</label></b> <label> <%= stazione.getGestore()%></label>
					</div>
					<div class="col-md-6 mb-3">
						<b><label>Bandiera:</label></b> <label><%= stazione.getBandiera()%></label>
					</div>
				</div>

				<div class="mb-3">
					<b><label for="username">Tipo impianto:</label></b>
					<div class="input-group">

						<label><%= stazione.getTipoImpianto()%></label>
					</div>
				</div>

				<div class="mb-3">
					<b><label for="username">Nome impianto:</label></b>
					<div class="input-group">

						<label><%= stazione.getNomeImpianto()%></label>
					</div>
				</div>

				<div class="mb-3">
					<b><label>Indirizzo:</label></b>
					<div class="input-group">

						<label><%= stazione.getIndirizzo()%></label>
					</div>
				</div>

				<div class="mb-3">
					<b><label>Provincia:</label></b>
					<div class="input-group">

						<label><%= stazione.getProvincia()%></label>
					</div>
				</div>

				<div class="mb-3">
					<b><label>Comune:</label></b>
					<div class="input-group">

						<label><%= stazione.getComune()%></label>
					</div>
				</div>

				<div class="row">
					<div class="col-md-6 mb-3">
						<b><label>Latitudine:</label></b> <label> <%= stazione.getLatitudine()%></label>
					</div>
					<div class="col-md-6 mb-3">
						<b><label>Longitudine:</label></b> <label><%= stazione.getLongitudine()%></label>
					</div>
				</div>
				<hr class="mb-4">

				<hr class="mb-4">
				<a class="btn btn-primary btn-lg btn-block"  href="./ricercaComune.jsp">Ritorna
					ai risultati</a>

				<br>
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