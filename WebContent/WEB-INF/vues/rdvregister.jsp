
<!DOCTYPE html>
<html>
<head>
	<title>Rdvregister GestionRDV</title>
	
 

  <jsp:include page="../includes/header.jsp" />
    

<div id="main">
	
	<h2 class="text-center " id="" >Formulaire d'enregistrement d'un RDV</h2>
	
<form id=""  method="post" action="">
  
  <div class="row d-flex justify-content-center">
  
  <div class="col-md-4">
  
   <label for="Nom"></label> 
   <div class="input-group">
     <span class="input-group-addon"><i class="fa fa-user"></i></span>
    <input type="text"  name="Nom" class="form-control" placeholder="Nom du demandeur de RDV" required autofocus> 
   </div>
   
    <label for="Prenom" > </label> 
    <div class="input-group">
    <span class="input-group-addon"><i class="fa fa-user"></i></span>
    <input type="text"  name="Prenom" class="form-control" placeholder="Prenom  du demandeur de RDV" required autofocus>
    </div>
   
     <label > </label>
     <div class="input-group" >
     <span class="input-group-addon"><i class="fa fa-map-marker"></i></span>
    	<input type="text"  name="adresse" class="form-control" placeholder="Adresse" required autofocus> 
     </div>
    
  
    
     <label > </label>
     <div class="input-group" >
     	<span class="input-group-addon"><i class="fa fa-phone"></i></span>
   		 <input type="text"  name="telephone" class="form-control" placeholder="Telephone" required autofocus>  
     </div>
   
   
    <label > </label>
    <div class="input-group" >
    <span class="input-group-addon"><i class="fa fa-envelope-o"></i></span>
    <input type="text"  name="mail" class="form-control" placeholder="Mail" required autofocus>
    </div>
  	
    <br>
    
         <div class="input-group">
             <span class="input-group-addon"><i class="fa fa-list"></i></span>
                 <select name="groupe" class="form-control">
                       <option selected="selected" value="">choisir qui vous voulez voir</option>
                       <c:forEach var="util" items="${util}">
  							 <option  value="  "><c:out value="${util.nom }"/></option>
  						</c:forEach>

                  </select>
          </div>
   
    
    
  </div>
  
  <div class="col-md-4">
  
 
 <label ></label>
 <div class="input-group">
 <span class="input-group-addon"><i class="fa fa-list"></i></span>
 <select  required name="sexe"  class="form-control" required style="height: 2.75em; ">
        <option value="">Sexe</option>
        <option value ="M">Masculin</option>
        <option value ="F">Feminin</option>
    </select>
 </div>
    
	<br>
	
	 <div class="input-group">
	  <span class="input-group-addon"><i class="fa fa-list"></i></span>
	 	<input type="text"  name="fonction" class="form-control" placeholder="Fonction" required autofocus>
	 </div> 

   <label ></label>
	
	
	 <label > </label>
	 <div class="input-group">
	 	<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
	 	 <input type="date"  name="daterdv" class="form-control"  required autofocus>
	 </div>
	
   <br>
  
  <div class="input-group">
  <span class="input-group-addon"><i class="fa fa-text"></i></span>
  	<textarea class="form-control" name="motif" rows="5" col="40" placeholder="entrez votre motif ici...">
  	</textarea>
  </div>
  
    
    <br><br>
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
 
  <jsp:include page="../includes/footer.jsp" />
 </html>