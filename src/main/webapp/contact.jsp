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
	<s:form action="listContactType">
		<s:select label="Tipos de contatos" headerKey="-1"
			headerValue="Selecione seu contato" list="contactTypeList"
			name="contactType" listKey="id" listValue="contactType" />
	</s:form>
	<div>
		<s:form action="saveOrUpdate">
			<s:textfield name="phoneNumber" id="phone_with_ddd" label="Celular" />
			<s:submit value="Ok" />
		</s:form>
	</div>
	<div>
		<s:form action="saveOrUpdate">
			<s:textfield name="phoneNumber" label="Email" />
			<s:submit value="Ok" />
		</s:form>
	</div>
	<div>
		<s:form action="saveOrUpdate">
			<s:textfield name="phoneNumber" label="Adress" />
			<s:submit value="Ok" />
		</s:form>
	</div>
</body>
</html>
