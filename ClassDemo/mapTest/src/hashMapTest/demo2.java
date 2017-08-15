package hashMapTest;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class demo2 {
	public static void main(String[] args) {
		HashMap<String, Student> map = new HashMap<>();
		Student s1 = new Student("张三", 19);
		Student s2 = new Student("李四", 19);
		Student s3 = new Student("王五", 19);
		Student s4 = new Student("赵六", 19);
		map.put("1001", s1);
		map.put("1002", s2);
		map.put("1003", s3);
		map.put("1004", s4);
		Set<Map.Entry<String, Student>> set = map.entrySet();
		for(Map.Entry<String, Student> entry: set) {
			System.out.println(entry.getValue());
		}
		
		HashMap<Student, String> map1 = new HashMap<>();
		Student s11 = new Student("张三", 19);
		Student s12 = new Student("李四", 19);
		Student s13 = new Student("王五", 19);
		Student s14 = new Student("赵六", 19);
		map1.put(s11, "1001");
		map1.put(s12, "1002");
		map1.put(s13, "1003");
		map1.put(s14, "1004");
		Set<Map.Entry<Student, String>> set1 = map1.entrySet();
		for(Map.Entry<Student, String> entry: set1) {
			System.out.println(entry.getValue());
		}
	}
}
