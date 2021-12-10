<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	>
	    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<!--===============================================================================================-->

<title>Commandes</title>
</head>
<body>
<nav class="navbar navbar-light bg-light">
  <div class="container-fluid h4">
    <a class="navbar-brand" href="home.jsp">
    	LSI-Shop
    </a>
  </div>
</nav>
<div class="text-center" style="margin-top: 20px;">
    <h3 class="">Commande de Mr ${ sessionScope.user.getNomUtil() }</h3>
    </div>
    <div class="container mt-5">
        <table class="table" >
            <thead class="thead-dark" >
           	<tr>
						<th scope="col">#</th>
						<th scope="col">Date</th>
						<th scope="col">Utilisateur</th>
						<c:if test="${ sessionScope.user.getTypeUtil() != 1 }">
							<th scope="col">Delete</th>
							<th scope="col">Update</th>
						</c:if>
						<th scope="col">Détail</th>
					</tr>
            </thead>
            <tbody>
            <c:forEach items="${ listCmd }" var="cmd">
						<tr>
							<th scope="row">${ cmd.getIdCmd() }</th>
							<td>${ cmd.getDateCmd() }</td>
							<td>${ cmd.getIdUtil() }</td>
							<c:if test="${ sessionScope.user.getTypeUtil() != 1 }">
								<td><a  class="btn btn-danger"  href="DeleteServlet?id=${ cmd.getIdCmd() }">
										delete </a></td>
								<td><a  class="btn btn-primary"  href="ShowListServlet?act=11&id=${ cmd.getIdCmd() }">
										update </a></td>
							</c:if>
								<td><a  class="btn btn-dark" href="ShowListServlet?act=4&id=${ cmd.getIdCmd() }">
										détail </a></td>
						</tr>
					</c:forEach>
            </tbody>
          </table>
          
          
    </div>
<c:if test="${ sessionScope.user.getTypeUtil() != 1 }">
	<div  style="margin-left: 245px ;margin-bottom: 10px">
			<a href="CreateServlet?act=1" class="btn btn-info" > Nouvelle Commande </a> 
	</div>
		
				
			</c:if>
			<div  style="margin-left: 245px ;margin-top:0px">
				<a class="logout btn btn-info mt-4" href="home.jsp">Home</a>
			</div>

	<%
		session.setAttribute("page", "cmd");
	%>
</body>
</html>