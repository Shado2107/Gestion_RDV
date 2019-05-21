<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Liste des utilisateurs</title>
	
 <jsp:include page="../includes/header.jsp" />
</head>


<body>

<div id="main">

<div class="clear"></div><br>

<h2 class="text-center" >Liste des utilisateurs</h2>
<br>
<div class="container">
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
           
    </tr>
  </tbody>
  </c:forEach>
</table>

</div>



</div>

<jsp:include page="../includes/footer.jsp" />
</body>

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
</html>