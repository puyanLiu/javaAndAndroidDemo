package treeSetTest;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Scanner;
import java.util.TreeSet;

/**
 * @author liupuyan
 * 录入五个学生（姓名，语文成绩，数学成绩，英语成绩）按照总分从高到低输出到控制台
 */
public class demo5 {
	public static void main(String[] args) {
		// 比较器排序
		TreeSet<Student> ts1 = new TreeSet<>(new Comparator<Student>() {

			@Override
			public int compare(Student o1, Student o2) {
				int num = o2.getSum() - o1.getSum();
				int num2 = num == 0 ? o1.getChineseScore() - o2.getChineseScore() : num;
				int num3 = num2 == 0 ? o1.getMathScore() - o2.getMathScore() : num2;
				int num4 = num3 == 0 ? o1.getEngScore() - o2.getEngScore() : num3;
				int num5 = num4 == 0 ? o1.getName().compareTo(o2.getName()) : num4;
				return num5;
			}
		
		});
		Scanner sc = new Scanner(System.in);
		for (int i = 0; i < 5; i++) {
			Student s = new Student();
			System.out.println("请输入" + i + "姓名");
			String name = sc.nextLine();
			System.out.println("请输入" + i + "语文成绩");
			String chinese = sc.nextLine();
			System.out.println("请输入" + i + "数学成绩");
			String math = sc.nextLine();
			System.out.println("请输入" + i + "英语成绩");
			String english = sc.nextLine();
			s.setName(name);
			s.setChineseScore(Integer.parseInt(chinese));
			s.setMathScore(Integer.parseInt(math));
			s.setEngScore(Integer.parseInt(english));
			ts1.add(s);
		}
		
		for(Student s: ts1) {
			System.out.println(s);
		}
	}
}
