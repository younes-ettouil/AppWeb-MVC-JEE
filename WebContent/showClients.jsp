<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" />
	<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	>
	  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">



<title>Utilisateur</title>
</head>

<body>
<nav class="navbar navbar-light bg-light">
  <div class="container-fluid h4">
    <a class="navbar-brand" href="#">
    	LSI-Shop
    </a>
  </div>
</nav>
   <div class="text-center" style="margin-top: 20px;">
    <h3 class="">Utilisateurs</h3>
    </div>
    <div class="container mt-5">
        <table class="table" >
            <thead class="thead-dark" >
             	<tr>
						<th scope="col">#</th>
						<th scope="col">Nom</th>
						<th scope="col">Adresse</th>
						<th scope="col">E-mail</th>
						<th scope="col">Delete</th>
					</tr>
            </thead>
            <tbody>
        	<c:forEach items="${ listUtil }" var="util">
						<tr>
							<th scope="row">${ util.getIdUtil() }</th>
							<td>${ util.getNomUtil() }</td>
							<td>${ util.getAdresseUtil() }</td>
							<td>${ util.getEmailUtil() }</td>
							<td><a href="DeleteServlet?id=${ util.getIdUtil() }">
										delete </a></td>
						</tr>
					</c:forEach>
            </tbody>
          </table>
          
          
    </div>
	
		<div  style="margin-left: 245px ;margin-bottom: 80px">
				<a class="logout btn btn-info mt-4" href="home.jsp">Home</a>
			</div>
	
	<%
		session.setAttribute("page", "util");
	%>
</body>
</html>