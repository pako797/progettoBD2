<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
List<MediaPrezzi> media_prezzi_mensili_Luglio = (ArrayList<MediaPrezzi>) session.getAttribute("media_prezzi_mensili_Luglio");
List<MediaPrezzi> media_prezzi_mensili_Giugno = (ArrayList<MediaPrezzi>) session.getAttribute("media_prezzi_mensili_Giugno");
List<MediaPrezzi> media_prezzi_mensili_Aprile = (ArrayList<MediaPrezzi>) session.getAttribute("media_prezzi_mensili_Aprile");
List<MediaPrezzi> media_prezzi_mensili_Maggio = (ArrayList<MediaPrezzi>)session.getAttribute("media_prezzi_mensili_Maggio");

if(media_prezzi_mensili_Luglio == null || media_prezzi_mensili_Giugno == null || media_prezzi_mensili_Aprile == null || media_prezzi_mensili_Maggio == null){
	response.sendRedirect("./index.jsp");
	return;
}

%>
<!DOCTYPE html>
<html>
<%@page import="java.util.*,Control.*,Beans.*"%>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, user-scalable=no,
initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">

<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/mio.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>

<script src="https://www.gstatic.com/charts/loader.js"></script>
</head>
<body>

<div class=container">
    <%
	int i=0;			
    for (i=0; i< 6;i++) {
			%>
				<input type="hidden" class="nome<%=i%>" value="<%=media_prezzi_mensili_Luglio.get(i).getProdotto_nome()%>">
				<input type="hidden"  class="aprile<%=i%>"  value=<%=media_prezzi_mensili_Aprile.get(i).getPrezzo()%>>
				<input type="hidden"  class="maggio<%=i%>"  value=<%=media_prezzi_mensili_Maggio.get(i).getPrezzo()%>>
				<input type="hidden" class="giugno<%=i%>"  value=<%=media_prezzi_mensili_Giugno.get(i).getPrezzo()%>>
				<input type="hidden" class="luglio<%=i%>"  value=<%=media_prezzi_mensili_Luglio.get(i).getPrezzo()%>>

				
				<%
				System.out.println(media_prezzi_mensili_Luglio.get(i).getProdotto_nome());
				
		}
	%>
	
	
<%@include file="header.jsp"%>

<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
      <h1 class="display-4">Rilevazione mensile
      </h1></div>
         <div class="text-center mb-4">
          <h3 >Prezzi medi mesi Aprile-Luglio</h3>
	</div>
	
	<br>
      
<div class="row">
<div class="col-md-1"></div>
<div class="col-md-4">
<div id="chart_div"></div>
</div>
<div class="col-md-1">
</div>
<div class="col-md-4">
<div id="chart_div2"></div>
</div>
<div class="col-md-1"></div>
</div>

<br>
<br>
<br>

<div class="row">
<div class="col-md-1"></div>
<div class="col-md-4">
<div id="chart_div3"></div>
</div>
<div class="col-md-1">
</div>
<div class="col-md-4">
<div id="chart_div4"></div>
</div>
<div class="col-md-1"></div>
</div>

<br>
<br>
<br>

<div class="row">
<div class="col-md-1"></div>
<div class="col-md-4">
<div id="chart_div5"></div>
</div>
<div class="col-md-1">
</div>
<div class="col-md-4">
<div id="chart_div6"></div>
</div>
<div class="col-md-1"></div>
</div>

</div>
<script type="text/javascript" src="./js/chartMesi.js"></script>
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