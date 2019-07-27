
<%
Stazione stazione = (Stazione) session.getAttribute("stazione");
if(stazione == null){
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
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#"> </a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="./index.jsp"">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Ricerca <span
						class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="./AggiungiImpianto.jsp"">Aggiungi impianto</a></li>

				<li class="nav-item"><a class="nav-link" href="./Login.jsp"">Login</a></li>

			</ul>

		</div>
	</nav>


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
						class="badge badge-secondary badge-pill">3</span>
				</h4>
				<ul class="list-group mb-3">
					<li
						class="list-group-item d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0">Product name</h6>
							<small class="text-muted">Brief description</small>
						</div> <span class="text-muted">$12</span>
					</li>
					<li
						class="list-group-item d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0">Second product</h6>
							<small class="text-muted">Brief description</small>
						</div> <span class="text-muted">$8</span>
					</li>
					<li
						class="list-group-item d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0">Third item</h6>
							<small class="text-muted">Brief description</small>
						</div> <span class="text-muted">$5</span>
					</li>
					<li class="list-group-item d-flex justify-content-between bg-light">
						<div class="text-success">
							<h6 class="my-0">Promo code</h6>
							<small>EXAMPLECODE</small>
						</div> <span class="text-success">-$5</span>
					</li>
					<li class="list-group-item d-flex justify-content-between"><span>Total
							(USD)</span> <strong>$20</strong></li>
				</ul>

				<form class="card p-2">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Promo code">
						<div class="input-group-append">
							<button type="submit" class="btn btn-secondary">Redeem</button>
						</div>
					</div>
				</form>
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
					<b><label >Indirizzo:</label></b>
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
				<button class="btn btn-primary btn-lg btn-block" type="submit">Ritorna ai risultati</button>

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