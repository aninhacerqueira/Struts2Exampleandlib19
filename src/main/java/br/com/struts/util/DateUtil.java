package br.com.struts.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtil {
	
	public static void formatarData() {
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		System.out.println(cal.getTime());
		System.out.println(sdf.format(cal.getTime()));
	}
	
	public static void converterData() {
		Date date = Calendar.getInstance().getTime();  
		DateFormat dateFormat = new SimpleDateFormat("MM-dd-yyyy hh:mm:ss");  
		String strDate = dateFormat.format(date); 
		System.out.println(strDate);
	}
}
