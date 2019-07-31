
<%
	List<Stazione> risultatoRicerca = (ArrayList<Stazione>) session.getAttribute("ricercaAvanzata");
	if (risultatoRicerca == null || risultatoRicerca.size() == 0) {
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
<meta name="viewport"
	content="width=device-width, user-scalable=no,
initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>

<title>Risultati</title>

</head>
<body>

	<%@include file="header.jsp"%>



	<table id="example" class=" display table table-striped">
		<thead>
			<tr>
				<th scope="col">idImpianto</th>
				<th scope="col">Descrizione Carburante</th>
				<th scope="col">Prezzo</th>
				<th scope="col">isSelf</th>
			</tr>
		</thead>
		<tbody>
			<%
				for (Stazione data : risultatoRicerca) {
					if(data.getPrezziCarburante().size() > 0){
					for (Prezzo temp : data.getPrezziCarburante()) {
			%>
			<tr>
				<td><a href="./DettagliStazione?id=<%=data.getIdImpianto() %>"><%=temp.getIdImpianto() + ""%></a></td>
				<td><%=temp.getDescCarburante()%></td>
				<td><%=temp.getPrezzo()%></td>
				<%
					if (temp.getIsSelf() == 0) {
				%>
				<td>No</td>
				<%
					} else {
				%>
				<td>Si</td>

				<%
					}
				%>
				<%
					}
					}
					}
				%>
			</tr>
		</tbody>
	</table>


</body>

<script>
$(document).ready(function() {
    $('#example').DataTable();
});
</script>




<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
</html>