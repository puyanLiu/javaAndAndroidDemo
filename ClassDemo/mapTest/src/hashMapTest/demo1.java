package hashMapTest;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class demo1 {
	public static void main(String[] args) {
		HashMap<String, String> map = new HashMap<>();
		map.put("1001", "张三");
		map.put("1002", "李四");
		System.out.println(map);
		Set<Map.Entry<String, String>> set = map.entrySet();
		System.out.println(set);
		
		HashMap<Integer, String> map2 = new HashMap<>();
		map2.put(27, "张三");
		map2.put(002, "李四");
		// 0 开头八进制
//		map.put(008, "王五'");
		System.out.println(map2);
	}
}
