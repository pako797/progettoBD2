<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
List<MediaPrezzi> media_prezzi_mensili_Luglio = (ArrayList<MediaPrezzi>) session.getAttribute("media_prezzi_mensili_Luglio");
List<MediaPrezzi> media_prezzi_mensili_Giugno = (ArrayList<MediaPrezzi>) session.getAttribute("media_prezzi_mensili_Giugno");
List<MediaPrezzi> media_prezzi_mensili_Aprile = (ArrayList<MediaPrezzi>) session.getAttribute("media_prezzi_mensili_Aprile");
List<MediaPrezzi> media_prezzi_mensili_Maggio = (ArrayList<MediaPrezzi>)session.getAttribute("media_prezzi_mensili_Maggio");
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

<script src="https://www.gstatic.com/charts/loader.js"></script>
</head>
<body>


    <%
	int i=0;			
    for (i=0; i< media_prezzi_mensili_Luglio.size();i++) {
			%>
				<input type="hidden"  class="aprile<%=i%>"  value=<%=media_prezzi_mensili_Aprile.get(i).getPrezzo()%>>
				<input type="hidden"  class="maggio<%=i%>"  value=<%=media_prezzi_mensili_Maggio.get(i).getPrezzo()%>>
				<input type="hidden" class="giugno<%=i%>"  value=<%=media_prezzi_mensili_Giugno.get(i).getPrezzo()%>>
				<input type="hidden" class="luglio<%=i%>"  value=<%=media_prezzi_mensili_Luglio.get(i).getPrezzo()%>>

				
				<%
				i++;
		}
	%>
	
	
<%@include file="header.jsp"%>
<div class="row">
<div class="col-md-5">
<div id="chart_div"></div>
</div>
<div class="col-md-1">
</div>
<div class="col-md-5">
<div id="chart_div2"></div>
</div>
</div>

<div class="row">
<div class="col-md-5">
<div id="chart_div3"></div>
</div>
<div class="col-md-1">
</div>
<div class="col-md-5">
<div id="chart_div4"></div>
</div>
</div>

<div class="row">
<div class="col-md-5">
<div id="chart_div5"></div>
</div>
<div class="col-md-1">
</div>
<div class="col-md-5">
<div id="chart_div6"></div>
</div>
</div>


<script type="text/javascript" src="./js/chartMesi.js"></script>

</body>

</html>