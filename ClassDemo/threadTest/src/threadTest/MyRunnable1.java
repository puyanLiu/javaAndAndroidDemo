package threadTest;

public class MyRunnable1 implements Runnable {

	@Override
	public void run() {
		System.out.println("hello");
		for (int i = 0; i < 100; i++) {
			// 获取线程的名字
			System.out.println(Thread.currentThread().getName() + ":" + i);
		}
	}

}
