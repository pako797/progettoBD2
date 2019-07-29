
<%
	MongoClient mongo = (MongoClient) request.getServletContext().getAttribute("MONGO_CLIENT");
	MongoDBComuneDAO comuneDAO = new MongoDBComuneDAO(mongo);
	List<Comune> comuni = comuneDAO.readAllComuni();
	
	Stazione stazione = (Stazione) session.getAttribute("stazione");
	Stazione stazioneConfronto = (Stazione) session.getAttribute("stazioneConfronto");
	Boolean confronto = (Boolean) session.getAttribute("confronto");
	if(confronto!=null && confronto.booleanValue()==true){
		session.removeAttribute("confronto");
	}

	if(stazione != null && stazioneConfronto != null){
		session.removeAttribute("stazione");
		session.removeAttribute("stazioneConfronto");

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
<title>Home page</title>
</head>

<body class="home">
 <%@include file="header.jsp" %>
	<br>
	<br>
	<br>

	<div class="text-center mb-4">
		<img class="mb-4" src="logo_sito.png" alt="" width="170" height="150">
		<h1 class="h3 mb-3 font-weight-normal">Search the Best refuelling</h1>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-6 mx-auto">
				<form method="GET" action="RicercaStazioneComune">
					<div class="form-group">
						<label for="exampleInputEmail1">Ricerca impianto vicino a
							te:</label>
						<div class="form-group">
							<label for="exampleFormControlSelect1">Comune</label> <select
								class="form-control" id="exampleFormControlSelect1"
								name="comune">
								<%
									for (Comune temp : comuni) {
								%>
								<option><%=temp.getComune()%></option>
								<%
									}
								%>
							</select>
						</div>

					</div>

					<div class="col-md-4 mx-auto">
						<button type="submit" class="btn btn-primary">Ricerca</button>
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