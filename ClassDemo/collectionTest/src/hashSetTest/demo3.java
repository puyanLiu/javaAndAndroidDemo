package hashSetTest;

import java.util.HashSet;

public class demo3 {
	public static void main(String[] args) {
		HashSet<Dog> hs1 = new HashSet<>();
		Dog d1 = new Dog("旺财", 10, "黑色", "男");
		Dog d2 = new Dog("大黄", 5, "黄色", "男");
		Dog d3 = new Dog("旺财", 10, "黑色", "男");
		hs1.add(d1);
		hs1.add(d2);
		hs1.add(d3);
		
		for(Dog d: hs1) {
			System.out.println(d);
		}
		
	}
}
