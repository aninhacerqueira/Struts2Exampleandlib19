<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="/struts-tags" prefix="s"%>
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
<script src="https://kit.fontawesome.com/441d9361e6.js"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<title>Formulario</title>

<s:head />
<style type="text/css">
@import url(style.css);
</style>
</head>
<body id="corpo">
	<h1 id="titulo">Formulário de Contato</h1>
	
	<div id="tabelaTipoContato">
		<table>
			<tr>
				<td><s:form action="listContactType">
						<s:select label="Tipos de contatos" headerKey="-1"
							headerValue="Selecione o tipo de contato" list="contactTypeList"
							name="contactType" listKey="id" listValue="contactType" />
					</s:form></td>
			</tr>
		</table>
	</div>

	<div id="tabelaTelefone">
		<table>
			<tr>
				<td><s:textfield name="tipoContato" id="telefone"
						label="Telefone" /></td>
			</tr>

		</table>
	</div>

	<div id="tabelaEmail">
		<table>
			<tr>
				<td><s:textfield name="tipoContato" label="Email" id="email" size="30"/></td>
			</tr>

		</table>
	</div>

	<div id="tabelaEndereco">
		<table>
				<tr><td><s:textfield label="Logradouro" size="30" /></td></tr>
			
				<tr id="bairro"><td><s:textfield label="Bairro" size="30" /></td></tr>
			
				<tr id="municipio"><td><s:textfield label="Municipio" size="30" /></td></tr>
			
				<tr><td><s:textfield label="UF" size="1" /></td></tr>
			
				<tr><td><s:textfield id="cep" label="Cep" size="7" /></td></tr>
			
				<tr><td><s:textfield label="País" size="20" /></td></tr>
		</table>
	</div>
		
</body>
</html>
