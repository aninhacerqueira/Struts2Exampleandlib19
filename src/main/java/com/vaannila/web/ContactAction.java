package com.vaannila.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.vaannila.dao.ContactDAO;
import com.vaannila.dao.ContactDAOImpl;
import com.vaannila.domain.Contact;

public class ContactAction extends ActionSupport implements ModelDriven<Contact> {
	
	private static final long serialVersionUID = -6659925652584240539L;
	
	private Contact contact = new Contact();
	private List<Contact> contactList = new ArrayList<Contact>();
	private ContactDAO contactDAO = new ContactDAOImpl();

	@Override
	public Contact getModel() {
		// TODO Auto-generated method stub
		return contact;
	}
	
	public String saveOrUpdate()
	{	
		contactDAO.saveOrUpdateContact(contact);
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
		contact = contactDAO.getContactById(Long.parseLong(request.getParameter("id")));
		return SUCCESS;
	}

	public Contact getContact() {
		return contact;
	}

	public void setContact(Contact contact) {
		this.contact = contact;
	}

	public List<Contact> getContactList() {
		return contactList;
	}

	public void setContactList(List<Contact> contactList) {
		this.contactList = contactList;
	}

	
}
