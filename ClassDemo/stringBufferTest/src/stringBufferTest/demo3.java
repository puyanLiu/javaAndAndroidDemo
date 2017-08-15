package stringBufferTest;

import java.util.Scanner;

/**
 * @author liupuyan
 * 判断字符串是否对称
 */
public class demo3 {

	/**
	 * @param args
	 * 
	 * String内容不可变的
	 * StringBuffer、StringBuilder内容可变的
	 * StringBuffer同步的，数据安全，效率低
	 * StringBuilder不同步的，数据不安全，效率高
	 */
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("输入字符串");
		String string = scanner.nextLine();
		StringBuffer sBuffer = new StringBuffer(string);
		sBuffer.reverse();
		if (string.equals(sBuffer.toString())) {
			System.out.println("对称字符串");
		}  else {
			System.out.println("非对称字符串");
		}
	}
}
