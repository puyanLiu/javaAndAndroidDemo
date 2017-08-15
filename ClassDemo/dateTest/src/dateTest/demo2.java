package dateTest;

import java.text.ParseException;
import java.util.Date;
import java.util.Scanner;

public class demo2 {
	public static void main(String[] args) throws ParseException {
		Scanner scanner = new Scanner(System.in);
		System.out.println("请输入你的出生年月日：");
		String s = scanner.nextLine();
		Date date = DateUtil.stringToDate(s, "yyyy-MM-dd");
		
		// 通过该日期获得毫秒值
		long dTime = date.getTime();
		
		// 计算当前时间的毫秒值
		long sTime = System.currentTimeMillis();
		
		long d = sTime - dTime;
		// 毫秒数转换天数
		long day = d / 1000 / 60 / 60 / 24;
		System.out.println(day);
	}
}
