<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html>
<head>
<link href="assets/Style.css"   rel="stylesheet" >

    <meta charset="ISO-8859-1">
    <title>Liste des produits</title>
    <style>

.container{
margin-top:3% ;
margin-left:5% ;
}

table {
	width: 1100px;
	border: 1px solid white;

	box-shadow: 0 0 20px rgba(0,0,0,0.1);
	background-color: #B0C4DE;
	
}

th,
td {
	padding: 15px;
	color: white;
			
}

th {
	text-align: left;
}



/* Style buttons */
.btn {
  background-color: #55AAFF; /* Blue background */
  border: none; /* Remove borders */
  color: white; /* White text */
  padding: 8px 18px; /* Some padding */
  font-size: 16px; /* Set a font size */
  cursor: pointer; /* Mouse pointer on hover */
}





body, ul {
      margin: 0;
      padding: 0;
    }

    
</style>

    
    
</head>
<body>
<!-- Navbar -->
<nav class="navbar ">
    <ul>
    
      <li><a href="add.jsp">Ajouter Produit</a></li>
      <li><a href="ServletProduit?action=list">Afficher Produit</a></li>

            <li><a href="fournisseur-add.jsp">Ajouter fournisseur</a></li>
      <li><a href="ServletFournisseur?action=list">Afficher fournisseur</a></li>
      <form action="Rech.jsp" method="GET">
  		<input type="text" name="nomProduit" placeholder="Rechercher un produit par nom">
  		<button type="submit">Rechercher</button>
	  </form>
            <li style="margin-left:450px;"><a href="login.html">Deconnecter</a></li>
    </ul>
  </nav>



<div>

<div class="container" style="padding:0px 0px 0px 0px;">
    <table  class="ta">
	<thead>
		<tr style="border: 1px solid white;">
			<th>ID Produit </th>
			<th>Nom Produit</th>
			<th>Prix</th>
			<th>Fourniseur</th>
			<th>Détails du fournisseur</th> 
			<th></th>
			<th></th>
		</tr>
	</thead>
                <tbody>
                <c:forEach var="produit" items="${produits}">
                    <tr>
                        <td>${produit.id_Produit}</td>
                        <td>${produit.nom_Produit}</td>
                        <td>${produit.prix}</td>
                        <td>${produit.fournisseur}</td>
   <td  >
                    <a  style="text-decoration:none ; color:black ;" href="ServletFournisseur?action=getFournisseurById&id=${produit.fournisseur}" >
                    Détails du fournisseur 
                    </a>
                </td>                        <td>
                            <a  href="ServletProduit?action=showEditForm&id_Produit=${produit.id_Produit}" class="btn btn-primary">Modifier</a>
                            
                            
                        </td>
       <td> <a href="ServletProduit?action=delete&id_Produit=${produit.id_Produit}" class="btn btn-primary">supprimer</a>
                        
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
    </table>
    </div>
    </div>
</body>
</html>
