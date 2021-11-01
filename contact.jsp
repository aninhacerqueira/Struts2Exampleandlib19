<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js"
	integrity="sha512-pHVGpX7F/27yZ0ISY+VVjyULApbDlD0/X0rgGbTqCE7WFW5MezNTWG/dnhtbBuICzsd0WQPgpE4REBLv+UqChw=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript" src="includes/contacts/index.js"></script>

<title>Formulário</title>
<sx:head/>
<s:head />
<style type="text/css">
@import url(style.css);
</style>
</head>
<body>
	<h1>Formulário</h1>
	<s:form action="listContactType">

		<s:select label="Tipos de contatos" headerKey="-1"
			headerValue="Selecione o tipo de contato" list="contactTypeList"
			name="contactType" listKey="id" listValue="contactType" />
	</s:form>

	<s:form id="form" action="saveOrUpdateContactType">
		<s:div>
			<s:textfield name="tipoContato" label="Email" id="email" />
		</s:div>
		<s:submit value="ok" id="btn" />
	</s:form>


	<s:form class="" action="saveOrUpdateContactType">
		<s:div>
			<s:textfield name="tipoContato" id="telefone" label="Telefone" />
		</s:div>
	</s:form>

	<s:form action="saveOrUpdateContactType">
		<s:div>
			<s:textfield name="tipoContato" label="Endereço"
				placeholder="Logradouro" />
			<s:textfield name="tipoContato" placeholder="Bairro" />
			<s:textfield name="tipoContato" placeholder="Município" />
			<s:textfield name="tipoContato" placeholder="UF" />
			<s:textfield name="tipoContato" placeholder="Cep" id="cep" />
			<s:submit value="Buscar cep" />
		</s:div>
	</s:form>

</body>
</html>