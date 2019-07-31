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

    var chartDiv = document.getElementById('chart_div2');

    var data = new google.visualization.DataTable();
    data.addColumn('date', 'Month');
    data.addColumn('number', "Value");


    data.addRows([
      [new Date(2014, 3),  2.9],
      [new Date(2014, 4),  6.3],
      [new Date(2014, 5),    9],
      [new Date(2014, 6), 10.6],
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
      var materialChart = new google.charts.Line(chartDiv);
      materialChart.draw(data, materialOptions);
    }

    drawMaterialChart2();

  }