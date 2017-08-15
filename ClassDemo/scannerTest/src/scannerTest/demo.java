package scannerTest;

import java.util.Scanner;

public class demo {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		// 获取数据
//		if (scanner.hasNextInt()) {
//			int x = scanner.nextInt();
//			System.out.println("x:" + x);
//		} else {
//			System.out.println("输入数据有误");
//		}

		String s1 = scanner.nextLine();
		String s2 = scanner.nextLine();
		System.out.println("s1 " + s1 + " s2 " + s2);
		
		int a = scanner.nextInt();
		int b = scanner.nextInt();
		System.out.println("a: " + a + " b: " + b);
		
	}
}
