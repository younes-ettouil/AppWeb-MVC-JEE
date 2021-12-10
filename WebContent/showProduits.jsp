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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" />


<title>Produits</title>
</head>
<body>
<nav class="navbar navbar-light bg-light">
  <div class="container-fluid h4">
    <a class="navbar-brand" href="#">
    	LSI-Shop
    </a>
  </div>
</nav>
<%--  <img src="data:image/jpg;base64,${img}" width="240" height="300"/> --%>
	   <div class="text-center" style="margin-top: 20px;">
    <h3 class="">Articls</h3>
    </div>
    <div class="container mt-5">
        <table class="table" >
            <thead class="thead-dark" >
              	<tr>
						<th scope="col">#</th>
						<th scope="col">Nom</th>
						<th scope="col">Prix</th>
						<c:if test="${sessionScope.user.getTypeUtil() == 1}">
							<th scope="col">Delete</th>
							<th scope="col">Update</th>
						</c:if>
					</tr>
            </thead>
            <tbody>
        	<c:forEach items="${listProd}" var="prod">
						<tr>
							<th scope="row">${prod.getIdProd()}</th>
							<td>${prod.getNomProd()}</td>
							<td>${prod.getPrixProd()}</td>
							<c:if test="${sessionScope.user.getTypeUtil() == 1}">
								<td><a class="btn btn-danger" href="DeleteServlet?id=${prod.getIdProd()}">
										delete </a></td>
								<td><a class="btn btn-primary" href="ShowListServlet?act=22&id=${prod.getIdProd()}"> update </a></td>
							</c:if>
						</tr>
					</c:forEach>
            </tbody>
          </table>
          <c:if test="${sessionScope.user.getTypeUtil() == 1}">
			<div  style="margin-left: 0px ;margin-bottom: 10px; margin-top: 50px">
				<a href="createProduit.jsp" class="btn btn-info " > Nouveau Produit </a> 
			</div>
			
			</c:if>
			<div  style="margin-left: 0px ;margin-bottom: 80px">
				<a class="logout btn btn-info mt-4" href="home.jsp">Home</a>
			</div>
          
    </div>

	
	<%
		session.setAttribute("page", "prod");
	%>
</body>
</html>