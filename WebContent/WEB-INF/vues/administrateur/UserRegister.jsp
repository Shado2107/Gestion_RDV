<!DOCTYPE html>
<html>
<head>
	<title> GestionRDV</title>
	<meta charset="UTF-8">
	

 </head>
 <body>
 
<c:if test="${sessionScope.profil eq 'directeur' or sessionScope.profil eq 'chef'}">
	<jsp:include page="../../includes/header_directeur.jsp" />
</c:if>

<c:if test="${sessionScope.profil eq 'secretaire' }">
	<jsp:include page="../../includes/header.jsp" />
</c:if>

<div id="main">

	<h2 class="text-center" >Formulaire d'enregistrement d'un utilisateur</h2>
	
<form id=""  method="post" action="">
    
  <div class="row d-flex justify-content-center">
  
  <div class="col-md-4">
  
   <label for="Nom"></label> 
    <input type="text"  name="Nom" class="form-control" placeholder="Nom de l'utilisateur" required autofocus>
   
    <label for="Prenom" > </label> 
    <input type="text"  name="Prenom" class="form-control" placeholder="Prenom  de l'utilisateur" required autofocus>
   
      <label > </label>
    <input type="text"  name="adresse" class="form-control" placeholder="Adresse" required autofocus>
  
     <label > </label>
    <input type="text"  name="telephone" class="form-control" placeholder="Telephone" required autofocus>
   
    <label > </label>
  	<input type="text"  name="mail" class="form-control" placeholder="Mail" required autofocus>
    <br>
    
    <label ></label>
    <select  required name="sexe"  class="form-control" required style="height: 2.75em; ">
        <option value="">Sexe</option>
        <option value ="M">Masculin</option>
        <option value ="F">Feminin</option>
    </select>
	<br>
		  
	<input type="text"  name="fonction" class="form-control" placeholder="Fonction" required autofocus>
   <label ></label>
    
  </div>
  
    
  
   <div class="col-md-4">
  	  <label > </label>
    <input type="text"  name="username" class="form-control" placeholder="username" required autofocus>
   
    <label > </label>
  	<input type="password"  name="password" class="form-control" placeholder="password" required autofocus>
    <br>
		  
	<input type="password"  name="confirmpassword" class="form-control" placeholder="confirm password" required autofocus>
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
	
 </body>
 <jsp:include page="../../includes/footer.jsp" />
 
 </html>