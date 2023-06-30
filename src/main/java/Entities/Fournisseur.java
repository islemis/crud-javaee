package Entities;



import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;


	public class Fournisseur implements Serializable {
	    
	    private int id;
	  
		private String nom;

	    private String adresse;
	    private List<Produit> produits;

		public Fournisseur(int id, String nom, String adresse) {
			super();
			this.id = id;
			this.nom = nom;
			this.adresse = adresse;
			 this.produits = new ArrayList<>();
		}

	

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getNom() {
			return nom;
		}

		public void setNom(String nom) {
			this.nom = nom;
		}

		public String getAdresse() {
			return adresse;
		}

		public void setAdresse(String adresse) {
			this.adresse = adresse;
		}

	   
	}


