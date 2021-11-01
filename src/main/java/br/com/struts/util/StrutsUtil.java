package br.com.struts.util;

import org.apache.commons.lang.StringUtils;

public class StrutsUtil {

	public static String converterValor(Integer valor) {
		
		return StringUtils.leftPad(String.valueOf(valor), 11, "0");
		
	}
	
		public static String mudarPalavrasTexto(String texto) {
		
		return texto.replaceAll("(?i)ainda", "at� este momento").replaceAll("mal", "bem");
		
	}
	
	
}

