
<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Liste des utilisateurs</title>


<c:if test="${sessionScope.profil eq 'directeur' or sessionScope.profil eq 'chef'}">
	<jsp:include page="../includes/header_directeur.jsp" />
</c:if>

<c:if test="${sessionScope.profil eq 'secretaire' }">
	<jsp:include page="../includes/header.jsp" />
</c:if>

</head>


<body id="main2">

<div id="main">

<div class="clear"></div><br>

<h2 class="text-center" >Liste des Rendez-vous</h2>
<br>
<div class="container">

<div class="row d-flex justify-content-center">
<div class="col-md-10 offset-md-3">

<table class="table table-striped " >
  <thead>
    <tr>
      <th scope="col">date du rdv</th>
      <th scope="col">Motifs</th>
      <th scope="col">Responsables</th>
      <th scope="col">Etat du rdv</th>         
    </tr>
    
  </thead>
   <c:forEach var="rendezvs" items="${rendezvs}">
  <tbody class="corps_tableau">
    <tr>
      <td><c:out value="${rendezvs.daterdv}"/></td>
      <td><c:out value="${rendezvs.motif }"/></td> 
       <td><c:out value="${rendezvs.utilnom }"/> <c:out value="${rendezvs.utilprenom }"/></td> 
       <td><c:out value="${rendezvs.etatrdv }"/></td> 
           
    </tr>
  </tbody>
  </c:forEach>
</table>
 
</div>
</div>
</div>



</div>

<jsp:include page="../includes/footer.jsp" />

<script type="text/javascript">

function refresh(){
	
	var monAjax;
	if (window.XMLHttpRequest){
		monAjax = new XMLHttpRequest();
	} else if (window.ActiveXObject){
		monAjax = new ActiveXObject('Microsoft.XMLHTTP');
		
	} else {
		alert("votre navigateur nest pas adapté pour faire des requetes ajax...");
		monAjax = false;
	}
	
	monAjax.onreadystatechange = function() {
		
		if (moonAjax.readyState == 4 && monAjax == 200){
			document.getElementById("main2").innerHTML = monAjax.responseText;
		}
	};
	
	monAjax.open('GET',"ListRDV",true);
	monAjax.send(null);
}

 refresh();
 window.onload = function(){
	 setInterval('refresh()',3000)
 }


</script>


</body>


</html>