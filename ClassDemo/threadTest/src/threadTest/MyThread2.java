package threadTest;

import java.util.Date;

public class MyThread2 extends Thread {
	
	public MyThread2() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MyThread2(String name) {
		super(name);
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public void run() {
		System.out.println("hello");
		
		for (int i = 0; i < 100; i++) {
			// 获取线程的名字
			System.out.println(getName() + ":" + i + "日期：" + new Date());
			// 线程休眠
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println(getName() + "线程被终止了");
				break;
			}
		}
		
		System.out.println("-------------------------------结束执行");
	}
}
