package treeSetTest;

import java.util.TreeSet;

public class demo3 {
	public static void main(String[] args) {
		// 比较器排序
		TreeSet<Student> ts1 = new TreeSet<>(new MyComparator());
		Student s1 = new Student("张三", 20);
		Student s2 = new Student("李四", 19);
		Student s3 = new Student("王五", 22);
		Student s4 = new Student("赵六", 24);
		Student s5 = new Student("张三", 20);
		Student s6 = new Student("钱八", 24);
		ts1.add(s1);
		ts1.add(s2);
		ts1.add(s3);
		ts1.add(s4);
		ts1.add(s5);
		ts1.add(s6);
		
		for(Student s: ts1) {
			System.out.println(s);
		}
	}
}
