package Model;

import java.sql.SQLException;
import java.util.List;

import Entities.Produit;
import dao.FournproDAO;

public class FournoproModel {
private FournproDAO service = new FournproDAO();

public List<Produit> getProduitsByFournisseur(int id)
{
	try {
		return service.getProduitsByFournisseur(id);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return null ;
}
}
