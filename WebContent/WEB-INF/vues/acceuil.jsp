
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

  
    

<div id="main">
	
	
	
	
	
	
	
	
	
	
	

	</div>
	
<jsp:include page="../includes/footer.jsp" />	
 </body>
 
  
 </html>