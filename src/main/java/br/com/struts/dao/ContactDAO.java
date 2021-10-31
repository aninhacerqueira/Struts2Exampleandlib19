package br.com.vaannila.dao;

import java.util.List;

import br.com.vaannila.domain.Contact;

public interface ContactDAO {
	
	void saveOrUpdateContact(Contact contact);
	List<Contact> listContact();
	Contact getContactById(Long contactId);
	void deleteContact(Long contactId);
	
	
}
