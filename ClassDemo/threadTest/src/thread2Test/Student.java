package thread2Test;

public class Student {
	private String name;
	private int age;
	private boolean flag; // 默认情况是没有数据 false

	@Override
	public String toString() {
		return "Student [name=" + name + ", age=" + age + "]";
	}
	
	public synchronized boolean setStudent(String name, int age) {
//		System.out.println("-------------------------------set");
		if (this.flag) {
			try {
				this.wait();
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return false;
		} else {
			
			this.name = name;
			this.age = age;
			
			this.flag = true;
			this.notify();
//			System.out.println("成功设置数据");
			return true;
		}
	}
	
	public synchronized void getStudent() {
//		System.out.println("-------------------------------get");
		if (this.flag) {
			System.out.println(this);
			// 修改标记
			this.flag = false;
			// 唤醒线程
			this.notify();
		} else {
			try {
				this.wait();
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
