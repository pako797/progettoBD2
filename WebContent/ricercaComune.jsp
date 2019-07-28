
<%
	List<Stazione> stazioni = (ArrayList<Stazione>) session.getAttribute("stazioni");
	Stazione stazione = (Stazione) session.getAttribute("stazione");
	Boolean confronto = (Boolean) session.getAttribute("confronto");
	
	if(stazioni == null){
		response.sendRedirect("./index.jsp");
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
<title>Risultato Ricerca</title>

</head>
<body>
 <%@include file="header.jsp" %>


	<%
		if (stazioni.size() <= 0 || stazioni == null) {
	%>
	<div class = "container">
		<p>Stazioni non trovate effettua una nuova ricerca</p>
	
	</div>

	<%
		} else {
	%>

	<table class="table table-striped custab">
    <thead>
    <div style="margin-bottom: 10px;">
    <a href="#" class="btn btn-primary btn-xs pull-right"><b>+</b> Add new categories</a>
    </div>
      <tr>
				<th scope="col">Id</th>
				<th scope="col">Gestore</th>
				<th scope="col">Bandiera</th>
				<th scope="col">Tipo impianto</th>
				<th scope="col">Comune</th>
				<th scope="col">Indirizzo</th>
				<%if((confronto == null) || (confronto.booleanValue() == false)){ %>
 				  <th class="text-center">Action</th>			
				<%} %>
				<%if((confronto != null) && (confronto.booleanValue() == true)){ %>
				<th scope="col">Confronto</th>
				
				<%} %>
			</tr>
    </thead>
    <%
				for (Stazione data : stazioni) {
			%>
    <tr>
				<td><%=data.getIdImpianto() + ""%></td>
				<td><%=data.getGestore()%></td>
				<td><%=data.getBandiera()%></td>
				<td><%=data.getTipoImpianto()%></td>
				<td><%=data.getComune()%></td>
				<td><%=data.getIndirizzo()%></td>
				<%if(((confronto == null) || (confronto.booleanValue() == false)) && (admin==null)){ %>
				<td><a href="./DettagliStazione?id=<%=data.getIdImpianto() %>" class="btn btn-primary">Dettagli</a></td>
				<%} %>
				<%if(admin!=null){ %>
				 <td class="text-center"><a href="./DettagliStazione?id=<%=data.getIdImpianto() %>" class='btn btn-info btn-xs'><i class="material-icons"> remove_red_eye </i></a> <a href="./DettagliStazione?id=<%=data.getIdImpianto() %>" class="btn btn-danger btn-xs"><i class="material-icons"> delete </i></a></td>
				<%} %>
				<%if((confronto != null) && (confronto.booleanValue() == true)){ %>
				<%if(stazione != null && stazione.getIdImpianto() == data.getIdImpianto()){ %>
				<td><a  href="" class="btn btn-success isDisabled">Confronta</a></td>			
				<%}else{ %>
				<td><a href="./ConfrontaPrezzi?id=<%=data.getIdImpianto() %>" class="btn btn-success">Confronta</a></td>			
				
				<%} %>
				<%} %>
				<%
		}
	%>
			</tr>
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