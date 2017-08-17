package thread2Test;

public class SetThread implements Runnable {

	private Student s;
	private int x = 0;

	public SetThread(Student s) {
		this.s = s;
	}

	@Override
	public void run() {
		int count = 10;
		while ((int) count-- > 0) {
//			System.out.println("set" + x);
			if (x % 2 == 0) {
				x = s.setStudent("张三", 27) == true ? x + 1 : x;
			} else {
				x = s.setStudent("lisi", 40) == true ? x + 1 : x;
			}
		}
	}

}
