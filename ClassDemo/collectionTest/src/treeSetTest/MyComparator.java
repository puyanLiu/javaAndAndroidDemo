package treeSetTest;

import java.util.Comparator;

public class MyComparator implements Comparator<Student> {

	@Override
	public int compare(Student o1, Student o2) {
		// 升序
		int num = o1.getAge() - o2.getAge();
		int num2 = num == 0 ? o1.getName().compareTo(o2.getName()) : num;
		return num2;
	}

}
