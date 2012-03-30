package br.com.caelum.jdbc.teste;

import java.text.SimpleDateFormat;
import java.util.List;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaLista {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		ContatoDao contatoDao = new ContatoDao();
		
		List<Contato> contatos = contatoDao.listContato();
		
		for (Contato contato : contatos) {
			System.out.println("Nome: " + contato.getNome());
			System.out.println("Email: " + contato.getEmail());
			System.out.println("Endereço: " + contato.getEndereco());
			System.out.println("Data de nascimento: " + new SimpleDateFormat("dd/MM/yyyy").format(contato.getDataNascimento().getTime()));
		}
		
	}

}
