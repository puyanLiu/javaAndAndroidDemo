package dateTest;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author liupuyan
 * 日期和字符串互转类
 */
public class DateUtil {
	private DateUtil() {
	}
	
	/** 
	 * 日期转字符串
	 * @param d
	 * @param format
	 * @return
	 */
	public static String dateToString(Date d, String format) {
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		return sdf.format(d);
	}
	
	/** 
	 * 字符串转日期
	 * @param d
	 * @param format
	 * @return
	 * @throws ParseException 
	 */
	public static Date stringToDate(String s, String format) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		return sdf.parse(s);
	}
}
