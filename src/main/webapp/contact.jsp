<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Contacts</title>
<s:head />
<style type="text/css">
@import url(style.css);
</style>
</head>
<body>
	<s:form action="saveOrUpdateContact">
	<s:push value="contact">
		<s:hidden name="id" />
		<s:textfield name="phoneNumber" label="Phone Number" />
		<s:submit value="Ok" />
	</s:push>
</s:form>
<s:if test="contactList.size() > 0">
	<div class="content">
	<table class="contactsTable" cellpadding="5px">
		<tr class="even">
			<th>Phone number</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<s:iterator value="contactList" status="contactStatus">
			<tr
				class="<s:if test="#contactStatus.odd == true ">odd</s:if><s:else>even</s:else>">
				<td><s:property value="phoneNumber" /></td>
				<td><s:url id="editURL" action="editContact">
					<s:param name="id" value="%{id}"></s:param>
				</s:url> <s:a href="%{editURL}">Edit</s:a></td>
				<td><s:url id="deleteURL" action="deleteContact">
					<s:param name="id" value="%{id}"></s:param>
				</s:url> <s:a href="%{deleteURL}">Delete</s:a></td>
			</tr>
		</s:iterator>
	</table>
	</div>
</s:if>
</body>
</html>