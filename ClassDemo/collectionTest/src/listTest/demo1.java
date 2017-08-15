package listTest;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public class demo1 {
	public static void main(String[] args) {
		List l1 = new ArrayList();
		l1.add("hello");
		l1.add("world");
		l1.add("hello");
		
		Iterator it = l1.iterator();
		while (it.hasNext()) {
			String string = (String)it.next();
			System.out.println(string);
		}

		// list集合特有功能
		l1.add(0, "新添加的");
		// 获取功能
		System.out.println(l1.get(0));
		System.out.println(l1.remove(0));
		System.out.println(l1.set(0, "被修改啦")); // 根据索引修改元素，返回被修饰的元素
		System.out.println("-------------------------------");
		
		// List集合特有的遍历功能
		for (int i = 0; i < l1.size(); i++) {
			String string = (String)l1.get(i);
			System.out.println(string);
		}
		System.out.println("-------------------------------");
		
		// 列表迭代器
		ListIterator li = l1.listIterator();
		while (li.hasNext()) {
			String string = (String)li.next();
			System.out.println(string);
		}
		System.out.println("-------------------------------");
		while (li.hasPrevious()) {
			String string = (String)li.previous();
			System.out.println(string);
		}
		
	}
}
