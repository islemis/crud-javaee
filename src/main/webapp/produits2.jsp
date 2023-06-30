<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Liste des produits</title>
    <style>



.container {
	position: absolute;
	top: 20%;
	left: 50%;
	transform: translate(-50%, -50%);
}

table {
	width: 1100px;
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0,0,0,0.1);
	background-color: #B0C4DE;
	
}

th,
td {
	padding: 15px;
	background-color: #B0C4DE;
	color: white;
}

th {
	text-align: left;
}



tbody {
	tr {
		&:hover {
			background-color: #B0C4DE;
		}
	}
	td {
		position: relative;
		&:hover {
			&:before {
				content: "";
				position: absolute;
				left: 0;
				right: 0;
				top: -9999px;
				bottom: -9999px;
				background-color: #B0C4DE;
				z-index: -1;
			}
		}
	}
}
/* Style buttons */
.btn {
  background-color: #B0C4DE; /* Blue background */
  border: none; /* Remove borders */
  color: white; /* White text */
  padding: 8px 18px; /* Some padding */
  font-size: 16px; /* Set a font size */
  cursor: pointer; /* Mouse pointer on hover */
}


.bts {
  background-color: #4CAF50; /* Blue background */
  border: none; /* Remove borders */
  color: white; /* White text */
  padding: 8px 18px; /* Some padding */
  font-size: 16px; /* Set a font size */
  cursor: pointer; /* Mouse pointer on hover */
}

/* Darker background on mouse-over */
.bts:hover {
  background-color: red;
}
body, ul {
      margin: 0;
      padding: 0;
    }

    /* Navbar styles */
    .navbar {
      background-color:#55AAFF;
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

    .navbar a:hover {
      background-color: #333;
      color: #fff;
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

    
    
</head>
<body>
<!-- Navbar -->
<nav class="navbar" >
    <ul>
    
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
<!-- Navbar -->


<div>

<div class="container" style="padding:0px 0px 0px 0px  color:gray ;">
    <table  >
	<thead>
		<tr>
			<th>ID Produit </th>
			<th>Nom Produit</th>
			<th>Prix</th>
		
		</tr>
	</thead>
                <tbody>
                <c:forEach var="produit" items="${produits}">
                    <tr>
                        <td>${produit.id_Produit}</td>
                        <td>${produit.nom_Produit}</td>
                        <td>${produit.prix}</td>
                  
                    </tr>
                </c:forEach>
            </tbody>
    </table>
    </div>
    </div>
</body>
</html>
