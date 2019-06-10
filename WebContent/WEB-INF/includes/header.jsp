<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>

 <meta charset="UTF-8">
	<link rel="icon" type="image/png" href="assets/vendor/Images/icons/favicon.ico"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<link href="assets/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link  href="assets/vendor/css/acceuil.css" rel="stylesheet">
    <link href="assets/bootstrap/fonts/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<script type="text/javascript" src="assets/bootstrap/jquery/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/vendor/js/notification.js"></script>
 </head>
 
 
 <div id="content">
 	<nav class=" navbar navbar-expand-sm navbar-dark bg-info">
 		
 		   	        	   
   <div class="row">
   	
  
     <ul class="navbar-nav mr-auto">
     <div >
 			<button type="button" id="sidebarCollapse" class=btn btn-info>
 				<i class="fa fa-bars"></i>
 				<span></span>
 			</button>
 		</div>
       
    </ul>
       	        	    
     <ul class="navbar-nav ml-auto">
     <li class="nav-item">
     	<img class="rounded-circle" src="assets/vendor/Images/user.png" height="30"/>
     	<a>welcome, </a><c:if test="${!empty sessionScope.prenom }">${ sessionScope.prenom } </c:if>
     <a class="btn btn-sm btn-danger pull-right m-t-n-xs" href="Logout">Deconnexion</a>

     	   
     </li>  
    </ul>
   
     
      </div>
 	</nav>
 	
 </div>
 
 
 <div class="wrapper">
 	<nav id="sidebar">
 		<div class="sidebar-header" >
 			<h3>GESRDV</h3>
 		</div>
 		
 		<ul class="list-unstyled components">
 	
 		<li>
 			<a href="Acceuil">Acceuil</a>
 		</li>	
 		<li class="active"> 
 			<a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Rendez-vous</a>
 			<ul class="collapse list-unstyled" id="homeSubmenu">
 				<li><a href="RDV">Enregistrer un rdv</a></li>
 				<li><a href="ListRDV">Liste des rdv</a></li>
 				
 			</ul> 
 		</li>
 		<li class=""> 
 			<a href="#Submenu2" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Utilisateurs / clients</a>
 			<ul class="collapse list-unstyled" id="Submenu2">
 				<li><a href="UserList">Liste des utilisateurs</a></li>
 				<li><a href="#">Liste des clients</a></li>
 				
 			</ul> 
 		</li>
 		<li>
 			<a href="#">Parametres</a>
 		</li>
 		
 		
 		<li>
 			<a href="#">A propos</a>
 		</li>
 		</ul>
 	</nav>
 </div>


 
 



      
 
 
 
 
 
         

