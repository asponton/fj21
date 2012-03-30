package br.com.caelum.jdbc.teste;

import java.util.Calendar;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaInsere {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		Contato contato = new Contato();
		contato.setNome("Andre Sponton Moura");
		contato.setEmail("asponton@gmail.com");
		contato.setEndereco("Alameda Grajaú");
		contato.setDataNascimento(Calendar.getInstance());
		
		ContatoDao contatoDao = new ContatoDao();
		contatoDao.adiciona(contato);
		
		System.out.println("gravado!");
	
	}

}
