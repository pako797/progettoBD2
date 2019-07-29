
<%
	MongoClient mongo = (MongoClient) request.getServletContext().getAttribute("MONGO_CLIENT");
	MongoDBComuneDAO comuneDAO = new MongoDBComuneDAO(mongo);
	List<Comune> comuni = comuneDAO.readAllComuni();
	
	MongoDBProvinceDAO provinceDAO = new MongoDBProvinceDAO(mongo);
	List<Province> province = provinceDAO.readAllProvince();
	
	
	Stazione stazione = (Stazione) session.getAttribute("stazione");
	Admin admin2 = (Admin) session.getAttribute("admin");
	if (admin2 == null) {
		response.sendRedirect("./index.jsp");
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
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
<title>Aggiungi impianto</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/style.css">


<script>
	$(document).ready(function() {
		$( "#provincia" ).on( "change", function( event ) {
			$.ajax({
				type : "POST",
				url : "ComuneServlet",
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

<body class="add">
	<%@include file="header.jsp"%>
	<br>
	<br>



	<div class="text-center mb-4">
		<img class="mb-4" src="logo_sito.png" alt="" width="170" height="150">
		<h1 class="h3 mb-3 font-weight-normal">Search the Best refuelling</h1>
	</div>


		<div class="row">
				<form method="GET" action="ModificaStazione" class="col-12 text-center">
					<div class="col-md-4 mx-auto">
					<div class="form-group row">
						<label class="col-sm col-form-label" for="exampleFormControlSelect1">Id</label>
						<input type="text" class="col-sm form-control"
							value="<%=stazione.getIdImpianto()%>" id="id" name="id"
							aria-label="Id" aria-describedby="basic-addon1" required>
					</div>
					<div class="form-group row">
						<label class="col-sm col-form-label" for="exampleFormControlSelect1">Gestore</label>
						<input type="text" class="col-sm form-control"
							value="<%=stazione.getGestore()%>" id="gestore" name="gestore"
							aria-label="Username" aria-describedby="basic-addon1" required>
					</div>

					<div class="form-group row">
						<label class="col-sm col-form-label" for="exampleFormControlSelect1">Bandiera</label>
						<input type="text" class="col-sm form-control"
							value="<%=stazione.getBandiera()%>" id="bandiera"
							name="bandiera" aria-label="Username"
							aria-describedby="basic-addon1" required>
					</div>

					<div class="form-group row">
						<label class="col-sm col-form-label" for="exampleFormControlSelect1">Tipo Impianto</label> <select
							class="form-control col-sm" id="tipo" name="tipo"
							id="exampleFormControlSelect1">
							<%
								if (stazione.getTipoImpianto().equalsIgnoreCase("Altro")) {
							%>
							<option>Altro</option>
							<option>Strada Statale</option>
							<option>Auto Stradale</option>
							<%
								} else if (stazione.getTipoImpianto().equalsIgnoreCase("Strada Statale")) {
							%>
							<option>Strada Statale</option>
							<option>Altro</option>
							<option>Auto Stradale</option>
							<%
								} else if (stazione.getTipoImpianto().equalsIgnoreCase("Autostradale")) {
							%>
							<option>Autostradale</option>
							<option>Strada Statale</option>
							<option>Altro</option>
							<%
								}
							%>
						</select>
					</div>

					<div class="form-group row">
						<label class="col-sm col-form-label" for="exampleFormControlSelect1">Nome</label>
						<input type="text" class="col-sm form-control"
							value="<%=stazione.getNomeImpianto()%>" aria-label="Username"
							id="nome" name="nome" aria-describedby="basic-addon1" required>
					</div>

					<div class="form-group row">
						<label class="col-sm col-form-label" for="exampleFormControlSelect1">Indirizzo</label>
						<input type="text" class="col-sm form-control"
							value="<%=stazione.getIndirizzo()%>" aria-label="Username"
							id="indirizzo" name="indirizzo" aria-describedby="basic-addon1"
							required>
					</div>

					

					<div class="form-group row">
						<label class="col-sm col-form-label" for="exampleFormControlSelect1">Provincia</label> <select
							class=" col-sm form-control" id="provincia" name="provincia"
							id="provincia">
							<%
								for (Province temp : province) {
									
							%>
							
							<%if(temp.getSigla().equalsIgnoreCase(stazione.getProvincia())){ %>
							<option selected><%=temp.getSigla()%></option>
							
							<%}else{ %>
														<option><%=temp.getSigla()%></option>
							
							<%} %>
							<%
								}
							%>
						</select>
					</div>



					<div class="form-group row">
						<label class="col-sm col-form-label" for="exampleFormControlSelect1">Comune</label> <select
							class="form-control col-sm" name="comune"
							id="listaComuni">

						</select>
					</div>



			</div>
			<div class="container">
			<div class="row">
			<div class="col-sm"><label for="DescrizioneCarburante">Descrizione carburante</label></div>
			<div class="col-sm"><label for="PrezzoCarburante">Prezzo carburante</label></div>
			<div class="col-sm"><label for="SelfCarburante">Self-Service</label></div>
				</div>
					</div>
			<%for(int i=0; i<stazione.getPrezziCarburante().size(); i++){ %>
					<div class="container">
						<div class="row">
							<div class="col-sm"><span class="input-group-text" id="basic-addon2"><%= stazione.getPrezziCarburante().get(i).getDescCarburante()%></span></div>
							<div class="col-sm"><input type="text" class="form-control" value="<%= stazione.getPrezziCarburante().get(i).getPrezzo()%>" aria-label="Username" id="nome" name="nome" aria-describedby="basic-addon1" required></div>
							<div class="col-sm"><input type="checkbox" <%if(stazione.getPrezziCarburante().get(i).getIsSelf()==1){ %>checked="checked"<%} %> aria-label="Checkbox for following text input"></div>
						</div>
					</div>
					<%} %>
					<input type="hidden" name="action" id="action" value="modifica">
					<button type="submit" class="btn btn-primary">modifica</button>
					<button class="btn btn-primary" onclick="history.back()">annulla</button>
				</form>
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