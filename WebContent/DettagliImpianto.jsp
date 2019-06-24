<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Dettagli impianto</title>
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
		<div class="row" style="font-size: 24px; margin: 80px auto 0;">
			<span style="margin: 0 auto;">Dettagli impianto</span>
		</div>
		<div class="row text-center" style="margin: 20px auto 50px;">
			<div class="col-5 pull-left" style="margin-top: 15px; border-right: 1px solid #000;">
				<div class="row">
					<span class="text-right text-uppercase col-4">Nome Impianto:</span>
					<span class="col-7 pull-right">$NomeImpianto</span>
				</div>
				<div class="row" style="margin-top: 15px;">
					<span class="text-right text-uppercase col-4">Gestore:</span>
					<span class="col-7 pull-right">$Gestore</span>
				</div>
				<div class="row" style="margin-top: 15px;">
					<span class="text-right text-uppercase col-4">Bandiera:</span>
					<span class="col-7 pull-right">$Bandiera</span>
				</div>
				<div class="row" style="margin-top: 15px;">
					<span class="text-right text-uppercase col-4">Tipo Impianto:</span>
					<span class="col-7 pull-right">$TipoImpianto</span>
				</div>
				<div class="row" style="margin-top: 15px;">
					<span class="text-right text-uppercase col-4">Indirizzo:</span>
					<span class="col-7 pull-right">$Indirizzo</span>
				</div>
				<div class="row" style="margin-top: 15px;">
					<span class="text-right text-uppercase col-4">Comune:</span>
					<span class="col-7 pull-right">$Comune</span>
				</div>
				<div class="row" style="margin-top: 15px;">
					<span class="text-right text-uppercase col-4">Provincia:</span>
					<span class="col-7 pull-right">$Provincia</span>
				</div>
			</div>
			<div class="col-7 pull-right" style="margin-top: 15px;">
				<div class="row text-uppercase" style="font-size: 18px; margin: 0 auto 15px;">
					<span class="pull-right  col-5">Carburanti disponibili:</span>
					<span class="pull-right  col-4">Prezzo:</span>
					<span class="pull-right  col-3">Self Service</span>
				</div>
				<div id="1" class="row" style="font-size: 16px; margin: 0 auto 15px;">
					<span class=" col-5 pull-right">$Carburtante1</span>					
					<span class=" col-4 pull-right">$Prezzo1</span>
					<input class="col-3 pull-right" type="checkbox" name="isSelf" checked disabled>
				</div>
				<div id="1" class="row" style="font-size: 16px; margin: 0 auto 15px;">
					<span class=" col-5 pull-right">$Carburtante2</span>					
					<span class=" col-4 pull-right">$Prezzo2</span>
					<input class="col-3 pull-right" type="checkbox" name="isSelf"  disabled>
				</div>
				<div id="1" class="row" style="font-size: 16px; margin: 0 auto 15px;">
					<span class=" col-5 pull-right">$Carburtante3</span>					
					<span class=" col-4 pull-right">$Prezzo3</span>
					<input class="col-3 pull-right" type="checkbox" name="isSelf"  disabled>
				</div>
				<div id="1" class="row" style="font-size: 16px; margin: 0 auto 15px;">
					<span class=" col-5 pull-right">$Carburtante4</span>					
					<span class=" col-4 pull-right">$Prezzo4</span>
					<input class="col-3 pull-right" type="checkbox" name="isSelf" checked disabled>
				</div>
			</div>
		</div>
	</body>
</html>