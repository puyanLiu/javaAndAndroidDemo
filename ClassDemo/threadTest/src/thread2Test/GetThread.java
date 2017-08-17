package thread2Test;

public class GetThread implements Runnable {

	private Student s;
	
	public GetThread(Student s) {
		this.s = s;
	}
	
	@Override
	public void run() {
		int count = 10;
		while ((int) count-- > 0) {
//			System.out.println("get");
			s.getStudent();
		}
	}

}
