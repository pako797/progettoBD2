<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Home page</title>
		<link rel="stylesheet" href="./css/bootstrap.min.css">
		<link rel="stylesheet" href="./css/style.css">
	</head>
	
	<body>
		<div class="row" style="width: 90%;display: flex;height: 10vw;margin: 25px auto 0;">
			<a class="col-2 pull-left" href="./Home.jsp">			
				<img src="logo_sito.png" style="width: 100%;" alt="logo" >
			</a>
		 	<span style="margin: 50px auto auto;display: block;float: left;line-height: 1;font-size: 40px;" class="text-uppercase text-center font-weight-bold col-8 pull-left">Search the Best refuelling</span>
			<a class="pull-right col-2 text-right" href="./Login.jsp" style="margin: 25px 0 auto;">
				<span >Login admin</span>
			</a>
		</div>
		<form action="TODO" class="text-center" style="margin-top: 80px;">
			<span style="font-size: 20px;">Trova le stazioni di rifornimento più vicine a te:</span>
			<input class="row" type="text" name="Comune" placeholder="Comune" style="margin: 25px auto 15px;">
			<input class="row" type="text" name="Provincia" placeholder="Provincia" style="margin: 15px auto;">
			<div class="row" style="width: 50%; margin: 0 auto;">
				<span class="col-12" style="margin: 15px auto; font-size: 18px;">Scegli il carburante:</span>
				<label id="carb-1" class="col-4">
					<span class="text-right col-6">$Carburante1</span>
					<input class="col-6 pull-right" type="checkbox" name="carb-1">
				</label>
				<label id="carb-2" class="col-4">
					<span class="text-right col-6">$Carburante2</span>
					<input class="col-6 pull-right" type="checkbox" name="carb-2">
				</label>
				<label id="carb-3" class="col-4">
					<span class="text-right col-6">$Carburante3</span>
					<input class="col-6 pull-right" type="checkbox" name="carb-3">
				</label>
				<label id="carb-4" class="col-4">
					<span class="text-right col-6">$Carburante4</span>
					<input class="col-6 pull-right" type="checkbox" name="carb-4">
				</label>
				<label id="carb-5" class="col-4">
					<span class="text-right col-6">$Carburante5</span>
					<input class="col-6 pull-right" type="checkbox" name="carb-5">
				</label>
				<label id="carb-6" class="col-4">
					<span class="text-right col-6">$Carburante6</span>
					<input class="col-6 pull-right" type="checkbox" name="carb-6">
				</label>
			</div>
			<input class="row" type="submit" value="Cerca impianto" style="margin: 30px auto;">
		</form>
	</body>
</html>