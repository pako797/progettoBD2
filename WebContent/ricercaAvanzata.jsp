
<%
	MongoClient mongo = (MongoClient) request.getServletContext().getAttribute("MONGO_CLIENT");
	MongoDBProvinceDAO provinceDAO = new MongoDBProvinceDAO(mongo);
	List<Province> province = provinceDAO.readAllProvince();

	String[] carburante = {"Benzina", "Gasolio", "Blue Super", "Blue Diesel", "GPL", "Gasolio Oro Diesel",
			"Gasolio artico", "Benzina WR 100", "Metano", "Gasolio Premium", "Hi-Q Diesel", "HiQ Perform+",
			"Excellium Diesel", "Gasolio Alpino", "Gasolio Speciale"};
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
<title>Ricerca avanzata</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>


<script>
	$(document).ready(function() {
		$("#provincia").on("change", function(event) {
			$.ajax({
				type : "POST",
				url : "RicercaComuni",
				data : {
					provincia : $("#provincia").val()
				},
				success : function(html) {
					$("#listaComuni").html(html);
				},
				error : function() {
					alert("Chiamata fallita!!!");
				}
			});
			return false;
		}).trigger('change');
	});
</script>
</head>
<body class="home">

	<%@include file="header.jsp"%>

	<div class="container">
		<div class="py-5 text-center">
			<h2>Ricerca avanzata</h2>
		</div>





		<div class="row">
			<form method="GET" action="RicercaAvanzata"
				class="col-12 text-center">
				<div class="col-md-4 mx-auto">


					<div class="form-group row">
						<label class="col-sm col-form-label"
							for="exampleFormControlSelect1">Provincia</label> <select
							class=" col-sm form-control" id="provincia" name="provincia"
							id="provincia">
							<%
								for (Province temp : province) {
							%>


							<option><%=temp.getSigla()%></option>


							<%
								}
							%>
						</select>
					</div>



					<div class="form-group row">
						<label class="col-sm col-form-label"
							for="exampleFormControlSelect1">Comune</label> <select
							class="form-control col-sm" name="comune" id="listaComuni">

						</select>
					</div>



					<div class="form-group row">
						<label class="col-sm col-form-label"
							for="exampleFormControlSelect1">Tipo carburante</label> <select
							class=" col-sm form-control" name="carburante" id="carburante">
							<%
								for (String temp : carburante) {
							%>


							<option><%=temp%></option>


							<%
								}
							%>
						</select>
					</div>

					<div class="form-group row">
						<label class="col-sm col-form-label"
							for="exampleFormControlSelect1">Prezzo carburante</label> <input type="number" min="0.001" max=3"
							step="0.001" class="col-sm form-control" value="0.001" id="bandiera"
							name="prezzo" aria-label="Username"
							aria-describedby="basic-addon1" required>
					</div>
					
					
			

				</div>
				
				<div class="col-md-4 mx-auto">
						<button type="submit" class="btn btn-primary">Ricerca</button>
					</div>



			</form>
		</div>
	</div>




</body>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>


</html>