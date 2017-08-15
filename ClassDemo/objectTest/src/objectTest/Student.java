package objectTest;

public class Student implements Cloneable {
	private String name;
	private int age;
	
	public Student(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}

	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "姓名：" + name + " 年龄：" + age;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (!(obj instanceof Student)) {
			return false;
		}
		Student student = (Student)obj;
		return this.name.equals(student.name) && this.age == student.age;
	}
	
	@Override
	protected Student clone() throws CloneNotSupportedException {
		return (Student)super.clone();
	}
}
