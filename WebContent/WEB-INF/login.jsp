<!DOCTYPE html>
<html lang="fr">
<head>
	<title>Login GestionRDV</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="assets/vendor/Images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/bootstrap/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/bootstrap/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="assets/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="assets/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendor/css/util.css">
	<link rel="stylesheet" type="text/css" href="assets/vendor/css/main.css">
	<script type="text/javascript" src="assets/vendor/js/notification.js"></script>
<!--===============================================================================================-->
</head>


<body class="body">
	

<c:if test="${ !empty form.resultat }">
		<script>
		$(document).ready(function () {
			$('.msg_error').text(" Identifiants incorrects ! ");
			$('.msg_error').show();
		});
		</script>
	</c:if>



	<div class="limiter">
	
	
		<div class="container-login100">
			<div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
			
			
			<div class="alert alert-danger msg_error" role="alert">
	 		Message d'erreur
			</div>
			
			
				<form class="login100-form validate-form flex-sb flex-w" action="Login" method="post">
					<span class="login100-form-title p-b-32">
						Connectez-vous !!!
					</span>

					<span class="txt1 p-b-11">
						Nom d'utilisateur
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Username is required">
						<input class="input100" type="text" name="username" id="username" >
						<span class="focus-input100"></span>
					</div>
					
					<span class="txt1 p-b-11">
						Mot de passe
					</span>
					<div class="wrap-input100 validate-input m-b-12" data-validate = "Password is required">
						<span class="btn-show-pass">
							<i class="fa fa-eye"></i>
						</span>
						<input class="input100" type="password" name="password" id="password" >
						<span class="focus-input100"></span>
					</div>
					
					<div class="flex-sb-m w-full p-b-48">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								Remember me
							</label>
						</div>

						<div>
							<a href="#" class="txt3">
							Mot de passe oublié.
							</a>
						</div>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn"  id="btn-aut"  type="submit">
							Se connecter
						</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="assets/bootstrap/jquery/jquery-3.3.1.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/bootstrap/bootstrap/js/popper.js"></script>
	<script src="assets/bootstrap/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendor/daterangepicker/moment.min.js"></script>
	<script src="assets/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendor/js/main.js"></script>

</body>

<script type="text/javascript">
	 $('.msg_error').hide();
	 $(document).ready(function () {		 
		    $('#btn-aut').click(function () {
		        var login = $('#username').val();
		        var pass = $('#password').val();

		        
		        if((login.trim().length==0) || (pass.trim().length==0 )){
		        	$('.msg_error').text("Veuillez remplir correctement les champs ! ");
		        	$('.msg_error').show();
		        }
		        else{
		        	$('.msg_error').hide();
		        	$('#form_aut').submit();
		        }		        
		    });

	    });
</script>



</html>    