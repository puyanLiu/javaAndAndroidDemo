package arrayListTest;

import java.util.ArrayList;
import java.util.Scanner;

/**
 * @author liupuyan
 * 键盘录入多个数据，以0结束，要求在控制台输出这些数据中的最大值
 */
public class demo3 {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("以0结束");
		ArrayList<Integer> al1 = new ArrayList<>();
		int s = scanner.nextInt();
		while (s != 0) {
			al1.add(s);
			s = scanner.nextInt();
		}
		System.out.println(al1);
		
		int max = 0;
		for (int i: al1) {
			if (i > max) {
				max = i;
			}
		}
		System.out.println(max);
	}
}
