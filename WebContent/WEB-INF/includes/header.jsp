 <meta charset="UTF-8">
	<link rel="icon" type="image/png" href="assets/vendor/Images/icons/favicon.ico"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<link href="assets/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link  href="assets/vendor/css/acceuil.css" rel="stylesheet">
    <link href="assets/bootstrap/fonts/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">

 </head>
 
 
 
 <div id="mySidebar" class="sidebar">
	<a href="javascript:void(0)" class="closebtn"  onclick="closeNav()">x</a>
	<h3>GesRDV</h3>
	<div class="clear"></div>

	<span><a class="fa fa-user fa-lg" href="#"> Utilisateurs</a></span>
	<span><a class="fa fa-bullhorn" href="#"> Rdv</a></span>
	<span><a class="fa fa-cog" href="#"> Paramètres</a></span>
	
 </div> 
        
         
   <nav class="navbar navbar-expand-sm navbar-dark bg-info">  
   
   <div class="row">
   	
     <ul class="navbar-nav mr-auto">
     <li class="nav-item">
     	 <a class="navbar-minimalize minimalize-styl-2 btn btn-light  fa fa-bars" onclick="openNav()" > Menu </a>  
     </li> 
       
    </ul>
       	  
       	    
     <ul class="navbar-nav ml-auto">
     <li class="nav-item">
     	<img class="rounded-circle" src="assets/vendor/Images/user.png" height="30"/>
     	<a>welcome, </a><c:if test="${ !empty sessionScope.nom }">${ sessionScope.nom } </c:if>
     	<a class="fa fa-envelope-o "></a>
     	<a href="Login" class="btn btn-danger"><span class="fa fa-power-off"></span> Deconnexion</a>
     
     </li>  
    </ul>
   
     
      </div>
    </nav> 
         

