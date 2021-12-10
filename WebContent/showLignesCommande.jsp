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



<title>Ligne De Commande</title>
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
    <h3 class="">Articls</h3>
    </div>
    <div class="container mt-5">
        <table class="table" >
            <thead class="thead-dark" >
           <tr>
						<th scope="col">#</th>
						<th scope="col">Quantité</th>
						<th scope="col">Id Commande</th>
						<th scope="col">Id Produit</th>
						<c:if test="${ sessionScope.user.getTypeUtil() != 1 }">
							<th scope="col">Delete</th>
							<th scope="col">Update</th>
						</c:if>
					</tr>
            </thead>
            <tbody>
        		<c:forEach items="${ listLigCmd }" var="lcmd">
						<tr>
							<th scope="row">${ lcmd.getIdLigneCmd() }</th>
							<td>${ lcmd.getQuantite() }</td>
							<td>${ lcmd.getIdCmd() }</td>
							<td>${ lcmd.getIdProd() }</td>
							<c:if test="${ sessionScope.user.getTypeUtil() != 1 }">
								<td><a  class="btn btn-danger"  href="DeleteServlet?id=${ lcmd.getIdLigneCmd() }"> delete
								</a></td>
								<td><a class="btn btn-primary" href="ShowListServlet?act=44&id=${ lcmd.getIdLigneCmd() }"> update
								</a></td>
							</c:if>
						</tr>
					</c:forEach>
            </tbody>
          </table>
          
          <div>
				<c:if test="${ sessionScope.user.getTypeUtil() != 1 }">
				<div style="margin-left: 0px ; margin-top: 20px;">
					<a class="logout btn btn-info mt-4"   href="ShowListServlet?act=444" > Nouvelle Ligne Commande  </a> <br/>
				</div>
				</c:if>
				
				<div style="margin-left: 0px ; margin-top: 20px;">
					<a class="logout btn btn-info mt-4" href="ShowListServlet?act=1" >Retour</a>
				</div>
			</div>
			<div  style="margin-left: 0px ;margin-bottom: 80px">
				<a class="logout btn btn-info mt-4" href="home.jsp">Home</a>
			</div>
    </div>


	
	<%
		session.setAttribute("page", "lcmd");
	%>
</body>
</html>