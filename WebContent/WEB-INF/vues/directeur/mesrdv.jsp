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
         
      <th scope="col">Accepter / Reporter/ Refuser </th>     
    </tr>
    
  </thead>
   <c:forEach var="rendezvs" items="${rendezvs}">
  <tbody class="corps_tableau">
    <tr>
      <td><c:out value="${rendezvs.daterdv}"/></td>
      <td><c:out value="${rendezvs.heure}"/></td>
      <td><c:out value="${rendezvs.motif }"/></td>
      
       <td>
       <button class=" btn btn-outline-success accepter" data-id="${rendezvs.id}"><i class="fa fa-check" title="Valider"></i></button>
       <button class="btn btn-outline-warning report " data-id="${rendezvs.id}"><i class="fa fa-undo" title="Reporter"></i></button>
        <button class="btn btn-outline-danger refuse  " data-id="${rendezvs.id}"><i class="fa fa-times" title="Refuser"></i></button>       
       </td>
           
    </tr>
  </tbody>
  </c:forEach>
</table>

</div>
</div>
</div>



  <jsp:include page="../../includes/footer.jsp" />
  
  
</div>  
  
<script type="text/javascript">
$(document).ready(function(){
	$('.accepter').click(function(){
		var boutonClique = $(event.target).closest('button');
        var idE = $(boutonClique).attr('data-id');
		$.ajax({
			type:'POST',
			data:{id : idE, dec : 'val'},
			url: 'Mesrdv',
			success:function(data){
				$(boutonClique).closest("tr").fadeOut(800,
                            function() {
                                $(this).remove();
                            });
			}
		})
	})
})

</script>

<script type="text/javascript">
$(document).ready(function(){
	$('.refuse').click(function(){
		var boutonClique = $(event.target).closest('button');
        var idE = $(boutonClique).attr('data-id');
		$.ajax({
			type:'POST',
			data:{id : idE, dec : 'del'},
			url: 'Mesrdv',
			success:function(data){
				$(boutonClique).closest("tr").fadeOut(800,
                            function() {
                                $(this).remove();
                            });
			}
		})
	})
})
</script>


<script type="text/javascript">
$(document).ready(function(){
	$('.report').click(function(){
		var boutonClique = $(event.target).closest('button');
        var idE = $(boutonClique).attr('data-id');
		$.ajax({
			type:'POST',
			data:{id : idE, dec : 'rep'},
			url: 'Mesrdv',
			success:function(data){
				$(boutonClique).closest("tr").fadeOut(800,
                            function() {
                                $(this).remove();
                            });
			}
		})
	})
})
</script>
	
  
 </html>