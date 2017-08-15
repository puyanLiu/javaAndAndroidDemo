package treeMapTest;

import java.util.TreeMap;

/**
 * @author liupuyan
 * TreeMap 基于红黑树的Map接口的实现
 */
public class demo1 {
	public static void main(String[] args) {
		TreeMap<String, String> map = new TreeMap<>();
		map.put("1001", "张三");
		map.put("1002", "李四");
		map.put("1003", "王五");
		System.out.println(map);
	}
}
