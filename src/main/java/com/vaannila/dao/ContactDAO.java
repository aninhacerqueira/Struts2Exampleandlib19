package com.vaannila.dao;

import java.util.List;
import com.vaannila.domain.Contact;

public interface ContactDAO {

	public void saveOrUpdateContact(Contact contact);
	public List<Contact> listContact();
	public Contact getContactById(Long contactId);
	public void deleteContact(Long contactId);
}
