
<!DOCTYPE html>
<html>
<head>
	<title>Acceuil GestionRDV</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<link href="assets/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link  href="assets/vendor/css/acceuil.css" rel="stylesheet">

 </head>
 <body>
 

  <jsp:include page="../includes/header.jsp" />
    

<div id="main">
	<button class="openbtn" onclick="openNav()">Menu</button>
	<h2 class="text-center" >Formulaire d'enregistrement d'un RDV</h2>
	
<form id=""  method="post" action="">
  
  <div class="row d-flex justify-content-center">
  
  <div class="col-md-4">
  
   <label for="Nom"></label> 
    <input type="text"  name="Nom" class="form-control" placeholder="Nom du demandeur de RDV" required autofocus>
   
    <label for="Prenom" > </label> 
    <input type="text"  name="Prenom" class="form-control" placeholder="Prenom  du demandeur de RDV" required autofocus>
   
      <label > </label>
    <input type="text"  name="adresse" class="form-control" placeholder="Adresse" required autofocus>
  
     <label > </label>
    <input type="text"  name="telephone" class="form-control" placeholder="Telephone" required autofocus>
   
    <label > </label>
  	<input type="text"  name="mail" class="form-control" placeholder="Mail" required autofocus>
    <br>
    
  </div>
  
  <div class="col-md-4">
  
 
 <label ></label>
    <select  required name="sexe"  class="form-control" required style="height: 2.75em; ">
        <option value="">Sexe</option>
        <option value ="M">Masculin</option>
        <option value ="F">Feminin</option>
    </select>
	<br>
	
	  
	<input type="text"  name="fonction" class="form-control" placeholder="Fonction" required autofocus>
   <label ></label>
	
	 <label > </label>
	 <input type="date"  name="daterdv" class="form-control"  required autofocus>
   <br>
  
    <input type="text"  name="motif" class="form-control" placeholder="Motif" required autofocus>
    <label ></label>
    <br>
  </div>
  </div>
  
  <div class="d-flex justify-content-around ">
  <div class="" >
  <button  class="btn btn-md btn-success" type="submit">Valider</button>
  </div>
  <div class="">
   <button class="btn btn-md btn-danger " type="reset" >Annuler</button>
  </div>
   </div>
   
</form>


	</div>
	
	<script>
	 function openNav() {
	 document.getElementById("mySidebar").style.width="250px";
	 document.getElementById("main").style.marginLeft="250px";
	 }
	 function closeNav(){
	 document.getElementById("mySidebar").style.width="0";
	 document.getElementById("main").style.marginLeft="0";
	 }
	 </script>
 </body>
 </html>