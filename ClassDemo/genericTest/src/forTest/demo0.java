package forTest;

import java.util.ArrayList;

/**
 * @author liupuyan
 * 增强for
 * for(元素数据类型 变量:数组或者集合) {
 * 	变量就是元素
 * }
 * 
 * 注意：增强for的目标不能为null
 */
public class demo0 {
	public static void main(String[] args) {
		int[] arr = {1, 2, 3, 4, 5};
		for(int a: arr) {
			System.out.println(a);
		}
		// 反编译后
//		for(int al1 = 0; al1 < string; ++al1) {
//	         int strArr = var5[al1];
//	         System.out.println(strArr);
//	      }
		
		String[] strArr = {"张三", "李四", "王五", "赵六"};
		for(String s: strArr) {
			System.out.println(s);
		}
		
		ArrayList<String> al1 = new ArrayList<>();
		al1.add("hello");
		al1.add("world");
		al1.add("java");
		
		// 增强for是用来替代迭代器的
		for (String string : al1) {
			System.out.println(string);
			// ConcurrentModificationException
//			al1.add("java");
		}
		// 反编译后
//		Iterator var12 = var9.iterator();
//		 while(var12.hasNext()) {
//	         String var10 = (String)var12.next();
//	         System.out.println(var10);
//	      }

	}
}
