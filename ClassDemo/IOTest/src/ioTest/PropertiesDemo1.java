package ioTest;

import java.util.Properties;
import java.util.Set;

/**
 * @author liupuyan
 * Properties 属性集合类 
 * 是一个可以和IO流相结合使用的集合类
 * 可保存在流中或从流中加载
 * 属性列表中每个键及其对应值都是一个字符串
 * 
 * 是Hashtable的子类 是一个Map集合
 */
public class PropertiesDemo1 {
	public static void main(String[] args) {
		method1();
		
		method2();
	}

	private static void method2() {
		Properties p = new Properties();
		p.setProperty("1001", "张三");
		p.setProperty("1002", "李四");
		System.out.println(p);
		Set<String> s = p.stringPropertyNames();
		for(String a: s) {
			System.out.println(a + " " + p.getProperty(a));
		}
	}

	private static void method1() {
		Properties p = new Properties();
		p.put("1002", "张三");
		p.put("1003", "李四");
		
		System.out.println(p);
		
		Set<Object> s = p.keySet();
		for(Object a: s) {
			System.out.println(a + " " + p.get(a));
		}
	}
}
