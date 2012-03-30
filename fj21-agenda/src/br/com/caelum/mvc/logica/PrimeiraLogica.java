package br.com.caelum.mvc.logica;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PrimeiraLogica implements Logica {

	@Override
	public void executa(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		System.out.println("Executando a logica e redirencionando...");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/primeira-logica.jsp");
		dispatcher.forward(request, response);
		
	}
	
	

}
