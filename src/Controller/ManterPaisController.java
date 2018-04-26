package Controller;

import Factory.PaisService;
import Model.Pais;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/ManterPais.do","/inserir"})
public class ManterPaisController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		Pais pais;
		PaisService serv;
		
		if(action.equals("/inserir")) {
			String pNome = request.getParameter("Nome");
			String pArea = request.getParameter("Area");
			String pPop = request.getParameter("Populacao");
			//Gambiarra do zero
			pais = new Pais(0, pNome,Long.parseLong(pPop),Double.parseDouble(pArea));
			
			serv = new PaisService();
			serv.criar(pais);
			
			serv.selectPais(pais);
			//enviar para jsp
			request.setAttribute("pais", pais);
			RequestDispatcher view = request.getRequestDispatcher("Pais.jsp");
			view.forward(request, response);
		}
		
		else if(action.equals("/ManterPais.do")) {
			String pId = request.getParameter("id");
			
			pais = new Pais();
			pais.setId(Integer.parseInt(pId));
			serv = new PaisService();
			serv.selectPais(pais);
			
			request.setAttribute("pais", pais);
			RequestDispatcher view = request.getRequestDispatcher("Pais.jsp");
			view.forward(request, response);
			
		}
		
	
	
	}

}
