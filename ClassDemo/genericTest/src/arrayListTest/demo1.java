package arrayListTest;

import java.util.ArrayList;

/**
 * @author liupuyan
 * 集合的嵌套遍历
 */
public class demo1 {
	public static void main(String[] args) {
		ArrayList<ArrayList<Student>> bigArrayList = new ArrayList<>();
		
		ArrayList<Student> al1 = new ArrayList<>();
		Student s11 = new Student("张三", 20);
		Student s12 = new Student("李四", 19);
		Student s13 = new Student("王五", 22);
		Student s14 = new Student("赵六", 24);
		al1.add(s11);
		al1.add(s12);
		al1.add(s13);
		al1.add(s14);
		
		ArrayList<Student> al2 = new ArrayList<>();
		Student s21 = new Student("张三", 20);
		Student s22 = new Student("李四", 19);
		Student s23 = new Student("王五", 22);
		Student s24 = new Student("赵六", 24);
		al2.add(s21);
		al2.add(s22);
		al2.add(s23);
		al2.add(s24);
		
		bigArrayList.add(al1);
		bigArrayList.add(al2);
		
		for(ArrayList<Student> array: bigArrayList) {
			for(Student s: array) {
				System.out.println(s);
			}
		}
	}
}
