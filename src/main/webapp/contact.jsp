<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://kit.fontawesome.com/94257b76a9.js"
	crossorigin="anonymous"></script>
<title>User Contacts</title>
<s:head />
<style type="text/css">
@import url(style.css);
table {
    border-collapse: separate;
    border-spacing: 0;
}
 
table{
    border: 1px solid black;
    border-radius: 5px;
    -moz-border-radius: 5px;
    padding: 5px;
}
</style>
</head>
<body>
	<s:form action="listContactType">
		<s:select label="Tipos de contatos" headerKey="-1"
			headerValue="Selecione seu contato" list="contactTypeList"
			name="contactType" listKey="id" listValue="contactType" />
	</s:form>
	<table>
		<tr>
			<s:form action="saveOrUpdate">
				<s:textfield name="phoneNumber" id="phone_with_ddd" label="Celular" />
				<s:submit value="Ok" />
			</s:form>
		</tr>
		<tr>
			<s:form action="saveOrUpdate">
				<s:textfield name="phoneNumber" label="Email" />
				<s:submit value="Ok" />
			</s:form>
		</tr>
		<tr>
			<s:form action="saveOrUpdate" label="Endereco">
				<s:textfield name="phoneNumber" label="Endereço" placeholder="Rua" />
				<s:textfield name="phoneNumber" placeholder="Número" />
				<s:textfield name="phoneNumber" placeholder="Bairro" />
				<s:textfield name="phoneNumber" placeholder="CEP" />
				<s:submit value="Ok" />
			</s:form>
		</tr>

	</table>

</body>
</html>