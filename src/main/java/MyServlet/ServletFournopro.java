
package MyServlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.Fournisseur;
import Entities.Produit;
import Model.FournisseurModel;
import Model.FournoproModel;

@WebServlet("/ServletFournopro")
public class ServletFournopro extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private FournoproModel FournoproModel;
    
    public void init() {
    	FournoproModel = new FournoproModel();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	 String action = request.getParameter("action");

         if (action != null) {
             switch (action) {
             case "list":
             	listProduits(request, response);
                 break;
                 default:
                     break;
             }
         }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action != null) {
            switch (action) {
           
               
                default:
                    break;
            }
        }
    }

    
    private void listProduits(HttpServletRequest request, HttpServletResponse response)
             {
    	int id=Integer.parseInt(request.getParameter("id")) ;
    	System.out.println("here");
        RequestDispatcher dispatcher = request.getRequestDispatcher("produits2.jsp");

        List<Produit> produits=FournoproModel.getProduitsByFournisseur(id);

        request.setAttribute("produits", produits);
        
        try {
			dispatcher.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    
}
