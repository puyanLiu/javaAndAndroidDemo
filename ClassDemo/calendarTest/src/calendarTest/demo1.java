package calendarTest;

import java.util.Calendar;
import java.util.Scanner;

/**
 * @author liupuyan
 * Calendar
 */
public class demo1 {
	public static void main(String[] args) {
		// 日历由当前日期和时间初始化
		Calendar calendar = Calendar.getInstance();
		// 获取年月日
		int year = calendar.get(Calendar.YEAR);
		int month = calendar.get(Calendar.MONTH);
		int date = calendar.get(Calendar.DATE);
		System.out.println(year + "年" + (month + 1) + "月" + date + "日");
		
		// 三年前的今天
		calendar.add(Calendar.YEAR, -3);
		year = calendar.get(Calendar.YEAR);
		month = calendar.get(Calendar.MONTH);
		date = calendar.get(Calendar.DATE);
		System.out.println(year + "年" + (month + 1) + "月" + date + "日");
		
		// 五年后的十天前
		calendar.add(Calendar.YEAR, 5);
		calendar.add(Calendar.DATE, -10);
		year = calendar.get(Calendar.YEAR);
		month = calendar.get(Calendar.MONTH);
		date = calendar.get(Calendar.DATE);
		System.out.println(year + "年" + (month + 1) + "月" + date + "日");
		
		// 设置年月日
		calendar.set(1992, 10, 16);
		year = calendar.get(Calendar.YEAR);
		month = calendar.get(Calendar.MONTH);
		date = calendar.get(Calendar.DATE);
		System.out.println(year + "年" + (month + 1) + "月" + date + "日");
		
		Scanner scanner = new Scanner(System.in);
		System.out.println("请输入年份");
		int y1 = scanner.nextInt();
		Calendar calendar2 = Calendar.getInstance();
		calendar2.set(y1, 2, 1); // 当年的3月1日
		calendar2.add(Calendar.DATE, -1);
		System.out.println(calendar2.get(Calendar.DATE));
	}
}
