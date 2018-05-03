package Command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Pais;
import Model.PaisService;
import command.Command;
import model.Cliente;

public class CadastrarPais implements Command{
	
	@Override
	public void executar(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
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
	
	public int busca(Pais pais, ArrayList<Pais> lista) {
		Pais p;
		for (int i = 0; i < lista.size(); i++) {
			p = lista.get(i);
			if (p.getId() == pais.getId()) {
				return i;
			}
		}
		return -1;
	}

}
