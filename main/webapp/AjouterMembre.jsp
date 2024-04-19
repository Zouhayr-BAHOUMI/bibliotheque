<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bibliotheque</title>
 <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
 <link rel="stylesheet" type="text/css" href="css/main.css">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"  crossorigin="anonymous"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light">
          <div class="container">
            <a class="navbar-brand" href="#">
                <img src="images/logo.png" height="50px">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#" style="color: black; font-size: 17px;">Ajouter produit</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="view.html" style="color: black; font-size: 17px;">view list produit</a>
                </li>
              </ul>

            </div>
          </div>
        </nav>



        <h4>Ajouter Membre</h4>
        <form method="post" action="createMembre">
        <div class="container forn-dlt">
        <div class="row g-3 align-items-center">
          <div class="col-auto col-lg-4">
            <label for="nom"  class="col-form-label">Nom:</label>
          </div>
          <div class="col-auto col-lg-8">
            <input type="text" id="nom" name="nom" class="form-control" aria-describedby="passwordHelpInline">
          </div>
        </div>
        
        
        <div class="row g-3 align-items-center">
          <div class="col-auto col-lg-4">
            <label for="prenom"  class="col-form-label">Prenom:</label>
          </div>
          <div class="col-auto col-lg-8">
            <input type="text" id="prenom" name="prenom" class="form-control" aria-describedby="passwordHelpInline">
          </div>
        </div>
        
        <div class="row g-3 align-items-center">
          <div class="col-auto col-lg-4">
            <label for="email"  class="col-form-label">Email:</label>
          </div>
          <div class="col-auto col-lg-8">
            <input type="text" id="email" name="email" class="form-control" aria-describedby="passwordHelpInline">
          </div>
        </div>
        
        <div class="row g-3 align-items-center">
          <div class="col-auto col-lg-4">
            <label for="phone"  class="col-form-label">Phone:</label>
          </div>
          <div class="col-auto col-lg-8">
            <input type="text" id="phone" name="phone" class="form-control" aria-describedby="passwordHelpInline">
          </div>
        </div>
        
        <div class="row g-3 align-items-center">
          <div class="col-auto col-lg-4">
            <label for="cin"  class="col-form-label">Cin:</label>
          </div>
          <div class="col-auto col-lg-8">
            <input type="text" id="cin" name="cin" class="form-control" aria-describedby="passwordHelpInline">
          </div>
        </div>
        
        <div class="row g-3 align-items-center">
          <div class="col-auto col-lg-4">
            <label for="adresse"  class="col-form-label">adresse:</label>
          </div>
          <div class="col-auto col-lg-8">
            <input type="text" id="adresse" name="adresse" class="form-control" aria-describedby="passwordHelpInline">
          </div>
        </div>
	

      


        <div class="row g-3 align-items-centerr">
          <div class="col-auto col-lg-4">
            <label for="inputPassword6" class="col-form-label"></label>
          </div>
          <div class="col-auto col-lg-8">
           <input type="submit" value="save" name="">
          </div>
        </div>

        </div>
        </form>
</body>
</html>