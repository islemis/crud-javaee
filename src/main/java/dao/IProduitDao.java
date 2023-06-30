package dao;

import java.util.List;

import Entities.Produit;
import Model.ProduitModel;

public interface IProduitDao {
	public Produit  ajouterProduit(Produit p);
	public  List<Produit>  produitsParMC(String  mc);
	public List<Produit> getAllProduits();
	public Produit getProduit(String Réf); 
	public  Produit  updateProduit(Produit  p); 
	public  void  deleteProduit(String Réf);

}
