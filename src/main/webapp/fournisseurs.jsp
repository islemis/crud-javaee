<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Fournisseurs</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
        <link href="assets/Style.css"   rel="stylesheet" >
        <style>
        
        </style>
</head>
<body>
<nav class="navbar " >
    <ul >
    
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
    <div class="container" >
        <h1>All Fournisseurs</h1>
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nom</th>
                    <th>Adresse</th>
                    <th>Actions</th>
                    <th>les produits</th>
                </tr>
            </thead>
            <tbody>
               <tbody>
    <c:forEach var="fournisseur" items="${fournisseurs}">
        <tr>
            <td>${fournisseur.id}</td>
            <td>${fournisseur.nom}</td>
            <td>${fournisseur.adresse}</td>
            <td>
             <a href="ServletFournisseur?action=showEditForm&id=${fournisseur.id}" class="btn btn-primary">Modifier</a>
              
                <a href="ServletFournisseur?action=delete&id=${fournisseur.id}" class="btn btn-danger">Delete</a>
            </td>
            <td><a href="ServletFournopro?action=list&id=${fournisseur.id}">les produits </a> </td>
        </tr>
    </c:forEach>
</tbody>
            </tbody>
        </table>
    </div>
</body>
</html>
