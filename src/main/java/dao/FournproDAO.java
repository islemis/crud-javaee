package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Entities.Produit;

public class FournproDAO {
	private Connection conn ;
	public FournproDAO()
	{
		 conn=SingletonConnection.getConnection();

	}
	public List<Produit> getProduitsByFournisseur(int id) throws SQLException {
	    List<Produit> produits = new ArrayList<>();
	    String sql = "SELECT * FROM fournpro  JOIN Produit  ON fournpro.id_porduit = Produit.id_Produit  WHERE id = ?";
	    
		PreparedStatement statement = conn.prepareStatement(sql);
	    statement.setInt(1, id);
	    ResultSet resultSet = statement.executeQuery();
	    while (resultSet.next()) {
	        String id_Produit = resultSet.getString("id_Produit");
	        String nom_Produit = resultSet.getString("nom_Produit");
	        float Prix = resultSet.getFloat("Prix");

	        int id_fournisseur = resultSet.getInt("id");
	        Produit produit = new Produit(id_Produit,nom_Produit,Prix,id_fournisseur);
	        produits.add(produit);
	    }
	    return produits;
	}

}
