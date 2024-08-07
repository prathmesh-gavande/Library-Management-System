package com.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.configuration.HibernateConfiguration;
import com.entity.Book;

public class Bookdao {
	
	public static boolean deleteBook(int id) {
		
		Transaction transaction = null;
		Session session = HibernateConfiguration.getSessionFactory().openSession();
		transaction = session.beginTransaction();
		
		Book book= session.get(Book.class,id);
		session.delete(book);
		transaction.commit();
		session.close();
		
		return false;
	}
	
	public static boolean update(Book book) {

		Transaction transaction = null;
		Session session = HibernateConfiguration.getSessionFactory().openSession();
		transaction = session.beginTransaction();

		session.update(book);
		transaction.commit();
		session.close();
		return false;
	}

	public static boolean save(Book book) {
		Transaction transaction = null;
		Session session = HibernateConfiguration.getSessionFactory().openSession();
		transaction = session.beginTransaction();

		session.save(book);
		transaction.commit();
		session.close();

		return false;

	}

}
