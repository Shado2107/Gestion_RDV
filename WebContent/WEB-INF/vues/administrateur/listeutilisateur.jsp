<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Liste des utilisateurs</title>

<c:if test="${sessionScope.profil eq 'directeur' or sessionScope.profil eq 'chef'}">
	<jsp:include page="../../includes/header_directeur.jsp" />
</c:if>

<c:if test="${sessionScope.profil eq 'secretaire' }">
	<jsp:include page="../../includes/header.jsp" />
	
</c:if>


</head>


<body>

<div id="main">

<div class="clear"></div><br>

<h2 class="text-center" >Liste des utilisateurs</h2>
<br>


<div class="container">
<div class="col-md-8 offset-md-3">

<div class="row d-flex justify-content-center">
<table class="table table-striped ">
  <thead>
    <tr>
      <th scope="col">Nom</th>
      <th scope="col">Prénoms</th>
      <th scope="col">Fonction</th>
      <th scope="col">Modifier / supprimer</th>     
    </tr>
    
  </thead>
  <c:forEach var="util" items="${util}">
  <tbody class="corps_tableau">
    <tr>
      <td><c:out value="${util.nom }"/></td>
      <td><c:out value="${util.prenom}"/></td> 
      <td><c:out value="${util.fonction}"/></td> 
       <td>
       <button class=" btn btn-outline-success accept" ><i class="fa fa-edit" title="Valider"></i></button>
       <button class="btn btn-outline-danger refuse" ><i class="fa fa-trash" title="Refuser"></i></button>
       </td>
           
    </tr>
  </tbody>
  </c:forEach>
</table>

</div>



</div>
</div>

</div>


</body>
<jsp:include page="../../includes/footer.jsp" />

</html>