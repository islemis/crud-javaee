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
import Model.FournisseurModel;

@WebServlet("/ServletFournisseur")
public class ServletFournisseur extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private FournisseurModel fournisseurModel;
    
    public void init() {
        fournisseurModel = new FournisseurModel();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	 String action = request.getParameter("action");

         if (action != null) {
             switch (action) {
                 case "delete":
                     deleteFournisseur(request, response);
                     break;
                 case "getFournisseurById":
                	 getFournisseurById(request, response);
                     break;
                     
                 case "showEditForm":
                 	showEditForm(request, response);
                     break;
                
                 case "list":
                 	listFournisseurs(request, response);
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
           
                case "add":
                    addFournisseur(request, response);
                    break;
                case "modify":
                    modifyFournisseur(request, response);
                    break;
                default:
                    break;
            }
        }
    }

    private void deleteFournisseur(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	  int id = Integer.parseInt(request.getParameter("id"));
    	  fournisseurModel.delete(id);

        response.sendRedirect("ServletFournisseur?action=list");
    }

    private void modifyFournisseur(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException { 
    	
    	  int id = Integer.parseInt(request.getParameter("id"));
    	  String nom = request.getParameter("nom");
        String adresse = request.getParameter("adresse");
System.out.println(id);
        Fournisseur fournisseur = new Fournisseur(id, nom, adresse);

        fournisseurModel.modifier(fournisseur);

        response.sendRedirect("ServletFournisseur?action=list");
    }
    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            {
    	  int id = Integer.parseInt(request.getParameter("id"));
    	  Fournisseur existingFournisseur = fournisseurModel.getFournisseurById(id)  ;        
        RequestDispatcher dispatcher = request.getRequestDispatcher("fournisseur-modify.jsp");
        request.setAttribute("fournisseur", existingFournisseur);
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
    private void listFournisseurs(HttpServletRequest request, HttpServletResponse response)
             {
        List<Fournisseur> fournisseurs=fournisseurModel.listerFournisseur();
        request.setAttribute("fournisseurs", fournisseurs);
        RequestDispatcher dispatcher = request.getRequestDispatcher("fournisseurs.jsp");
        
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
    private void getFournisseurById(HttpServletRequest request, HttpServletResponse response)
    {
    	  int id = Integer.parseInt(request.getParameter("id"));
    	  Fournisseur fournisseur=fournisseurModel.getFournisseurById(id);
request.setAttribute("fournisseur", fournisseur);
RequestDispatcher dispatcher = request.getRequestDispatcher("fourni.jsp");

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

    private void addFournisseur(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String nom = request.getParameter("nom");
        String adresse = request.getParameter("adresse");

        Fournisseur fournisseur = new Fournisseur(id, nom, adresse);
        fournisseurModel.ajouter(fournisseur);

        response.sendRedirect("ServletFournisseur?action=list");
    }
}
