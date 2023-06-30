package MyServlet;

import java.io.IOException;
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
import Model.ProduitModel;

@WebServlet("/ServletProduit")
public class ServletProduit extends HttpServlet {
    private static final long serialVersionUID = 1L;
    ProduitModel ProduitModel ;
  
    public void init() {
         ProduitModel = new ProduitModel();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        String action = request.getParameter("action");

        if (action != null) {
            switch (action) {
                case "delete":
                    deleteProduit(request, response);
                    break;
                    
                case "showEditForm":
                	 
                    showEditForm(request, response);
                    break;
                case "list":
               	 
                    listProduits(request, response);
                    break;
               
            
                    
                   
                default:
break ;            }
        }  }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action != null) {
            switch (action) {
  
                case "add":
                    addProduit(request, response);
                    break;
                case "modifier":
                    updateProduit(request, response);
                    break;
                case "list":
                 	 
                    listProduits(request, response);
                    break;
                default:
                    break ;
            }
        } 
    }
    

    private void addProduit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String idp = request.getParameter("id_Produit");
        String nomP = request.getParameter("nom_Produit");
        Float price = Float.parseFloat(request.getParameter("Prix"));
       int fournisseur = Integer.parseInt(request.getParameter("Fournisseur"));

        Produit p = new Produit(idp, nomP, price, fournisseur);

        ProduitModel.ajouter(p);


        request.getRequestDispatcher("produits.jsp").forward(request, response);
    }
    private void listProduits(HttpServletRequest request, HttpServletResponse response)
    {
List<Produit> produits=ProduitModel.listerProduit();
request.setAttribute("produits", produits);
RequestDispatcher dispatcher = request.getRequestDispatcher("produits.jsp");

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

    private void updateProduit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idp = request.getParameter("id_Produit");
        String nomP = request.getParameter("nom_Produit");
        Float price = Float.parseFloat(request.getParameter("Prix"));
       int fournisseur = Integer.parseInt(request.getParameter("Fournisseur"));

        Produit p = new Produit(idp, nomP, price, fournisseur);
        ProduitModel.modifier(p);

        response.sendRedirect("ServletProduit?action=list");
    }

 
    private void  deleteProduit(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String   id_Produit = request.getParameter("id_Produit");
        ProduitModel.delete(id_Produit);

        response.sendRedirect("ServletProduit?action=list");
    }
    
    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
    {
String id = request.getParameter("id_Produit");
Produit existingProduit =ProduitModel.getProduit(id);  
RequestDispatcher dispatcher = request.getRequestDispatcher("modifier.jsp");
request.setAttribute("existingProduit",existingProduit );
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
