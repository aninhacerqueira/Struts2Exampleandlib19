package com.vaannila.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;
import com.vaannila.domain.ContactType;

public class ContactTypeDAOImpl implements ContactTypeDAO {

	@SessionTarget
	Session session;
	
	@TransactionTarget
	Transaction transaction;

	/**
	 * Used to save or update a user.
	 */
	@Override
	public void saveOrUpdateContactType(ContactType contactType) {
		try {
			session.saveOrUpdate(contactType);
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
	}

	/**
	 * Used to delete a user.
	 */
	@Override
	public void deleteContactType(Long contactTypeId) {
		try {
			ContactType contactType = (ContactType) session.get(ContactType.class, contactTypeId);
			session.delete(contactType);
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		} 
	}
	
	/**
	 * Used to list all the users.
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<ContactType> listContactType() {
		List<ContactType> contactTypes = null;
		try {
			contactTypes = session.createQuery("from ContactType").list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return contactTypes;
	}

	/**
	 * Used to list a single user by Id.
	 */
	@Override
	public ContactType getContactTypeById(Long contactTypeId) {
		ContactType contactType = null;
		try {
			contactType = (ContactType) session.get(ContactType.class, contactTypeId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return contactType;
	}

}
