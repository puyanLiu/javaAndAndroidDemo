package mapTest;

import java.util.ArrayList;
import java.util.HashMap;

import hashMapTest.Student;

public class demo5 {
	public static void main(String[] args) {
		HashMap<String, HashMap<String, ArrayList<Student>>> hm = new HashMap<>();
		ArrayList<Student> a1 = new ArrayList<>();
		Student s11 = new Student("张三", 19);
		Student s12 = new Student("李四", 19);
		Student s13 = new Student("王五", 19);
		Student s14 = new Student("赵六", 19);
		a1.add(s11);
		a1.add(s12);
		a1.add(s13);
		a1.add(s14);
		
		ArrayList<Student> a2 = new ArrayList<>();
		Student s21 = new Student("张三", 19);
		Student s22 = new Student("李四", 19);
		Student s23 = new Student("王五", 19);
		Student s24 = new Student("赵六", 19);
		a2.add(s21);
		a2.add(s22);
		a2.add(s23);
		a2.add(s24);
		
		HashMap<String, ArrayList<Student>> hm1 = new HashMap<>();
		hm1.put("一班", a1);
		hm1.put("二班", a2);
		
		hm.put("广州", hm1);
		
		for(String key: hm.keySet()) {
			System.out.println(key);
			for(String key1: hm.get(key).keySet()) {
				System.out.println("\t" + key1);
				ArrayList<Student> al = hm.get(key).get(key1);
				for(Student s: al) {
					System.out.println("\t\t" + s);
				}
			}
		}
		
	}
}