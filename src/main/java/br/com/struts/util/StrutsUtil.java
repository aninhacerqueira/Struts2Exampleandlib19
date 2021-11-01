package br.com.struts.util;

public class StrutsUtil {

	public static void converterValor(Integer valor) {
		Integer num = valor;
		num.toString();
		String novoValor = "000" + num;
		System.out.println(novoValor);
		
	}
}
