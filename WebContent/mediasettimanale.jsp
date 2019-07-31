<%
List<MediaPrezzi> mediaPrezzo = (ArrayList<MediaPrezzi>)session.getAttribute("mediaLuglio"); 

if(mediaPrezzo == null){
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
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/mio.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<title>Insert title here</title>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script src="https://www.chartjs.org/samples/latest/utils.js"></script>
<script src="https://www.gstatic.com/charts/loader.js"></script>

<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
</head>
<body>

	<%@include file="header.jsp"%>


 <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
      <h1 class="display-4">Prezzi medi settimanali dei carburanti e combustibili
      </h1>
    </div>
    
    
    <%if(mediaPrezzo.size() == 0){ %>
     <div class="text-center mb-4">
          <h3 >Nessun dato disponibile</h3>
	</div>
    <%}else{ %>
    
    <div class="text-center mb-4">
          <h3 >Rilevazione del <%=mediaPrezzo.get(0).getData_rilevazione() %></h3>
	</div>
    <%}%>
    
    
    
    
    
    <table id="example" class=" display table table-striped">
    <thead>
      <tr>
				<th scope="col">Nome</th>
				<th scope="col">Prezzo</th>
				<th scope="col">Accisa</th>
				<th scope="col">Iva</th>
				<th scope="col">Netto</th>
				<th scope="col">Variazione</th>
			</tr>
    </thead>
         <tbody>
    <%
	int i=1;			
    for (MediaPrezzi data : mediaPrezzo) {
			%>
    <tr>
				<td><%=data.getProdotto_nome()%></td>
				<td><strong><%=data.getPrezzo()+"" %></strong></td>
				<td><%=data.getAccisa()+"" %></td>
				<td><%=data.getIva()+""%></td>
				<td><%=data.getNetto()+""%></td>
				<td><%=data.getVariazione()%></td>
				<input type="hidden"  class="prezzo<%=i%>"  value=<%=data.getPrezzo()%>>
				<input type="hidden"  class="accisa<%=i%>"  value=<%=data.getAccisa()%>>
				<input type="hidden" class="iva<%=i%>"  value=<%=data.getIva()%>>
				<input type="hidden" class="netto<%=i%>"  value=<%=data.getNetto()%>>
			    <input type="hidden" class="variazione<%=i%>"  value=<%=data.getVariazione()%>>
				
				<%
				i++;
		}
	%>
			</tr>
			</tbody>
    </table>

<br>
<br>
<br>
<div class="row">
<div class="col-md-4">
<div id="piechart" style="width: 900px; height: 500px;"></div>
</div>
<div class="col-md-2">
</div>
<div class="col-md-4">
 <div id="piechart2" style="width: 900px; height: 500px;"></div>
</div>
</div>
<div class="row">
<div class="col-md-4">
 <div id="piechart3" style="width: 900px; height: 500px;"></div>
</div>
<div class="col-md-2">
</div>
<div class="col-md-4">
 <div id="piechart4" style="width: 900px; height: 500px;"></div>
</div>
<div class="col-md-2">
</div>
</div>
<div class="row">
<div class="col-md-4">
 <div id="piechart5" style="width: 900px; height: 500px;"></div>
</div>
<div class="col-md-2">
</div>
<div class="col-md-4">
 <div id="piechart6" style="width: 900px; height: 500px;"></div>
</div>
<div class="col-md-2">
</div>
</div>




    <script type="text/javascript" src="./js/chart.js">
  </script>


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