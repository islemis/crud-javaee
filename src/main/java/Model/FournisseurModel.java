package Model;

import java.util.ArrayList;
import java.util.List;

import Entities.Fournisseur;
import dao.FournisseurDAO;


public class FournisseurModel {

	private FournisseurDAO service = new FournisseurDAO();



	public void ajouter(Fournisseur p) {
		service.addFournisseur(p);
	}
	public Fournisseur	getFournisseurById(int id) {
		return service.getFournisseurById(id);
	}


	public void delete(int id) {
		service.deleteFournisseurById(id);
	}

	public void modifier(Fournisseur p) {
		 service.modifyFournisseur(p);
		
	}

	public List<Fournisseur> listerFournisseur() {
	    return service.getAllFournisseurs();
	}

}
