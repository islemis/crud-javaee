<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<style>
    /* Navbar styles */
    .navbar {
      background-color: #55AAFF;
      padding: 10px;
    }
.container{
margin-top:3%;
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

   

    /* Responsive styles */
    @media (max-width: 768px) {
      .navbar ul {
        flex-direction: column;
      }
      .navbar li {
        margin-bottom: 10px;
        margin-right: 0;
      }
    }





</style>
    <meta charset="UTF-8">
    <title>Add Fournisseur</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
</head>
<body>
<nav class="navbar">
    <ul>
      <li><a href="add.jsp">Ajouter Produit</a></li>
      <li><a href="ServletProduit?action=list">Afficher Produit</a></li>

        <li><a href="fournisseur-add.jsp">Ajouter fournisseur</a></li>
      <li><a href="ServletFournisseur?action=list">Afficher fournisseur</a></li>
            <li><a href="loginn.html"   style="margin-left:450px;">Deconnecter</a></li>
    
    </ul>
  </nav>
    <div class="container">
        <h1>Add Fournisseur </h1>
        <form action="ServletFournisseur" method="post">
            <input type="hidden" name="action" value="add">
               <div class="mb-3">
                <label for="id" class="form-label">id:</label>
                <input type="text" class="form-control" id="id" name="id" required>
            </div>
            <div class="mb-3">
                <label for="nom" class="form-label">Nom:</label>
                <input type="text" class="form-control" id="nom" name="nom" required>
            </div>
            <div class="mb-3">
                <label for="adresse" class="form-label">Adresse:</label>
                <input type="text" class="form-control" id="adresse" name="adresse" required>
            </div>
            <button type="submit" class="btn btn-primary">Add</button>
        </form>
    </div>
</body>
</html>
