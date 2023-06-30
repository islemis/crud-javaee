<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<link href="assets/Style.css"   rel="stylesheet" >
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <meta charset="UTF-8">
    <title>Modifier Fournisseur</title>
<style>
.container
{
margin-top:2%;
}

</style>
</head>
<body>
<nav class="navbar " style="padding-top:0px ; ">
    <ul style="margin-top:10px ; ">
    
      <li><a href="add.jsp">Ajouter Produit</a></li>
      <li><a href="ServletProduit?action=list">Afficher Produit</a></li>

            <li><a href="fournisseur-add.jsp">Ajouter fournisseur</a></li>
      <li><a href="ServletFournisseur?action=list">Afficher fournisseur</a></li>
      <form action="Rech.jsp" method="GET">
  		<input type="text" name="nomProduit" placeholder="Rechercher un produit ">
  		<button type="submit">Rechercher</button>
	  </form>
            <li style="margin-left:450px;"><a href="login.html">Deconnecter</a></li>
    </ul>
  </nav>
    <div class="container">
        <h1>Modifier Fournisseur </h1>
        <form action="ServletFournisseur" method="post">
            <input type="hidden" name="action" value="modify">
                       <input type="hidden" name="id" value="${fournisseur.id}" >
           
            <div class="mb-3">
                <label for="nom" class="form-label">Nom:</label>
                <input type="text" class="form-control" id="nom" name="nom" value="${fournisseur.nom}" required>
            </div>
            <div class="mb-3">
                <label for="adresse" class="form-label">Adresse:</label>
                <input type="text" class="form-control" id="adresse" name="adresse" value="${fournisseur.adresse}" required>
            </div>
            <button type="submit" class="btn btn-primary">Modify</button>
        </form>
    </div>
</body>
</html>
