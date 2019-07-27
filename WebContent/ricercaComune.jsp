
<%
	List<Stazione> stazioni = (ArrayList<Stazione>) session.getAttribute("stazioni");
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
<title>Risultato Ricerca</title>
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
				<li class="nav-item active"><a class="nav-link"
					href="./index.jsp"">Home <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Ricerca <span
						class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="./AggiungiImpianto.jsp"">Aggiungi impianto</a></li>

			</ul>
		</div>
	</nav>


	<%
		if (stazioni.size() <= 0 || stazioni == null) {
	%>
	<div class = "container">
		<p>Stazioni non trovate effettua una nuova ricerca</p>
	
	</div>

	<%
		} else {
	%>

	<table class="table table-striped table-dark"">
		<thead>
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Gestore</th>
				<th scope="col">Bandiera</th>
				<th scope="col">Tipo impianto</th>
				<th scope="col">Comune</th>
				<th scope="col">Indirizzo</th>
				<th scope="col">Dettagli</th>

			</tr>
		</thead>
		<tbody>
			<%
				for (Stazione data : stazioni) {
			%>
			<tr>
				<th scope="row"><%=data.getIdImpianto() + ""%></th>
				<td><%=data.getGestore()%></td>
				<td><%=data.getBandiera()%></td>
				<td><%=data.getTipoImpianto()%></td>
				<td><%=data.getComune()%><td>
				<td><%=data.getIndirizzo()%>
				<td>
				<td><a href="./DettagliStazione?id=<%=data.getIdImpianto() %>" class="btn btn-primary">Dettagli</a>
				<td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>

	<%
		}
	%>

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