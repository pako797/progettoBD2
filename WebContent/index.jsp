<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="database.MongoConnection" %>
 <% MongoConnection mC= new MongoConnection();
 mC.findElement("stazioni","BATTIPAGLIA","SA");
 %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta name="viewport"
	content="width=device-width, user-scalable=no,
initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
		<title>Home page</title>
		<link rel="stylesheet" href="./css/bootstrap.min.css">
		<link rel="stylesheet" href="./css/style.css">
	</head>
	
	<body class="home">
	
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">

		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
			<li class="nav-item active"><a class="nav-link" href="./index.jsp"">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Ricerca
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="./AggiungiImpianto.jsp"">Aggiungi impianto</a></li>

			</ul>
		</div>
	</nav>
	<br>
	<br>
	<br>
	
	<div class="text-center mb-4">
    <img class="mb-4" src="logo_sito.png" alt="" width="170" height="150">
    <h1 class="h3 mb-3 font-weight-normal">Search the Best refuelling</h1>
  </div>
	
		<div class="container">
		<div class="row">
			<div class="col-md-4 mx-auto">
				<form method="GET" action="RicercaStazioneComune">
					<div class="form-group">
						<label for="exampleInputEmail1">Ricercaimpianto vicino a te:</label> 
						<input type="text" class="form-control" id="comune"
							aria-describedby="emailHelp" placeholder="Comune" name="comune">

					</div>
					<div class="form-group form-check"></div>
					
					<div class="row">
			<div class="col-md-4 mx-auto">
			<button type="submit" class="btn btn-primary">Ricerca</button>
			</div>
			</div>
					
				</form>
			</div>
		</div>
	</div>
		
		
		<div id="demoMap" style="height:250px"></div>
		<script src="http://www.openlayers.org/api/OpenLayers.js"></script>
 <script>
		map = new OpenLayers.Map("demoMap");
		map.addLayer(new OpenLayers.Layer.OSM());
		map.zoomToMaxExtent();
	</script>
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