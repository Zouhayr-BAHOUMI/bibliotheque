package web.Membre;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import Dao.Membre.MembreDao;
import Model.Membre;

/**
 * Servlet implementation class createMembre
 */
@WebServlet(name = "createMembre", urlPatterns = {"/createMembre"})
public class createMembre extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MembreDao membredao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public createMembre() {
        super();       
        membredao = new MembreDao();
        
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		Membre membre = new Membre();
		
		membre.setNom(request.getParameter("nom"));
		membre.setPrenom(request.getParameter("prenom"));
		membre.setEmail(request.getParameter("email"));
		membre.setPhone(request.getParameter("phone"));
		membre.setCin(request.getParameter("cin"));
		membre.setAdresse(request.getParameter("adresse"));
		
		membredao.ajouterMembre(membre);
		
		response.sendRedirect("HomeMembre.jsp");
		
	}

}
