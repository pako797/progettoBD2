//Chart1
google.charts.load('current', {
	'packages' : [ 'corechart' ]
});
google.charts.setOnLoadCallback(drawChart);

function drawChart() {

	var netto = parseFloat(document.getElementsByClassName("netto1")[0].value);
	var accisa = parseFloat(document.getElementsByClassName("accisa1")[0].value);
	var iva = parseFloat(document.getElementsByClassName("iva1")[0].value);

	var data = google.visualization.arrayToDataTable([
			[ 'Prezzi', 'Settimana' ], [ 'Netto', netto ],
			[ 'Accisa', accisa ], [ 'Iva', iva ] ]);

	var options = {
		title : 'Benzina'
	};

	var chart = new google.visualization.PieChart(document
			.getElementById('piechart'));

	chart.draw(data, options);
}

// Chart2
google.charts.load('current', {
	'packages' : [ 'corechart' ]
});
google.charts.setOnLoadCallback(drawChart2);

function drawChart2() {

	var netto2 = parseFloat(document.getElementsByClassName("netto2")[0].value);
	var accisa2 = parseFloat(document.getElementsByClassName("accisa2")[0].value);
	var iva2 = parseFloat(document.getElementsByClassName("iva2")[0].value);

	var data = google.visualization.arrayToDataTable([
			[ 'Prezzi', 'Settimana' ], [ 'Netto', netto2 ],
			[ 'Accisa', accisa2 ], [ 'Iva', iva2 ] ]);

	var options = {
		title : 'GPL'
	};

	var chart = new google.visualization.PieChart(document
			.getElementById('piechart2'));

	chart.draw(data, options);
}

// Chart3
google.charts.load('current', {
	'packages' : [ 'corechart' ]
});
google.charts.setOnLoadCallback(drawChart3);

function drawChart3() {

	var netto3 = parseFloat(document.getElementsByClassName("netto3")[0].value);
	var accisa3 = parseFloat(document.getElementsByClassName("accisa3")[0].value);
	var iva3 = parseFloat(document.getElementsByClassName("iva3")[0].value);

	var data = google.visualization.arrayToDataTable([
			[ 'Prezzi', 'Settimana' ], [ 'Netto', netto3 ],
			[ 'Accisa', accisa3 ], [ 'Iva', iva3 ] ]);

	var options = {
		title : 'Gasolio auto'
	};

	var chart = new google.visualization.PieChart(document
			.getElementById('piechart3'));

	chart.draw(data, options);
}
// Chart4
google.charts.load('current', {
	'packages' : [ 'corechart' ]
});
google.charts.setOnLoadCallback(drawChart4);

function drawChart4() {

	var netto4 = parseFloat(document.getElementsByClassName("netto4")[0].value);
	var accisa4 = parseFloat(document.getElementsByClassName("accisa4")[0].value);
	var iva4 = parseFloat(document.getElementsByClassName("iva4")[0].value);

	var data = google.visualization.arrayToDataTable([
			[ 'Prezzi', 'Settimana' ], [ 'Netto', netto4 ],
			[ 'Accisa', accisa4 ], [ 'Iva', iva4 ] ]);

	var options = {
		title : 'Gasolio riscaldamento'
	};

	var chart = new google.visualization.PieChart(document
			.getElementById('piechart4'));

	chart.draw(data, options);
}

// Chart5
google.charts.load('current', {
	'packages' : [ 'corechart' ]
});
google.charts.setOnLoadCallback(drawChart5);

function drawChart5(){

	var netto5 = parseFloat(document.getElementsByClassName("netto5")[0].value);
	var accisa5 = parseFloat(document.getElementsByClassName("accisa5")[0].value);
	var iva5 = parseFloat(document.getElementsByClassName("iva5")[0].value);

	var data = google.visualization.arrayToDataTable([
			[ 'Prezzi', 'Settimana' ], [ 'Netto', netto5 ],
			[ 'Accisa', accisa5 ], [ 'Iva', iva5 ] ]);

	var options = {
		title : 'O.C. Denso BTZ S>1%'
	};

	var chart = new google.visualization.PieChart(document
			.getElementById('piechart5'));

	chart.draw(data, options);
}

// Chart6
google.charts.load('current', {
	'packages' : [ 'corechart' ]
});
google.charts.setOnLoadCallback(drawChart6);

function drawChart6() {

	var netto6 = parseFloat(document.getElementsByClassName("netto6")[0].value);
	var accisa6 = parseFloat(document.getElementsByClassName("accisa6")[0].value);
	var iva6 = parseFloat(document.getElementsByClassName("iva6")[0].value);

	var data = google.visualization.arrayToDataTable([
			[ 'Prezzi', 'Settimana' ], [ 'Netto', netto6 ],
			[ 'Accisa', accisa6 ], [ 'Iva', iva6 ] ]);

	var options = {
		title :  'O.C. Fluido BTZ S<=1%'
	};

	var chart = new google.visualization.PieChart(document
			.getElementById('piechart6'));

	chart.draw(data, options);
}