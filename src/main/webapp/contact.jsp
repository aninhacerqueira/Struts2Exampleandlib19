<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://kit.fontawesome.com/94257b76a9.js"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<script>
	jQuery(function($) {
		$("h3.symple-toggle-trigger").click(function() {
			$(this).toggleClass("active").next().slideToggle("fast");
			return false;
		});
	});
</script>
<title>User Contacts</title>
<s:head />
<style type="text/css">
@import url(style.css);
</style>
</head>
<body>
	<div class="center">
		<h1 >Formulário de Contato</h1>

		<div >
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

		<div class="flex">
			<table>
				<tr>
					<td><s:textfield name="tipoContato" id="telefone"
							label="Telefone" /></td>
				</tr>

			</table>

			<table>
				<tr>
					<td><s:textfield name="tipoContato" label="Email" id="email" />
					</td>
				</tr>

			</table>
		</div>

		<div class="flex">
			<table>
				<tr>
					<td><s:textfield label="Logradouro" size="30" /></td>
				</tr>
				<tr>
					<td><s:textfield label="Bairro" size="30" /></td>
				</tr>
				<tr>
					<td><s:textfield label="Municipio" size="30" /></td>
				</tr>
				<tr>
					<td><s:textfield label="UF" size="1" /></td>
				</tr>
				<tr>
					<td><s:textfield label="Cep" size="6" /></td>
				</tr>
				<tr>
					<td><s:textfield label="País" size="20" /></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>