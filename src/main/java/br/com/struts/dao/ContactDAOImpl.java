package br.com.struts.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;

import br.com.struts.domain.Contact;

public class ContactDAOImpl implements ContactDAO {
	
	@SessionTarget
	Session session;
	
	@TransactionTarget
	Transaction transaction;

	/**
	 * Used to save or update a Contact.
	 */
	@Override
	public void saveOrUpdateContact(Contact contact) {
		try {
			session.saveOrUpdate(contact);
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
	}

	/**
	 * Used to delete a Contact.
	 */
	@Override
	public void deleteContact(Long contactId) {
		try {
			Contact contact = (Contact) session.get(Contact.class, contactId);
			session.delete(contact);
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		} 
	}
	
	/**
	 * Used to list all the Contacts.
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<Contact> listContact() {
		List<Contact> courses = null;
		try {
			courses = session.createQuery("from Contact").list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return courses;
	}

	/**
	 * Used to list a single Contact by Id.
	 */
	@Override
	public Contact getContactById(Long contactId) {
		Contact contact = null;
		try {
			contact = (Contact) session.get(Contact.class, contactId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return contact;
	}

}
