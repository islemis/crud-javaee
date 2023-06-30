package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Entities.Fournisseur;
import Entities.Produit;
public class FournisseurDAO {
    private Connection conn;

    public FournisseurDAO() {
        conn = SingletonConnection.getConnection();
    }
public List<Fournisseur>getAllFournisseurs() {
	// TODO Auto-generated method stub
	 List<Fournisseur> fournisseurs = new ArrayList<>();	
	 try {
		PreparedStatement ps = conn.prepareStatement("SELECT * FROM fournisseur ;");
		ResultSet set = ps.executeQuery();
		while(set.next()) {
			fournisseurs.add(new Fournisseur(set.getInt("id"),set.getString("nom"),set.getString("adresse")));
			
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return fournisseurs ;
}

    public Fournisseur getFournisseurById(int id) {
        String query = "SELECT * FROM fournisseur WHERE id = ?";
       Fournisseur fournisseur=null ;

        try {
            // Prepare the SQL statement
          PreparedStatement  statement = conn.prepareStatement(query);
            statement.setInt(1, id);

            // Execute the query
          ResultSet  resultSet = statement.executeQuery();

            // Check if a matching fournisseur was found
            if (resultSet.next()) {
                // Retrieve the fournisseur details from the result set
               int fournisseurId = resultSet.getInt("id");
                String nom = resultSet.getString("nom");
                String adresse = resultSet.getString("adresse");

              fournisseur = new Fournisseur(fournisseurId, nom, adresse);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } 

        return fournisseur;
    }
    public void deleteFournisseurById(int id) {
        String query = "DELETE FROM fournisseur WHERE id = ?";

        try {
            // Prepare the SQL statement
        	 PreparedStatement    statement = conn.prepareStatement(query);
            statement.setInt(1, id);
System.out.println(id);
            
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } 
    }
    public Fournisseur modifyFournisseur(Fournisseur fournisseur) {
    	// TODO Auto-generated method stub
    	try {
    		PreparedStatement ps = conn.prepareStatement("UPDATE fournisseur SET nom = ?, adresse = ? WHERE id = ?");
    		ps.setString(1, fournisseur.getNom());
    		ps.setString(2, fournisseur.getAdresse());
    		ps.setInt(3,  fournisseur.getId());
			System.out.println( fournisseur.getNom());
			System.out.println( fournisseur.getId());
ps.executeUpdate();
    		
    	} catch (SQLException e) {
    		e.printStackTrace();
    		System.out.println(e.getMessage());
    	}
    	return fournisseur;
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    public void addFournisseur(Fournisseur fournisseur) {
        String query = "INSERT INTO fournisseur (id,nom,adresse) VALUES (?,?,?)";
        PreparedStatement statement = null;

        try {
            // Prepare the SQL statement
            statement = conn.prepareStatement(query);
            statement.setInt(1, fournisseur.getId());
            statement.setString(2, fournisseur.getNom());
            statement.setString(3, fournisseur.getAdresse());

            // Execute the query
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close the resources
            try {
                if (statement != null) {
                    statement.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
