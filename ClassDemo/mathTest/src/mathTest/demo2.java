package mathTest;

import java.util.Scanner;

public class demo2 {
	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		System.out.println("请输入开始数据");
		int start = scanner.nextInt();
		System.out.println("请输入结束数据");
		int end = scanner.nextInt();
		
		for(int x = 0; x < 100; x++) {
			System.out.println(getRandow(start, end));
		}
	}
	
	public static int getRandow(int start, int end) {
		int r = (int) (Math.random() * (end - start) + start);
		return r;
	}
}
