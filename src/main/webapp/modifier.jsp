<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>
<html>
<head>
<link href="assets/Style.css"   rel="stylesheet" >

<style type="text/css">
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}


form {
  background: rgba(256,256,256,0.4);
  color: #666;
  min-width: 300px;
  padding: 20px;
  box-shadow: 0 0 1px 1px rgba(0,0,0,0.3);
 
}

h2 {
  padding-bottom: 50px;
  text-align: center;
}

.input-wrap {
  width: 100%;
  position: relative;
}

label {
  padding: 15px;
}

input {
  display: block;
  width: 100%;
  height: 40px;
  margin: 5px auto 15px;
  padding: 15px;
  border: #666 solid 1px;
  border-radius: 20px;
  outline: none;
  background: rgba(256,256,256,0.8);
  font-size: 14px;
}




input[type="submit"] {
  font-size: 16px;
  margin-top: 50px;
  cursor: pointer;
  color: #666;
  background: white;
  transition: color 0.4s, background 0.4s;
  line-height: 0px;
}
input[type="submit"]:hover {
  background: #666;
  color: white;
}
</style>

<meta charset="ISO-8859-1">
<title>modifier</title>

</head>
<body>
<div >       

<nav class="navbar ">
    <ul>
    
      <li><a href="add.jsp">Ajouter Produit</a></li>
      <li><a href="ServletProduit?action=list">Afficher Produit</a></li>
      <li><a href="login.html">Deconnecter</a></li>
            <li><a href="fournisseur-add.jsp">Ajouter fournisseur</a></li>
      <li><a href="ServletFournisseur?action=list">Afficher fournisseur</a></li>
     
      
    </ul>
  </nav>


<form action="ServletProduit" method="post"><br>

 <input type="hidden" name="action" value="modifier">
 <input type="hidden" placeholder="ID_P" name="id_Produit" value="${existingProduit.id_Produit}" >
Nom_P :<input type="text" placeholder="Nom_P" name="nom_Produit" value="${existingProduit.nom_Produit}"><br>
Prix :<input type="text" placeholder="Prix" name="Prix" value="${existingProduit.prix}"><br>
Fournisseur :<input type="text" placeholder="Fournisseur" name="Fournisseur" value="${existingProduit.fournisseur}">
<button type="submit" value="Modifier " class="btn btn-primary" > Modifier </button>

</form>
</div>
</body>
</html>                   
























