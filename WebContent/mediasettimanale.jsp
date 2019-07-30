<%List<MediaPrezzi> mediaPrezzo = (ArrayList<MediaPrezzi>)session.getAttribute("mediaLuglio"); 

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
    
    <div class="text-center mb-4">
          <h3 >Rilevazione del <%=mediaPrezzo.get(0).getData_rilevazione() %></h3>
	</div>
    
    
    
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
				for (MediaPrezzi data : mediaPrezzo) {
			%>
    <tr>
				<td><%=data.getProdotto_nome()%></td>
				<td><%=data.getPrezzo()+"" %></td>
				<td><%=data.getAccisa()+"" %></td>
				<td><%=data.getIva()+""%></td>
				<td><%=data.getNetto()+""%></td>
				<td><%=data.getVariazione()%></td>
		
	
				<%
		}
	%>
			</tr>
			</tbody>
    </table>

<br>
<br>
<br>
<div class="container">
<div id="canvas-holder" style="width:40%">
	<div class="chartjs-size-monitor">
	<div class="chartjs-size-monitor-expand">
	<div class=""></div>
	</div>
	<div class="chartjs-size-monitor-shrink">
	<div class=""></div>
	</div>
	</div>
		<canvas id="chart-area" style="display: block; height: 193px; width: 386px;" width="1013" height="506" class="chartjs-render-monitor"></canvas>
	</div>
<button id="randomizeData">Randomize Data</button>
<button id="addDataset">Add Dataset</button>
<button id="removeDataset">Remove Dataset</button>

</div>


<script type="text/javascript">

var randomScalingFactor = function() {
	return Math.round(Math.random() * 100);
};

var config = {
	type: 'pie',
	data: {
		datasets: [{
			data: [
				randomScalingFactor(),
				randomScalingFactor(),
				randomScalingFactor(),
				randomScalingFactor(),
				randomScalingFactor(),
			],
			backgroundColor: [
				window.chartColors.red,
				window.chartColors.orange,
				window.chartColors.yellow,
				window.chartColors.green,
				window.chartColors.blue,
			],
			label: 'Dataset 1'
		}],
		labels: [
			'Red',
			'Orange',
			'Yellow',
			'Green',
			'Blue'
		]
	},
	options: {
		responsive: true
	}
};

window.onload = function() {
	var ctx = document.getElementById('chart-area').getContext('2d');
	window.myPie = new Chart(ctx, config);
};

document.getElementById('randomizeData').addEventListener('click', function() {
	config.data.datasets.forEach(function(dataset) {
		dataset.data = dataset.data.map(function() {
			return randomScalingFactor();
		});
	});

	window.myPie.update();
});

var colorNames = Object.keys(window.chartColors);
document.getElementById('addDataset').addEventListener('click', function() {
	var newDataset = {
		backgroundColor: [],
		data: [],
		label: 'New dataset ' + config.data.datasets.length,
	};

	for (var index = 0; index < config.data.labels.length; ++index) {
		newDataset.data.push(randomScalingFactor());

		var colorName = colorNames[index % colorNames.length];
		var newColor = window.chartColors[colorName];
		newDataset.backgroundColor.push(newColor);
	}

	config.data.datasets.push(newDataset);
	window.myPie.update();
});

document.getElementById('removeDataset').addEventListener('click', function() {
	config.data.datasets.splice(0, 1);
	window.myPie.update();
});

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