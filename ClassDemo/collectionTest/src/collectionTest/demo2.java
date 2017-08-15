package collectionTest;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public class demo2 {
	public static void main(String[] args) {
		Collection c = new ArrayList();
		Student s1 = new Student("张三", 20);
		Student s2 = new Student("李四", 19);
		Student s3 = new Student("王五", 22);
		Student s4 = new Student("赵六", 24);
		c.add(s1);
		c.add(s2);
		c.add(s3);
		c.add(s4);
		Object[] arr = c.toArray();
		for (int i = 0; i < arr.length; i++) {
			Student student = (Student)arr[i];
			System.out.println(student.getName());
		}
		
		System.out.println("------------------------------");
		// 迭代器
		// 集合的专用遍历方式
		Iterator it = c.iterator();
		while (it.hasNext()) {
			Student student = (Student)it.next();
			System.out.println(student.getName());
		}
		
		System.out.println("------------------------------");
		for (Iterator it1 = c.iterator(); it1.hasNext(); ) {
			Student student = (Student)it1.next();
			System.out.println(student.getName());
		}
	}
}
