<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Gestisci impianto</title>
		<link rel="stylesheet" href="./css/bootstrap.min.css">
		<link rel="stylesheet" href="./css/style.css">
	</head>
	
	<body>
		<div class="row" style="width: 90%;display: flex;height: 10vw;margin: 25px auto 0;">
			<a class="col-2 pull-left" href="./Home.jsp">			
				<img src="logo_sito.png" style="width: 100%;" alt="logo" >
			</a>
		 	<span style="margin: 50px auto 50px;display: block;float: left;line-height: 1;font-size: 40px;" class="text-uppercase text-center font-weight-bold col-8 pull-left">Search the Best refuelling</span>
			<div class="col-2"></div>
		</div>
		<div class="row" style="font-size: 24px; margin: 80px auto 0;">
			<span style="margin: 0 0 0 auto;">Modifica il seguente impianto:</span><span style="margin: 0 auto 0 0;">$IDimpianto</span>
		</div>
		<div class="row text-center" style="margin: 20px auto 50px;">
			<form action="TODO" class="col-5 pull-left" style="margin-top: 15px; border-right: 1px solid #000;">
				<div class="row">
					<span class="text-right col-4">Gestore:</span>
					<input class=" col-7 pull-right" type="text" name="gestore" placeholder="$Gestore" >
				</div>
				<div class="row" style="margin-top: 15px;">
					<span class="text-right col-4">Bandiera:</span>
					<input class="col-7 pull-right" type="text" name="bandiera" placeholder="$Bandiera">
				</div>
				<div class="row" style="margin-top: 15px;">
					<span class="text-right col-4">Tipo Impianto:</span>
					<input class="col-7 pull-right" type="text" name="tipoImpianto" placeholder="$Tipoimpianto">
				</div>
				<div class="row" style="margin-top: 15px;">
					<span class="text-right col-4">Nome Impianto:</span>
					<input class="col-7 pull-right" type="text" name="nomeImpianto" placeholder="$Nomeimpianto">
				</div>
				<div class="row" style="margin-top: 15px;">
					<span class="text-right col-4">Indirizzo:</span>
					<input class="col-7 pull-right" type="text" name="indirizzo" placeholder="$Indirizzo">
				</div>
				<div class="row" style="margin-top: 15px;">
					<span class="text-right col-4">Comune:</span>
					<input class="col-7 pull-right" type="text" name="comune" placeholder="$Comune">
				</div>
				<div class="row" style="margin-top: 15px;">
					<span class="text-right col-4">Provincia:</span>
					<input class="col-7 pull-right" type="text" name="provincia" placeholder="$Provincia">
				</div>
				<div class="col-12" style="margin-top: 30px;">
					<input class="col-3" type="submit" value="Salva" style="margin: 0 5px 0 auto;">
					<input class="col-3" type="button" onclick="history.back()" value="Annulla" style="margin: 0 auto 0 5px;">
				</div>
			</form>
			<div class="col-7 pull-right" style="margin-top: 15px;">
				<form action="TODO" >
					<div id="1" class="row">
						<span class="text-right col-2">Carburante:</span>
						<input class=" col-3 pull-right" type="text" name="carburante" placeholder="$Carburtante1" >
						<span class="text-right col-1" style="margin-right: 12px;">Prezzo:</span>
						<input class=" col-2 pull-right" type="text" name="prezzo" placeholder="$Prezzo1" >
						<label class="col-3">
							<span class="text-right col-6">Self Service</span>
							<input class="col-1 pull-right" type="checkbox" name="isSelf">
						</label>
					</div>
					<div id="2" class="row" style="margin-top: 15px;">
						<span class="text-right col-2">Carburante:</span>
						<input class=" col-3 pull-right" type="text" name="carburante" placeholder="$Carburtante2" >
						<span class="text-right col-1" style="margin-right: 12px;">Prezzo:</span>
						<input class=" col-2 pull-right" type="text" name="prezzo" placeholder="$Prezzo2" >
						<label class="col-3">
							<span class="text-right col-6">Self Service</span>
							<input class="col-1 pull-right" type="checkbox" name="isSelf">
						</label>
					</div>
					<div id="3" class="row" style="margin-top: 15px;">
						<span class="text-right col-2">Carburante:</span>
						<input class=" col-3 pull-right" type="text" name="carburante" placeholder="$Carburtante3" >
						<span class="text-right col-1" style="margin-right: 12px;">Prezzo:</span>
						<input class=" col-2 pull-right" type="text" name="prezzo" placeholder="$Prezzo3" >
						<label class="col-3">
							<span class="text-right col-6">Self Service</span>
							<input class="col-1 pull-right" type="checkbox" name="isSelf">
						</label>
					</div>
					<div id="4" class="row" style="margin-top: 15px;">
						<span class="text-right col-2">Carburante:</span>
						<input class=" col-3 pull-right" type="text" name="carburante" placeholder="$Carburtante4" >
						<span class="text-right col-1" style="margin-right: 12px;">Prezzo:</span>
						<input class=" col-2 pull-right" type="text" name="prezzo" placeholder="$Prezzo4" >
						<label class="col-3">
							<span class="text-right col-6">Self Service</span>
							<input class="col-1 pull-right" type="checkbox" name="isSelf">
						</label>
					</div>
					<div id="5" class="row" style="margin-top: 15px;">
						<span class="text-right col-2">Carburante:</span>
						<input class=" col-3 pull-right" type="text" name="carburante" placeholder="$Carburtante5" >
						<span class="text-right col-1" style="margin-right: 12px;">Prezzo:</span>
						<input class=" col-2 pull-right" type="text" name="prezzo" placeholder="$Prezzo5" >
						<label class="col-3">
							<span class="text-right col-6">Self Service</span>
							<input class="col-1 pull-right" type="checkbox" name="isSelf">
						</label>
					</div>
					<div class="row" style=" margin: 15px 0 0;">
						<input type="button" onclick="$document.getElementById('addFuel').toggleClass(hidden)" value="Modifica carburanti" style="margin: 0 auto;">
					</div>
				</form>
				<form action="TODO" >
					<div class="row" style=" margin: 30px 70px 0; border-top: 1px solid #000;">
						<input type="button" onclick="$document.getElementById('addFuel').toggleClass(hidden)" value="+ Aggiungi un tipo di carburante" style="margin: 15px auto;">
					</div>
					<div id="addFuel" class="row hidden" style="background-color: rgba(255,255,255,0.9);">
						<span class="text-right col-2">Carburante:</span>
						<input class=" col-3 pull-right" type="text" name="carburante" placeholder="$Carburtante" >
						<span class="text-right col-1" style="margin-right: 12px;">Prezzo:</span>
						<input class=" col-2 pull-right" type="text" name="prezzo" placeholder="$Prezzo" >
						<label class="col-3">
							<span class="text-right col-6">Self Service</span>
							<input class="col-1 pull-right" type="checkbox" name="isSelf">
						</label>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>