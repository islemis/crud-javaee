<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <!-- css bootstrap !-->
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />


<link
  rel="stylesheet"
  type="text/css"
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
/>
   
<style >
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #43A047;
}
body, ul {
      margin: 0;
      padding: 0;
    }
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
  background-color: #55AAFF; /* Blue background */
  border: none; /* Remove borders */
  color: white; /* White text */
  padding: 8px 18px; /* Some padding */
  font-size: 16px; /* Set a font size */
  cursor: pointer; /* Mouse pointer on hover */
}

/* Darker background on mouse-over */

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
    }
</style>

<meta charset="ISO-8859-1">
<title>Ajouter Produit</title>

</head>
<body>

<!-- Navbar -->
<!-- Navbar -->
<nav class="navbar">
    <ul>
      <li><a href="add.jsp">Ajouter Produit</a></li>
      <li><a href="ServletProduit?action=list">Afficher Produit</a></li>
    
        <li><a href="fournisseur-add.jsp">Ajouter fournisseur</a></li>
      <li><a href="ServletFournisseur?action=list">Afficher fournisseur</a></li>
        <li style="margin-left:450px;"><a href="loginn.html">Deconnecter</a></li>
    </ul>
  </nav>

<div class="container">
        <h1>Add Produit </h1>

<!-- Navbar -->
<form action="ServletProduit" method="post"><br>

   <input type="hidden" name="action" value="add">
     <div class="mb-3">
                <label for="ID_P" class="form-label">ID_P:</label>
<input class="form-control" type="text" placeholder="ID_P" name="id_Produit"> </div><br>
   <div class="mb-3">
                <label for="Nom_P" class="form-label">Nom_P :</label>
<input  class="form-control"type="text" placeholder="Nom_P" name="nom_Produit"></div><br>

<div class="mb-3">
<label for="Prix" class="form-label">Prix</label>
<input class="form-control" type="text" placeholder="Prix" name="Prix">
</div>
<br>
   <div class="mb-3">
                <label for="Prix" class="form-label">Fournisseur :</label>
<input type="text" class="form-control"  placeholder="Fournisseur" name="Fournisseur">
</div><br>
            <button type="submit"  class="btn btn-primary">Add</button>

</form>
</div>




</body>
</html>