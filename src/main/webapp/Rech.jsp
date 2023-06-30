<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Résultat de recherche</title>
</head>
<body>
  <%
    String nom_Produit = request.getParameter("nomProduit"); // Récupérer le nom  du produit depuis le formulaire
    Connection connection = null;
    PreparedStatement statement = null;
    ResultSet resultSet = null;

    try {
      // Établir la connexion à la base de données
      Class.forName("com.mysql.jdbc.Driver");
      String url = "jdbc:mysql://localhost:3306/db_mvc";
      String username = "root";
      String password = "";
      connection = DriverManager.getConnection(url, username, password);

      // Requête SQL pour rechercher le produit par nom
      String sql = "SELECT * FROM produit WHERE nom_Produit= ?";
      statement = connection.prepareStatement(sql);
      statement.setString(1,nom_Produit);
      resultSet = statement.executeQuery();

      if (resultSet.next()) {
        // Récupérer les informations du produit
        String id_Produit = resultSet.getString("id_Produit");
        double prixProduit = resultSet.getDouble("prix");

        // Afficher les informations du produit
        out.println("<h2>Résultat de recherche</h2>");
        out.println("<p>Nom du produit : " + nom_Produit + "</p>");
        out.println("<p>Prix du produit : " + prixProduit + "</p>");
      } else {
        out.println("<h2>Aucun produit trouvé</h2>");
      }
    } catch (Exception e) {
      out.println("Erreur : " + e.getMessage());
    } finally {
      // Fermer les ressources
      if (resultSet != null) resultSet.close();
      if (statement != null) statement.close();
      if (connection != null) connection.close();
    }
  %>
</body>
</html>
