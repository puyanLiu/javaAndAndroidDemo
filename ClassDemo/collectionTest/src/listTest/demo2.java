package listTest;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class demo2 {
	public static void main(String[] args) {
		List l1 = new ArrayList();
		Student s1 = new Student("张三", 20);
		Student s2 = new Student("李四", 19);
		Student s3 = new Student("王五", 22);
		Student s4 = new Student("赵六", 24);
		l1.add(s1);
		l1.add(s2);
		l1.add(s3);
		l1.add(s4);
		
		Iterator it = l1.iterator();
		while (it.hasNext()) {
			Student student = (Student)it.next();
			System.out.println(student);
		}
		
		System.out.println("-------------------------------");
		// List集合特有的遍历功能
		for (int i = 0; i < l1.size(); i++) {
			Student student = (Student)l1.get(i);
			System.out.println(student);
		}
	}
}
