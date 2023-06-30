<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style>

/*html,
.mama {
	height: 100%;
}

.mama {
	margin: 0;
	background: linear-gradient(45deg, #49a09d, #5f2c82);
	font-family: sans-serif;
	font-weight: 100;
}*/

.container {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

table {
	width: 1100px;
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0,0,0,0.1);
}

th,
td {
	padding: 15px;
	background-color: #4CAF50;
	color: white;
}

th {
	text-align: left;
}

thead {
	th {
		background-color: #FFFFE0;
	}
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

/* Darker background on mouse-over */
.btn:hover {
  background-color: green;
}
/* Style buttons */
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
      background-color: #4CAF50;
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
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Liste des produits</title>
    
    
</head>
<body>
<!-- Navbar -->
<nav class="navbar">
    <ul>
    
      <li><a href="add.jsp">Ajouter Produit</a></li>
      <li><a href="produits.jsp">Afficher Produit</a></li>
            <li><a href="fournisseur-add.jsp">Ajouter fournisseur</a></li>
      <li><a href="ServletFournisseur?action=list">Afficher fournisseur</a></li>
      <form action="Rech.jsp" method="GET">
  		<input type="text" name="nomProduit" placeholder="Rechercher un produit par nom">
  		<button type="submit">Rechercher</button>
  		
  		 
	  </form>
            <li><a href="login.html"  style="margin-left:450px;">Deconnecter</a></li>
      
    </ul>
  </nav>

</body>
</html>
