<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<title>Agenda GestionRDV</title>
	
 
<c:if test="${sessionScope.profil eq 'directeur' or sessionScope.profil eq 'chef'}">
	<jsp:include page="../../includes/header_directeur.jsp" />
</c:if>

<c:if test="${sessionScope.profil eq 'secretaire' }">
	<jsp:include page="../../includes/header.jsp" />
</c:if>

<div id="main">
	
	<div class="clear"></div><br>

<h2 class="text-center" >Mon agenda</h2>
<br>

<div class="container">

<div class="row d-flex justify-content-center">
<div class="col-md-10 offset-md-2">

<table class="table table-striped ">
  <thead>
    <tr>
      <th scope="col">date du rdv</th>
      <th scope="col">Heure</th>  
      <th scope="col">Motifs</th> 
             
    </tr>
    
  </thead>
   <c:forEach var="agenda" items="${agenda}">
  <tbody class="corps_tableau">
    <tr>
      <td><c:out value="${agenda.daterdv}"/></td>
      <td><c:out value="${agenda.heure}"/></td>
      <td><c:out value="${agenda.motif }"/></td>
                
    </tr>
  </tbody>
  </c:forEach>
</table>

</div>
</div>
</div>
 
 
  
  
</div>  
 <jsp:include page="../../includes/footer.jsp" />
 </html>