<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Aggiungi impianto</title>
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
		<div class="row" style="font-size: 24px; margin: 80px auto 0;">
			<span style="margin: 0 auto;">Aggiungi un nuovo impianto:</span>
		</div>
		<div class="row text-center" style="margin: 30px auto 50px;">
			<form action="TODO" class="col-12 text-center">
				<div class="row">
					<span class="text-right col-5">Gestore:</span>
					<input class=" col-2 pull-right" type="text" name="gestore" placeholder="" >
				</div>
				<div class="row" style="margin-top: 15px;">
					<span class="text-right col-5">Bandiera:</span>
					<input class="col-2 pull-right" type="text" name="bandiera" placeholder="">
				</div>
				<div class="row" style="margin-top: 15px;">
					<span class="text-right col-5">Tipo Impianto:</span>
					<input class="col-2 pull-right" type="text" name="tipoImpianto" placeholder="">
				</div>
				<div class="row" style="margin-top: 15px;">
					<span class="text-right col-5">Nome Impianto:</span>
					<input class="col-2 pull-right" type="text" name="nomeImpianto" placeholder="">
				</div>
				<div class="row" style="margin-top: 15px;">
					<span class="text-right col-5">Indirizzo:</span>
					<input class="col-2 pull-right" type="text" name="indirizzo" placeholder="">
				</div>
				<div class="row" style="margin-top: 15px;">
					<span class="text-right col-5">Comune:</span>
					<input class="col-2 pull-right" type="text" name="comune" placeholder="">
				</div>
				<div class="row" style="margin-top: 15px;">
					<span class="text-right col-5">Provincia:</span>
					<input class="col-2 pull-right" type="text" name="provincia" placeholder="">
				</div>
				<input type="submit" value="Salva" style="margin: 30px auto;">
				<input type="button" onclick="history.back()" value="Annulla">
			</form>
		</div>
	</body>
</html>