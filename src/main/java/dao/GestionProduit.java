package dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Entities.Produit;

public class GestionProduit implements IProduitDao{
private ArrayList<Produit> listeProduit;
private Connection conn ;
public GestionProduit() {
	listeProduit=new ArrayList<>();
 conn=SingletonConnection.getConnection();

}



@Override
public Produit ajouterProduit(Produit p) {
	try {

	PreparedStatement ps= conn.prepareStatement("INSERT INTO produit VALUES(?,?,?,?)");

	ps.setString(1, p.getId_Produit());
	ps.setString(2, p.getNom_Produit());
	ps.setFloat(3, p.getPrix());
	ps.setInt(4, p.getFournisseur());


	ps.executeUpdate();
	} catch (SQLException e)
	{
	e.printStackTrace();
}
	return p;}

@Override
public List<Produit> produitsParMC(String mc) {
	// TODO Auto-generated method stub
	List<Produit> list = new ArrayList<>();
	try {
		PreparedStatement ps = conn.prepareStatement("SELECT * FROM produit WHERE nom_Produit LIKE ?;");
		ps.setString(1,"%"+mc+"%");
		ResultSet set = ps.executeQuery();
		while(set.next()) {
			list.add(new Produit(set.getString("id_Produit"),set.getString("nom_Produit"),Float.parseFloat(set.getString("Prix")),
					set.getInt("Fournisseur")));
			
		}
		ps.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return list;
}
public List<Produit> getAllProduits() {
	// TODO Auto-generated method stub
	List<Produit> list = new ArrayList<>();
	try {
		PreparedStatement ps = conn.prepareStatement("SELECT * FROM produit;");
		ResultSet set = ps.executeQuery();
		while(set.next()) {
			list.add(new Produit(set.getString("id_Produit"),set.getString("nom_Produit"),Float.parseFloat(set.getString("Prix")),set.getInt("Fournisseur")));
			
		}
		ps.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return list;
}


@Override
public Produit getProduit(String Réf) {
Produit p = null;
	try {
		PreparedStatement ps = conn.prepareStatement("SELECT * FROM produit WHERE id_Produit=?;");
		ps.setString(1,Réf);
		ResultSet set = ps.executeQuery();
		if(set.next()) {
			p = new Produit(set.getString("id_Produit"),set.getString("nom_Produit"),Float.parseFloat(set.getString("Prix")),set.getInt("Fournisseur"));
			return p;
		}
		ps.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return p;
}

@Override
public Produit updateProduit(Produit p) {
	// TODO Auto-generated method stub
	try {
		PreparedStatement ps = conn.prepareStatement("UPDATE produit  SET nom_Produit = ?, Prix = ? , Fournisseur = ? WHERE id_Produit = ?");
		ps.setString(4, p.getId_Produit());
		ps.setString(1, p.getNom_Produit());
		ps.setFloat(2, p.getPrix());
		ps.setInt(3, p.getFournisseur());
		int update = ps.executeUpdate();
		if(update > 0)
			System.out.println("update avec succées");
		else System.out.println("failed to update");
		ps.close();
	} catch (SQLException e) {
		e.printStackTrace();
		System.out.println(e.getMessage());
	}
	return p;
}



@Override

public void deleteProduit(String Réf) {
	// TODO Auto-generated method stub
	try {
		PreparedStatement ps = conn.prepareStatement("DELETE FROM produit  WHERE id_Produit = ?");
		ps.setString(1,Réf);
		System.out.println(Réf);
	ps.executeUpdate();
	
	} catch (SQLException e) {
		e.printStackTrace();
		System.out.println(e.getMessage());
	}
}

}