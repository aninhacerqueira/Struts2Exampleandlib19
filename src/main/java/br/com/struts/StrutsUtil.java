package br.com.struts;

import org.apache.commons.lang.StringUtils;

public class StrutsUtil {
	public static void clearCaracter(String value) {

		String valor = value;

		String valorFormatado = valor.replaceAll("\\D", "");
		System.out.println(valorFormatado);

	}
	public static String acrescentarZeroEsquerda(Long cpf) {

		return StringUtils.leftPad(String.valueOf(cpf), 11, "0");

	}
}
