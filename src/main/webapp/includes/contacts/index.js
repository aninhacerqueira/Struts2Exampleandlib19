$(document).ready(function(){
	$('#telefone').mask('(00) 00000-0000', {placeholder: '(00) 00000-0000'})
	//$('#cep').mask('00.000-000');
});

const cep = document.getElementById('cep');
cep = "/\\d{5}-\\d{3}";

	