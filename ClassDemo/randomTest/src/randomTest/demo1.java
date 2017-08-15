package randomTest;

import java.util.Random;

public class demo1 {
	public static void main(String[] args) {
		// 没有给种子，用默认种子，当前时间的毫秒值
		Random r1 = new Random();
		System.out.println(r1);
		for(int x = 0; x < 10; x++) {
			System.out.println(r1.nextInt());
			System.out.println(r1.nextInt(100));
		}
		System.out.println("-------------------------");
		// 给定种子
		Random r2 = new Random(100);
		for(int x = 0; x < 10; x++) {
			System.out.println(r2.nextInt());
			System.out.println(r2.nextInt(100));
		}
	}
}
