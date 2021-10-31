package br.com.vaannila.dao;

import java.util.List;

import br.com.vaannila.domain.ContactType;

public interface ContactTypeDAO {

	void saveOrUpdateContactType(ContactType contactType);

	List<ContactType> listContactType();

	ContactType getContactTypeById(Long contactTypeId);

	void deleteContactType(Long contactTypeId);

}
