<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Risultati di ricerca</title>
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
			<span style="margin: 0 auto;">Risultati di ricerca</span>
		</div>
		<div class="col-12 pull-right text-center" style="margin: 35px 0 50px 30px;">
			<div class="row text-uppercase" style="font-size: 18px; margin: 0 auto 15px;">
				<span class="pull-right text-left col-2">Nome impianto</span>
				<span class="pull-right  col-3">Carburante</span>
				<span class="pull-right  col-2">Prezzo</span>
				<span class="pull-right  col-2">Self Service</span>
				<div class="col-2"></div>
			</div>
			<div id="1" class="row" style="font-size: 16px; margin: 0 auto 15px;">
				<span class=" col-2 pull-right text-left">$NomeImpianto1</span>					
				<span class=" col-3 pull-right">$Carburante1</span>					
				<span class=" col-2 pull-right">$Prezzo1</span>
				<input class="col-2" type="checkbox" name="isSelf" checked disabled>
				<a class="pull-right col-2" href="./DettagliImpianto.jsp" style="margin: 0 auto;">
					<span >Vedi dettagli ></span>
				</a>
			</div>
			<div id="2" class="row" style="font-size: 16px; margin: 0 auto 15px;">
				<span class=" col-2 pull-right text-left">$NomeImpianto2</span>					
				<span class=" col-3 pull-right">$Carburante2</span>					
				<span class=" col-2 pull-right">$Prezzo2</span>
				<input class="col-2" type="checkbox" name="isSelf" disabled>
				<a class="pull-right col-2" href="./DettagliImpianto.jsp" style="margin: 0 auto;">
					<span >Vedi dettagli ></span>
				</a>
			</div>
			<div id="3" class="row" style="font-size: 16px; margin: 0 auto 15px;">
				<span class=" col-2 pull-right text-left">$NomeImpianto3</span>					
				<span class=" col-3 pull-right">$Carburante3</span>					
				<span class=" col-2 pull-right">$Prezzo3</span>
				<input class="col-2" type="checkbox" name="isSelf" checked  disabled>
				<a class="pull-right col-2" href="./DettagliImpianto.jsp" style="margin: 0 auto;">
					<span >Vedi dettagli ></span>
				</a>
			</div>
			<div id="4" class="row" style="font-size: 16px; margin: 0 auto 15px;">
				<span class=" col-2 pull-right text-left">$NomeImpianto4</span>					
				<span class=" col-3 pull-right">$Carburante4</span>					
				<span class=" col-2 pull-right">$Prezzo4</span>
				<input class="col-2" type="checkbox" name="isSelf" checked  disabled>
				<a class="pull-right col-2" href="./DettagliImpianto.jsp" style="margin: 0 auto;">
					<span >Vedi dettagli ></span>
				</a>
			</div>
			<div id="5" class="row" style="font-size: 16px; margin: 0 auto 15px;">
				<span class=" col-2 pull-right text-left">$NomeImpianto5</span>					
				<span class=" col-3 pull-right">$Carburante5</span>					
				<span class=" col-2 pull-right">$Prezzo5</span>
				<input class="col-2" type="checkbox" name="isSelf" disabled>
				<a class="pull-right col-2" href="./DettagliImpianto.jsp" style="margin: 0 auto;">
					<span >Vedi dettagli ></span>
				</a>
			</div>
		</div>
		<div class="text-center" style="padding: 30px 0 50px; border-top: 1px solid #000; margin: 0 auto;">
			<span class="col-1 text-center" style="margin: 0 30px;">Ordina per:</span>
			<input class="col-1 " type="button" onclick="$sortByName" value="Nome" style="margin: 0 30px;">
			<input class="col-1 " type="button" onclick="$sortByPrice" value="Prezzo" style="margin: 0 30px;">
			<input class="col-1 " type="button" onclick="$sortByIsSelf" value="Self service" style="margin: 0 30px;">
		</div>
	</body>
</html>