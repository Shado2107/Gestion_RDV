
<!DOCTYPE html>
<html>
<head>
	<title>Rdvregister GestionRDV</title>
	
 
<c:if test="${sessionScope.profil eq 'directeur' or sessionScope.profil eq 'chef'}">
	<jsp:include page="../../includes/header_directeur.jsp" />
</c:if>

<c:if test="${sessionScope.profil eq 'secretaire' }">
	<jsp:include page="../../includes/header.jsp" />
</c:if>
    

<div class="container">
	
	<h2 class="text-center " id="" >Formulaire d'enregistrement d'un RDV</h2>
	
	
<form id=""  method="post" action="">
  
  <div class="row d-flex ">
  
 
   <div class="col-md-4 offset-md-3">
  
   <label for="Nom"></label> 
   <div class="input-group">
     <span class="input-group-addon"><i class="fa fa-user"></i></span>
    <input type="text"  name="Nom" class="form-control" placeholder="Nom du demandeur de RDV"  autofocus> 
   </div>
   
    <label for="Prenom" > </label> 
    <div class="input-group">
    <span class="input-group-addon"><i class="fa fa-user"></i></span>
    <input type="text"  name="Prenom" class="form-control" placeholder="Prenom  du demandeur de RDV"  autofocus>
    </div>
   
     <label > </label>
     <div class="input-group" >
     <span class="input-group-addon"><i class="fa fa-map-marker"></i></span>
    	<input type="text"  name="adresse" class="form-control" placeholder="Adresse"  autofocus> 
     </div>
    
  
    
     <label > </label>
     <div class="input-group" >
     	<span class="input-group-addon"><i class="fa fa-phone"></i></span>
   		 <input type="text"  name="telephone" class="form-control" placeholder="Telephone" autofocus>  
     </div>
   
   
    <label > </label>
    <div class="input-group" >
    <span class="input-group-addon"><i class="fa fa-envelope-o"></i></span>
    <input type="text"  name="mail" class="form-control" placeholder="Mail"  autofocus>
    </div>
  	
    
     <label ></label>
 <div class="input-group">
 <span class="input-group-addon"><i class="fa fa-list"></i></span>
 <select   name="sexe"  class="form-control"  style="height: 2.75em; ">
        <option value="">Sexe</option>
        <option value ="M">Masculin</option>
        <option value ="F">Feminin</option>
    </select>
 </div>
    
  
        
  </div>

  
  <div class="col-md-4 ">
  
      <label ></label>
   <div class="input-group">
	  <span class="input-group-addon"><i class="fa fa-list"></i></span>
	 	<input type="text"  name="fonction" class="form-control" placeholder="Fonction"  autofocus>
	 </div> 


  <br>
   <div class="input-group">
             <span class="input-group-addon"><i class="fa fa-list"></i></span>
                 <select name="responsable" class="form-control">
                       <option selected="selected" value="">qui vous voulez voir</option>
                       <c:forEach var="util" items="${util}">
  							 <option value='<c:out value="${util.id}"/>' > ${util.nom }  ${util.prenom }
  							 </option>
  						</c:forEach>

                  </select>
          </div>
   
   
    
   
   
	
	
	 <label > </label>
	 <div class="input-group">
	 	<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
	 	 <input type="date"  name="daterdv" class="form-control"   autofocus>
	 </div>
	
 
   <label > </label>
	 <div class="input-group">
	 	<span class="input-group-addon"><i class="fa fa-time"></i></span>
	 	 <input type="text"  name="heurerdv" class="form-control" placeholder="Heure du rdv"  required autofocus>
	 </div>
  
  <br>
  
  <div class="input-group">
  <span class="input-group-addon"><i class="fa fa-text"></i></span>
  	<textarea class="form-control" name="motif" rows="4" col="40" placeholder="Motif du rdv...">
  	</textarea>
  </div>
  
    
    <br><br>
  </div>
  </div>
  
  <div class="d-flex justify-content-around ">
  <div class="" >
  <button  class="btn btn-md btn-success" type="submit" onclick="lancernotifenregistrement()">Valider</button>
  </div>
  <div class="">
   <button class="btn btn-md btn-danger " type="reset" >Annuler</button>
  </div>
   </div>
  
</form>
</div>
<jsp:include page="../../includes/footer.jsp" />


 </html>