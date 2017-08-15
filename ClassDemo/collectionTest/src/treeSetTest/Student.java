package treeSetTest;

// 如果一个类的元素要实现自然排序，就必须实现Comparable接口
public class Student implements Comparable<Student> {
	private String name;
	private int age;
	private int chineseScore;
	private int mathScore;
	private int engScore;
	
	public Student() {
		super();
	}
	
	public Student(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
	public int getChineseScore() {
		return chineseScore;
	}

	public void setChineseScore(int chineseScore) {
		this.chineseScore = chineseScore;
	}

	public int getMathScore() {
		return mathScore;
	}

	public void setMathScore(int mathScore) {
		this.mathScore = mathScore;
	}

	public int getEngScore() {
		return engScore;
	}

	public void setEngScore(int engScore) {
		this.engScore = engScore;
	}
	
	public int getSum() {
		return chineseScore + mathScore + engScore;
	}
	
	@Override
	public String toString() {
		return "Student [name=" + name + ", age=" + age + ", chineseScore=" + chineseScore + ", mathScore=" + mathScore
				+ ", engScore=" + engScore + "]";
	}

	@Override
	public int compareTo(Student s) {
//		return 0;
//		return 1;
//		return -1;
//		return s.age - this.age;
		int num = this.age - s.age;
		int num2 = num == 0 ? this.name.compareTo(s.name) : num;
		return num2;
	}
	
}
