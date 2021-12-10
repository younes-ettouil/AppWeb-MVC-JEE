<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	>

<style>
.card {
	
}

.cardContainer {
	display: flex;
	align-items: center;
	justify-content: space-between;
}
</style>

<title>Accueil</title>
</head>
<body>
<nav class="navbar navbar-light bg-light">
  <div class="container-fluid h4">
    <a class="navbar-brand" href="#">
    	LSI-Shop
    </a>
  </div>
</nav>
	<div class="container">
	
		<div class="mt-5" align="left">
			<h2>Bienvenu dans notre store Mr ${ sessionScope.user.getNomUtil() } </h2>
		</div>
		<div align="right">
			<a class="btn btn-info" style="margin-top: -70px" href="AuthentificationServlet?act=0">
				LogOut </a>
		</div>
		<div class="cardContainer">
			<div class="card mt-5" style="width: 18rem;">
				<img
					src="https://lh3.googleusercontent.com/proxy/e9fisyqxTlc3DpV2sNRJdFTbb3O1YUiYqKXVydn9KWbNhMlBlenDaHfuyLpmefVxvDbPbEMSdOubm2xhbMXlLzSUCkhQivjrlZo2TxK4ZwbnnLEg3fo-L7hYjsxR5eZPiRNtx9WijTacww"
					Width="90px" class="card-img-top">
				<div class="card-body">
					<h5 class="card-title">Mon compte</h5>
					<p class="card-text">les détailles concerne votre compte</p>
					<div align="center">
						<a href="updateAccount.jsp" class="btn btn-info">Modifier Mon
							Compte</a>
					</div>
				</div>
			</div>

			<div class="card mt-5" style="width: 18rem;">
				<img
					src="https://roowaad.com/wp-content/uploads/2020/08/%D8%AA%D9%84%D8%A8%D9%8A%D8%A9-%D8%A7%D9%84%D8%B7%D9%84%D8%A8%D9%8A%D8%A7%D8%AA.png"
					Width="90px" class="card-img-top">
				<div class="card-body">
					<h5 class="card-title">Mes Commandes</h5>
					<p class="card-text">les détailles concerne votre Commande</p>
					<div align="center">
						<a href="ShowListServlet?act=1" class="btn btn-info">modifier
							mes Commandes</a>
					</div>
				</div>
			</div>

			<div class="card mt-5" style="width: 18rem;">
				<img
					src="https://static.vecteezy.com/system/resources/previews/001/953/378/non_2x/self-service-contactless-shopping-concept-free-vector.jpg"
					Width="90px" class="card-img-top">
				<div class="card-body">
					<h5 class="card-title">Articles</h5>
					<p class="card-text">les diffèrents Produites qu'est dans notre store</p>
					<div align="center">
						<a href="ShowListServlet?act=2" class="btn btn-info">voire les
							produits</a>
					</div>
				</div>
			</div>
			<c:if test="${ sessionScope.user.getTypeUtil() == 1 }">

				<div class="card mt-5" style="width: 18rem;">
					<img
						src="data:image/png;base64,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"
						Width="90px" class="card-img-top">
					<div class="card-body">
						<h5 class="card-title">gestion des clinets</h5>
						<p class="card-text">gestion des comptes de notre clients </p>
						<div align="center">
							<a href="ShowListServlet?act=3" class="btn btn-info">voire
								les Comptes des Clients</a>
						</div>
					</div>
				</div>

			</c:if>

		</div>

		<%-- <div class="limiter">
		<div class="container-login100">
			<p class="title"> Hello ${ sessionScope.user.getNomUtil() } !</>
			<div>
				<a class="logout" href="AuthentificationServlet?act=0"> LogOut </a>
			</div>
			<div class="container">
				<br />
				<div class="element" style="width: 300px;">
					<div>
						
					</div>
					<a style="font-size: 20px;" href="updateAccount.jsp"> Mon compte </a> <br />
			    </div>
			    <div class="element" style="width: 300px;">
					<div>
						
					</div>
					<a style="font-size: 20px;" href="ShowListServlet?act=1"> Commandes </a> <br />
				</div>
				<div class="element" style="width: 300px;">
					<div>
						
					</div>
					<a style="font-size: 20px;" href="ShowListServlet?act=2"> Produits </a> <br />
				</div>
				<c:if test="${ sessionScope.user.getTypeUtil() == 1 }">
					<div class="element" style="width: 300px;">
						<div>
							
						</div>
						<a style="font-size: 20px;" href="ShowListServlet?act=3"> Utilisateurs </a> <br />
					</div>
				</c:if>
				
				
			</div>
		</div>
	</div> --%>
	</div>
</body>
</html>