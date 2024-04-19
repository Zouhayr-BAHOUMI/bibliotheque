<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<!--  bootstrap -->
		 <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
		 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"  crossorigin="anonymous"></script>
	<!--  end bootstrap -->
	
	<!--  font awesome -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<!--  end font awesome -->
	
	

<title>Bibliotheque</title>
</head>
<body>
	<nav class="navbar navbar-light justify-content-center fs-3 mb-5" style="background-color: #4793AF;">
  			  Membre complete CRUD Application
  	</nav>
  	<div class="container">
  		<a href="" class="btn btn-dark mb-3">Ajouter une Membre</a>
  		
  		<table class="table table-hover text-center">
      <thead class="table-dark">
        <tr>
          <th scope="col">Nom</th>
          <th scope="col">Prenom</th>
          <th scope="col">Email</th>
          <th scope="col">Phone</th>
          <th scope="col">Cin</th>
          <th scope="col">Adresse</th>
          <th scope="col">Action</th>
        </tr>
      </thead>
      <tbody>
      <c:forEach items="${membres}" var="membre" >
          <tr>
            <td><c:out value="${membre.nom}"/></td>
            <td><c:out value="${membre.prenom}"/></td>
            <td><c:out value="${membre.email}"/></td>
            <td><c:out value="${membre.phone}"/></td>
            <td><c:out value="${membre.cin}"/></td>
            <td><c:out value="${membre.adresse}"/></td>
            <td>
              <a href="" ><i class="fa-solid fa-pen-to-square fs-5 me-3"></i></a>
              <a href="" ><i class="fa-solid fa-trash fs-5"></i></a>
            </td>
          </tr>
       	</c:forEach>
      </tbody>
    </table>
  <div>
  	
</body>
</html>