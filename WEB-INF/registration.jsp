<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Inscription - Talabati</title>

	<!-- Font Icon -->
	<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

	<!-- Main css -->
	<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Créer un compte employé</h2>

						<!-- Message d’erreur (ex: email déjà utilisé) -->
						<c:if test="${not empty EmailTmessage}">
							<p style="color:red;">${EmailTmessage}</p>
						</c:if>
						
						<c:if test="${not empty Passmessage}">
							<p style="color:red;">${Passmessage}</p>
						</c:if>
						
						<c:if test="${not empty CPassmessage}">
							<p style="color:red;">${CPassmessage}</p>
						</c:if>
                        <form method="post" action="Register" class="register-form" id="register-form">
                        <div class="form-group">
                        <label for="nom"><i class="zmdi zmdi-account material-icons-name"></i></label>
                        <input type="text" name="nom" id="nom" placeholder="Votre nom" required />
                        </div>
                        <div class="form-group">
                        <label for="prenom"><i class="zmdi zmdi-account"></i></label>
                        <input type="text" name="prenom" id="prenom" placeholder="Votre prénom" required />
                        </div>
                        <div class="form-group">
                        <label for="email"><i class="zmdi zmdi-email"></i></label>
                        <input type="email" name="email" id="email" placeholder="Votre email" required />
                        </div>
                        <div class="form-group">
                        <label for="motDePasse"><i class="zmdi zmdi-lock"></i></label>
                        <input type="password" name="motDePasse" id="motDePasse" placeholder="Mot de passe" required />
                        </div>
                        <div class="form-group">
                        <label for="repass"><i class="zmdi zmdi-lock-outline"></i></label>
                        <input type="password" name="repass" id="repass" placeholder="Répétez le mot de passe" required />
                        </div>
                        <div class="form-group form-button">
                        <input type="submit" name="signup" id="signup" class="form-submit" value="S’inscrire" />
                        </div>
                        </form>
                        
						 
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/signup-image.jpg" alt="image inscription">
						</figure>
						<a href="<c:url value='/login'/>" class="signup-image-link">Déjà inscrit  ?  Se connecter</a>
					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>
