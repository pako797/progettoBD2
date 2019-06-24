<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Cerca Impianto</title>
		<link rel="stylesheet" href="./css/bootstrap.min.css">
		<link rel="stylesheet" href="./css/style.css">
	</head>
	
	<body>
		<div class="row" style="width: 90%;display: flex;height: 10vw;margin: 25px auto 0;">
			<a class="col-2 pull-left" href="./Home.jsp">			
				<img src="logo_sito.png" style="width: 100%;" alt="logo" >
			</a>
		 	<span style="margin: 50px auto auto;display: block;float: left;line-height: 1;font-size: 40px;" class="text-uppercase text-center font-weight-bold col-8 pull-left">Search the Best refuelling</span>
			<div class="col-2"></div>
		</div>
		<form action="TODO" class="text-center" style="margin-top: 80px;">
			<span style="font-size: 20px;">Inserire l'ID dell'impianto da modificare/eliminare:</span>
			<input class="row" type="text" name="idImpianto" placeholder="ID Impianto" style="margin: 25px auto 15px;">
			<input class="row" type="submit" value="Cerca" style="margin: 30px auto;">
		</form>
		<a style="font-size: 19px; margin-top: 50px;" class="row text" href="./AggiungiImpianto.jsp" style="margin: 25px 0 auto;">
			<div class="col-1"></div>
			<span class="col-5 text-left">+ Aggiungi impianto</span>
			<div class="col-6"></div>
		</a>
	</body>
</html>