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
 

       <nav class="nav justify-content-end" style="background-color: silver; ">  
       		<a class="nav-link">Acceuil</a>
       		<a class="nav-link">Acceuil</a>
       		<a class="nav-link">Acceuil</a>
       		<a class="nav-link">Acceuil</a>
       </nav> 
         

 <div id="mySidebar" class="sidebar">
	<a href="javascript:void(0)" class="closebtn"  onclick="closeNav()">x</a>
		<a href="#">Acceuil </a>
		<a href="#">DashBoard</a>
		<a href="#">Products </a>
		<a href="#">Settings </a>
		<a href="#">Chats</a>
		<a href="#">About </a>
		
</div>
<div id="main">
	<button class="openbtn" onclick="openNav()">Menu</button>
	<h2 class="text-center" >Formulaire d'enregistrement d'un RDV</h2>
	
<form id="rdvregister" class="" method="post" action="">
   
    <label for="Nom">Nom du demandeur du rdv: </label> 
    <input type="text"  name="Nom" class="form-control" placeholder="Nom du demandeur de RDV" required autofocus>
   
    <label for="Prenom" >Prenom du demandeur de rdv: </label> 
    <input type="text"  name="Prenom" class="form-control" placeholder="Prenom  du demandeur de RDV" required autofocus>
   
      <label >Adresse: </label>
    <input type="text"  name="adresse" class="form-control" placeholder="Adresse" required autofocus>
  
     <label >Téléphone: </label>
    <input type="text"  name="telephone" class="form-control" placeholder="Telephone" required autofocus>
   
  	<label >Mail: </label>
  	<input type="text"  name="mail" class="form-control" placeholder="Mail" required autofocus>
    

    <select  required name="sexe"  class="form-control" required style="height: 2.75em; ">
        <option value="">Sexe</option>
        <option value ="M">Masculin</option>
        <option value ="F">Feminin</option>
    </select>
	<br>
	
	 <label >Fonction: </label>
	<input type="text"  name="fonction" class="form-control" placeholder="Fonction" required autofocus>
   
	
	 <label >Date du rdv: </label>
	 <input type="date"  name="daterdv" class="form-control"  required autofocus>
   
  
    <input type="text"  name="motif" class="form-control" placeholder="Motif" required autofocus>
    <label ></label>
    <br>
    <button  style=" text-align: center; color: #f1f2f8" class="btn btn-md btn-success" type="submit">Valider</button>
    <button style="margin-bottom:0px; margin-left:250px; background-color:#ff3c3d; text-align: center; color: #f1f2f8" class="btn btn-md " type="reset" >Annuler</button>
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