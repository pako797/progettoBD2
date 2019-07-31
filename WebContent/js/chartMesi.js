      google.charts.load('current', {'packages':['line', 'corechart']});
      google.charts.setOnLoadCallback(drawChart);

    function drawChart() {


    var prezzoAprile = parseFloat(document.getElementsByClassName("aprile0")[0].value);
   	var prezzoMaggio = parseFloat(document.getElementsByClassName("maggio0")[0].value);
   	var prezzoGiugno = parseFloat(document.getElementsByClassName("giugno0")[0].value);
   	var prezzoLuglio = parseFloat(document.getElementsByClassName("luglio0")[0].value);
    	
      var chartDiv = document.getElementById('chart_div');

      var data = new google.visualization.DataTable();
      data.addColumn('date', 'Month');
      data.addColumn('number', "Value");


      data.addRows([
        [new Date(2014, 3),   prezzoAprile ],
        [new Date(2014, 4),  prezzoMaggio],
        [new Date(2014, 5),   prezzoGiugno],
        [new Date(2014, 6), prezzoLuglio],
      ]);

      var materialOptions = {
        chart: {
          title: 'Average Temperatures and Daylight in Iceland Throughout the Year'
        },
        height: 400,
        series: {
          // Gives each series an axis name that matches the Y-axis below.
          0: {axis: 'Temps'},
        },
        axes: {
          // Adds labels to each axis; they don't have to match the axis names.
          y: {
            Temps: {label: 'Value'},
          }
        }
      };

    
      function drawMaterialChart() {
        var materialChart = new google.charts.Line(chartDiv);
        materialChart.draw(data, materialOptions);
      }

      drawMaterialChart();

    }
  
    // secondo
    
    google.charts.load('current', {'packages':['line', 'corechart']});
    google.charts.setOnLoadCallback(drawChart2);

  function drawChart2() {

	  var prezzoAprile1 = parseFloat(document.getElementsByClassName("aprile1")[0].value);
	   	var prezzoMaggio1 = parseFloat(document.getElementsByClassName("maggio1")[0].value);
	   	var prezzoGiugno1 = parseFloat(document.getElementsByClassName("giugno1")[0].value);
	   	var prezzoLuglio1 = parseFloat(document.getElementsByClassName("luglio1")[0].value);
	   	
    var chartDiv2 = document.getElementById('chart_div2');

    var data = new google.visualization.DataTable();
    data.addColumn('date', 'Month');
    data.addColumn('number', "Value");


    data.addRows([
        [new Date(2014, 3),   prezzoAprile1 ],
        [new Date(2014, 4),  prezzoMaggio1],
        [new Date(2014, 5),   prezzoGiugno1],
        [new Date(2014, 6), prezzoLuglio1],
      ]);

    var materialOptions = {
      chart: {
        title: 'Average Temperatures and Daylight in Iceland Throughout the Year'
      },
      height: 400,
      series: {
        // Gives each series an axis name that matches the Y-axis below.
        0: {axis: 'Temps'},
      },
      axes: {
        // Adds labels to each axis; they don't have to match the axis names.
        y: {
          Temps: {label: 'Value'},
        }
      }
    };

  
    function drawMaterialChart2() {
      var materialChart = new google.charts.Line(chartDiv2);
      materialChart.draw(data, materialOptions);
    }

    drawMaterialChart2();

  }
  
  // terzo
  
  google.charts.load('current', {'packages':['line', 'corechart']});
  google.charts.setOnLoadCallback(drawChart3);

function drawChart3() {

	  var prezzoAprile2 = parseFloat(document.getElementsByClassName("aprile2")[0].value);
	   	var prezzoMaggio2 = parseFloat(document.getElementsByClassName("maggio2")[0].value);
	   	var prezzoGiugno2 = parseFloat(document.getElementsByClassName("giugno2")[0].value);
	   	var prezzoLuglio2 = parseFloat(document.getElementsByClassName("luglio2")[0].value);
	   	
  var chartDiv3 = document.getElementById('chart_div3');

  var data = new google.visualization.DataTable();
  data.addColumn('date', 'Month');
  data.addColumn('number', "Value");


  data.addRows([
      [new Date(2014, 3),   prezzoAprile2],
      [new Date(2014, 4),  prezzoMaggio2],
      [new Date(2014, 5),   prezzoGiugno2],
      [new Date(2014, 6), prezzoLuglio2],
    ]);

  var materialOptions = {
    chart: {
      title: 'Average Temperatures and Daylight in Iceland Throughout the Year'
    },
    height: 400,
    series: {
      // Gives each series an axis name that matches the Y-axis below.
      0: {axis: 'Temps'},
    },
    axes: {
      // Adds labels to each axis; they don't have to match the axis names.
      y: {
        Temps: {label: 'Value'},
      }
    }
  };


  function drawMaterialChart3() {
    var materialChart = new google.charts.Line(chartDiv3);
    materialChart.draw(data, materialOptions);
  }

  drawMaterialChart3();

}

