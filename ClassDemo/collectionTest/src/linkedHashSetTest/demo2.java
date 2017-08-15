package linkedHashSetTest;

import java.util.LinkedHashSet;

import listTest.Student;

public class demo2 {
	public static void main(String[] args) {
		LinkedHashSet<Student1> lhs1 = new LinkedHashSet<>();
		Student1 s1 = new Student1("张三", 20);
		Student1 s2 = new Student1("李四", 19);
		Student1 s3 = new Student1("王五", 22);
		Student1 s4 = new Student1("赵六", 24);
		Student1 s5 = new Student1("张三", 20);
		lhs1.add(s1);
		lhs1.add(s2);
		lhs1.add(s3);
		lhs1.add(s4);
		lhs1.add(s5);
		
		for(Student1 s: lhs1) {
			System.out.println(s);
		}
	}
}
