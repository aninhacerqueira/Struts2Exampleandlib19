package br.com.struts.dao;

import java.util.List;

import br.com.struts.domain.Contact;

public interface ContactDAO {
	
	void saveOrUpdateContact(Contact contact);
	List<Contact> listContact();
	Contact getContactById(Long contactId);
	void deleteContact(Long contactId);
	
	
}