// quarto

google.charts.load('current', {'packages':['line', 'corechart']});
google.charts.setOnLoadCallback(drawChart4);

function drawChart4() {

  var prezzoAprile3 = parseFloat(document.getElementsByClassName("aprile3")[0].value);
   	var prezzoMaggio3 = parseFloat(document.getElementsByClassName("maggio3")[0].value);
   	var prezzoGiugno3 = parseFloat(document.getElementsByClassName("giugno3")[0].value);
   	var prezzoLuglio3 = parseFloat(document.getElementsByClassName("luglio3")[0].value);
   	
var chartDiv4 = document.getElementById('chart_div4');

var data = new google.visualization.DataTable();
data.addColumn('date', 'Month');
data.addColumn('number', "Value");


data.addRows([
    [new Date(2014, 3),   prezzoAprile3 ],
    [new Date(2014, 4),  prezzoMaggio3],
    [new Date(2014, 5),   prezzoGiugno3],
    [new Date(2014, 6), prezzoLuglio3],
  ]);

var materialOptions = {
  chart: {
    title: 'Average Temperatures and Daylight in Iceland Throughout the Year'
  },
  height: 400,
  series: {
    // Gives each series an axis name that matches the Y-axis below.
    0: {axis: 'Temps'},
  },
  axes: {
    // Adds labels to each axis; they don't have to match the axis names.
    y: {
      Temps: {label: 'Value'},
    }
  }
};


function drawMaterialChart4() {
  var materialChart = new google.charts.Line(chartDiv4);
  materialChart.draw(data, materialOptions);
}

drawMaterialChart4();

}

// cinque

google.charts.load('current', {'packages':['line', 'corechart']});
google.charts.setOnLoadCallback(drawChart5);

function drawChart5() {

  var prezzoAprile4 = parseFloat(document.getElementsByClassName("aprile4")[0].value);
   	var prezzoMaggio4 = parseFloat(document.getElementsByClassName("maggio4")[0].value);
   	var prezzoGiugno4 = parseFloat(document.getElementsByClassName("giugno4")[0].value);
   	var prezzoLuglio4 = parseFloat(document.getElementsByClassName("luglio4")[0].value);
   	
var chartDiv5 = document.getElementById('chart_div5');

var data = new google.visualization.DataTable();
data.addColumn('date', 'Month');
data.addColumn('number', "Value");


data.addRows([
    [new Date(2014, 3),   prezzoAprile4 ],
    [new Date(2014, 4),  prezzoMaggio4],
    [new Date(2014, 5),   prezzoGiugno4],
    [new Date(2014, 6), prezzoLuglio4],
  ]);

var materialOptions = {
  chart: {
    title: 'Average Temperatures and Daylight in Iceland Throughout the Year'
  },
  height: 400,
  series: {
    // Gives each series an axis name that matches the Y-axis below.
    0: {axis: 'Temps'},
  },
  axes: {
    // Adds labels to each axis; they don't have to match the axis names.
    y: {
      Temps: {label: 'Value'},
    }
  }
};


function drawMaterialChart5() {
  var materialChart = new google.charts.Line(chartDiv5);
  materialChart.draw(data, materialOptions);
}

drawMaterialChart5();

}

// sesto

google.charts.load('current', {'packages':['line', 'corechart']});
google.charts.setOnLoadCallback(drawChart6);

function drawChart6() {

  var prezzoAprile5 = parseFloat(document.getElementsByClassName("aprile5")[0].value);
   	var prezzoMaggio5 = parseFloat(document.getElementsByClassName("maggio5")[0].value);
   	var prezzoGiugno5 = parseFloat(document.getElementsByClassName("giugno5")[0].value);
   	var prezzoLuglio5 = parseFloat(document.getElementsByClassName("luglio5")[0].value);
   	
var chartDiv6 = document.getElementById('chart_div6');

var data = new google.visualization.DataTable();
data.addColumn('date', 'Month');
data.addColumn('number', "Value");


data.addRows([
    [new Date(2014, 3),   prezzoAprile5 ],
    [new Date(2014, 4),  prezzoMaggio5],
    [new Date(2014, 5),   prezzoGiugno5],
    [new Date(2014, 6), prezzoLuglio5],
  ]);

var materialOptions = {
  chart: {
    title: 'Average Temperatures and Daylight in Iceland Throughout the Year'
  },
  height: 400,
  series: {
    // Gives each series an axis name that matches the Y-axis below.
    0: {axis: 'Temps'},
  },
  axes: {
    // Adds labels to each axis; they don't have to match the axis names.
    y: {
      Temps: {label: 'Value'},
    }
  }
};


function drawMaterialChart6() {
  var materialChart = new google.charts.Line(chartDiv6);
  materialChart.draw(data, materialOptions);
}

drawMaterialChart6();

}