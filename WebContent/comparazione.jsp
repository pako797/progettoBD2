<%
Stazione stazione = (Stazione) session.getAttribute("stazione");
List<Prezzo> prezziStazione = (ArrayList<Prezzo>) session.getAttribute("prezzi");
Stazione stazioneConfronto = (Stazione) session.getAttribute("stazioneConfronto");
List<Prezzo> prezziConfronto = (ArrayList<Prezzo>) session.getAttribute("prezziConfronto");
Boolean confronto = (Boolean) session.getAttribute("confronto");
if(confronto != null && confronto.booleanValue() == true) {
	session.removeAttribute("confronto");
}

if(stazione == null || prezziStazione == null || stazioneConfronto == null || prezziConfronto == null){
	response.sendRedirect("./ricercaComune.jsp");
	return;
}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@page import="java.util.*,Control.*,Beans.*, database.*,com.mongodb.*"%>

<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, user-scalable=no,
initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/style.css">
<title>Insert title here</title>
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

				<li class="nav-item"><a class="nav-link" href="./Login.jsp"">Login</a></li>

			</ul>

		</div>
	</nav>


    <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
      <h1 class="display-4">Confronta Prezzi</h1>
    </div>

    <div class="container">
      <div class="card-deck mb-3 text-center">
      
        <div class="card mb-4 box-shadow">
          <div class="row">
			<div class="col-md-12 order-md-2 mb-4">
				 <h4 class="card-title pricing-card-title"><%= stazione.getGestore() %> <small class="text-muted">/ <%= stazione.getIndirizzo() %></small></h4>
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
					
					<a class="btn btn-primary btn-lg btn-block" href = "./DettagliStazione?id=<%=stazione.getIdImpianto() %>">Vai ai dettagli</a>


				</ul>


			</div>
        </div>
        </div>
        
        
        <div class="card mb-4 box-shadow">
         <div class="row">
			<div class="col-md-12 order-md-2 mb-4">
								 <h4 class="card-title pricing-card-title"><%= stazioneConfronto.getGestore() %> <small class="text-muted">/ <%= stazioneConfronto.getIndirizzo() %></small></h4>
				
				<ul class="list-group mb-3">

					<%for(Prezzo temp : prezziConfronto){ %>
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
					
					<a class="btn btn-primary btn-lg btn-block" href = "./DettagliStazione?id=<%=stazioneConfronto.getIdImpianto() %>">Vai ai dettagli</a>


				</ul>


			</div>
        </div>
      </div>
      </div>
      
    </div>
      <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
					<a class="btn btn-outline-primary btn-lg " href = "./ricercaComune.jsp">Torna a risultati ricerca</a>
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