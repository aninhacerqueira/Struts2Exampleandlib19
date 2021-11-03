package br.com.struts.dao;

import java.util.List;

import br.com.struts.domain.ContactType;

public interface ContactTypeDAO {

	void saveOrUpdateContactType(ContactType contactType);

	List<ContactType> listContactType();

	ContactType getContactTypeById(Long contactTypeId);

	void deleteContactType(Long contactTypeId);

}
