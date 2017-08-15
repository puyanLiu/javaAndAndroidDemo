package mapTest;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 * @author liupuyan
 * HashMap嵌套HashMap
 */
public class demo3 {
	public static void main(String[] args) {
		HashMap<String, HashMap<String, String>> map = new HashMap<>();
		HashMap<String, String> hm1 = new HashMap<>();
		hm1.put("1001", "张三");
		hm1.put("1002", "李四");
		
		HashMap<String, String> hm2 = new HashMap<>();
		hm2.put("2001", "赵六");
		hm2.put("2002", "李四");
		
		map.put("一班", hm1);
		map.put("二班", hm2);
		
		Set<Map.Entry<String, HashMap<String, String>>> s1 = map.entrySet();
		for(Map.Entry<String, HashMap<String, String>> hm: s1) {
			System.out.println(hm.getKey());
			for(String key: hm.getValue().keySet()) {
				System.out.println(key + " " + hm.getValue().get(key));
			}
		}
	}
}
