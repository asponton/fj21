package br.com.caelum.jdbc;

import java.sql.Connection;
import java.sql.SQLException;

public class TestaConexao {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Connection conexao = new ConnectionFactory().getConnection();
		System.out.println("Conexao aberta!" + conexao);
		try {
			conexao.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}
