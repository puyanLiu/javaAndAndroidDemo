package collectionsTest;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.TreeMap;

/**
 * @author liupuyan
 * 模拟斗地主洗牌和发牌
 * 对发牌进行排序
 */
public class demo4 {
	public static void main(String[] args) {
		HashMap<Integer, String> hm = new HashMap<>();
		String[] colors = {"♠️", "♥️", "♣️", "♦️"};
		String[] numbers = {"3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A", "2"};
		
		int count = 0;
		for(String n: numbers) {
			for(String c: colors) {
				hm.put(count++, c.concat(n));
			}
		}
		hm.put(count++, "小王");
		hm.put(count++, "大王");
		
		System.out.println(hm);
		List<Integer> l1 = new ArrayList<Integer>();
		for(Integer key: hm.keySet()) {
			l1.add(key);
		}
		Collections.shuffle(l1);
		System.out.println(l1);
		
		TreeMap<Integer, String> person1 = new TreeMap<>(new Comparator<Integer>() {

			@Override
			public int compare(Integer o1, Integer o2) {
				return o2 - o1;
			}
		});
		TreeMap<Integer, String> person2 = new TreeMap<>(new Comparator<Integer>() {

			@Override
			public int compare(Integer o1, Integer o2) {
				return o2 - o1;
			}
		});
		TreeMap<Integer, String> person3 = new TreeMap<>(new Comparator<Integer>() {

			@Override
			public int compare(Integer o1, Integer o2) {
				return o2 - o1;
			}
		});
		TreeMap<Integer, String> dipai = new TreeMap<>(new Comparator<Integer>() {

			@Override
			public int compare(Integer o1, Integer o2) {
				return o2 - o1;
			}
		});
		
		for(int i =0; i < l1.size(); i++) {
			if (i >= l1.size() - 3) {
				dipai.put(l1.get(i), hm.get(l1.get(i)));
			} else if (i % 3 == 0) {
				person1.put(l1.get(i), hm.get(l1.get(i)));
			} else if (i % 3 == 1) {
				person2.put(l1.get(i), hm.get(l1.get(i)));
			} else if (i % 3 == 2) {
				person3.put(l1.get(i), hm.get(l1.get(i)));
			}
		}
		
		for(String key: person1.values()) {
			System.out.print(key + " ");
		}
		System.out.println();
		for(String key: person2.values()) {
			System.out.print(key + " ");
		}
		System.out.println();
		for(String key: person3.values()) {
			System.out.print(key + " ");
		}
		System.out.println();
		for(String key: dipai.values()) {
			System.out.print(key + " ");
		}
	}
}
