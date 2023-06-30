package Model;

import java.util.ArrayList;
import java.util.List;

import dao.GestionProduit;
import dao.IProduitDao;
import Entities.Produit;

public class ProduitModel {

	private GestionProduit service = new GestionProduit();

public Produit getProduit(String id)
{
	return service.getProduit(id);
}
	public void ajouter(Produit p) {
		service.ajouterProduit(p);
	}

	public void delete(String id) {
		service.deleteProduit(id);
	}

	public Produit modifier(Produit p) {
		service.updateProduit(p);
		return p;
	}

	public List<Produit> listerProduit() {
		return service.getAllProduits();
		
	}
}