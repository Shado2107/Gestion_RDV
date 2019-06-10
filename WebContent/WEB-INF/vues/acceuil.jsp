
<!DOCTYPE html>
<html>
<head>
	<title>Acceuil GestionRDV</title>
	
<c:if test="${sessionScope.profil eq 'directeur' or sessionScope.profil eq 'chef'}">
	<jsp:include page="../includes/header_directeur.jsp" />
</c:if>

<c:if test="${sessionScope.profil eq 'secretaire' }">
	<jsp:include page="../includes/header.jsp" />
</c:if>

   <body onload="lancerExempleNotif()">
    

<div id="main" >
	
	<br><br><br>
<div class="card offset-md-6" style="width: 30% ;height:50%;">
  <img class="card-img-top" src="assets/vendor/Images/" alt="">
  <div class="card-body">
    <p class="card-text">BIENVENU DANS VOTRE APPLICATION DE GESTION DES RENDEZ-VOUS GESRDV</p>
  </div>
</div>
	
	
	
	
	
	
	
	

	</div>
	
<jsp:include page="../includes/footer.jsp" />	
 </body>
 
  
 </html>