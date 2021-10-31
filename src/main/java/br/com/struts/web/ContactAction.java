package br.com.vaannila.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import br.com.vaannila.dao.ContactDAO;
import br.com.vaannila.dao.ContactDAOImpl;
import br.com.vaannila.dao.ContactTypeDAO;
import br.com.vaannila.dao.ContactTypeDAOImpl;
import br.com.vaannila.domain.Contact;
import br.com.vaannila.domain.ContactType;

public class ContactAction extends ActionSupport implements ModelDriven<ContactType> {
	
	private static final long serialVersionUID = -6659925652584240539L;
	
	private ContactType contactType = new ContactType();
	private List<Contact> contactList = new ArrayList<Contact>();
	private List<ContactType> contactTypeList = new ArrayList<ContactType>();
	private ContactDAO contactDAO = new ContactDAOImpl();
	private ContactTypeDAO contactTypeDAO = new ContactTypeDAOImpl();
	
	@Override
	public ContactType getModel() {
		// TODO Auto-generated method stub
		return contactType;
	}
	
	
	public String saveOrUpdate()
	{	
		//contactDAO.saveOrUpdateContact(contactType);
		return SUCCESS;
	}
	
	public String list()
	{
		contactList = contactDAO.listContact();
		return SUCCESS;
	}
	

	public String delete()
	{
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		contactDAO.deleteContact(Long.parseLong(request.getParameter("id")));
		return SUCCESS;
	}
	
	public String edit()
	{
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		//contactType = contactDAO.getContactById(Long.parseLong(request.getParameter("id")));
		return SUCCESS;
	}
	
	public String searchCEP() {
		//TODO Desenvolver logica para o site correios
		return SUCCESS;
	}
	
	public Contact getContact() {
		return contact;
	}

	public void setContact(Contact contact) {
		//this.contactType = contact;
	}

	public List<Contact> getContactList() {
		return contactList;
	}

	public void setContactList(List<Contact> contactList) {
		this.contactList = contactList;
	}

	public String listType()
	{
		contactTypeList = contactTypeDAO.listContactType();
		return SUCCESS;
	}
	public List<ContactType> getContactTypeList() {
		return contactTypeList;
	}

	public void setContactTypeList(List<ContactType> contactTypeList) {
		this.contactTypeList = contactTypeList;
	}

	public ContactType getContactType() {
		return contactType;
	}

	public void setContactType(ContactType contactType) {
		this.contactType = contactType;
	}
	
	
}
