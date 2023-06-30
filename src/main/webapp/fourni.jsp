<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
<style>
  .navbar {
      background-color: #55AAFF;
      padding: 10px;
    }
.navbar ul {
      list-style: none;
      display: flex;
      /*justify-content: space-between;*/
      align-items: center;
    }
    .navbar li {
      margin-right: 10px;
    }

    .navbar a {
      color: white;
      text-decoration: none;
      padding: 8px 12px;
      border-radius: 4px;
    }
</style>
  

</head>
<body>
<nav class="navbar ">
    <ul>
    
      <li><a href="add.jsp">Ajouter Produit</a></li>
      <li><a href="ServletProduit?action=list">Afficher Produit</a></li>
     
            <li><a href="fournisseur-add.jsp">Ajouter fournisseur</a></li>
      <li><a href="ServletFournisseur?action=list">Afficher fournisseur</a></li>
     
       <li style="margin-left:450px;"><a href="login.html">Deconnecter</a></li>
    </ul>
  </nav>
<div class="container">
        <h1> Details Fournisseur</h1>
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nom</th>
                    <th>Adresse</th>                </tr>
            </thead>
            <tbody>
               <tbody>
   
        <tr>
            <td>${fournisseur.id}</td>
            <td>${fournisseur.nom}</td>
            <td>${fournisseur.adresse}</td>
            <td>
             
              
            </td>
        </tr>
</tbody>
            </tbody>
        </table>
    </div>
</body>
</html>