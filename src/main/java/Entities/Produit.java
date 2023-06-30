package Entities;

import java.io.Serializable;

public class Produit implements Serializable {
private String id_Produit;
private String nom_Produit;
private float Prix;
private int fournisseur;



public String getId_Produit() {
	return id_Produit;
}
public void setId_Produit(String id_Produit) {
	this.id_Produit = id_Produit;
}
public String getNom_Produit() {
	return nom_Produit;
}
public int getFournisseur() {
	return fournisseur;
}
public void setFournisseur(int fournisseur) {
	this.fournisseur = fournisseur;
}
public void setNom_Produit(String nom_Produit) {
	this.nom_Produit = nom_Produit;
}
public float getPrix() {
	return Prix;
}
public void setPrix(float prix) {
	Prix = prix;
}


@Override
public String toString() {
	return "produit [id_Produit=" + id_Produit + ", nom_Produit=" + nom_Produit + ", Prix=" + Prix + ", Fournisseur="
			+ fournisseur + "]";
}
public Produit(String id_Produit, String nom_Produit, float prix, 
		int fournisseur) {
	super();
	this.id_Produit = id_Produit;
	this.nom_Produit = nom_Produit;
	this.Prix = prix;
	this.fournisseur = fournisseur;
	
}


}
