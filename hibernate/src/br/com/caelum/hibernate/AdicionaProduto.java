package br.com.caelum.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class AdicionaProduto {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		Produto p = new Produto();
		p.setNome("Bola Penalty");
		p.setDescricao("Bola de Capotao");
		p.setPreco(49.50);
		
		Session session = new HibernateUtil().getSession();
		
		session.beginTransaction();
		session.save(p);
		session.getTransaction().commit();
		
		System.out.println("Id do produto: " + p.getId());
		session.close();
		
	}

}
