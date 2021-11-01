$(document).ready(function() {
	$('#telefone').mask('(00) 00000-0000', { placeholder: '(00) 00000-0000' });
	$('#cep').mask('00.000-000');
});



function callAjax() {
	$.ajax({
		type: "POST", cache: false, async: true, dataType: 'json', url: "listContactType.do",
		success: function(j) {
			alert("Sucesso!")
		},
		error: function(XMLHttpRequest, textStatus, errorThrown) {
			alert("Deu ruim!");
		}
	});

}