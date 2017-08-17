package threadTest;

public class MyThread3 extends Thread {
	public MyThread3() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MyThread3(String name) {
		super(name);
		// TODO Auto-generated constructor stub
	}

	@Override
	public void run() {
		System.out.println("hello");
		for (int i = 0; i < 100; i++) {
			// 获取线程的名字
			System.out.println(getName() + ":" + i);
			// yield() 暂停当前正在执行的线程对象，并执行其他线程
			Thread.yield();
		}
	}
}
