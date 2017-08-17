package threadTest;

import java.util.Iterator;

/**
 * @author liupuyan
 * 
 * 重写run() 用来包含需要被线程执行的代码
 */
public class MyThread1 extends Thread {
	
	public MyThread1() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MyThread1(String name) {
		super(name);
		// TODO Auto-generated constructor stub
	}

	@Override
	public void run() {
		System.out.println("hello");
		for (int i = 0; i < 100; i++) {
			// 获取线程的名字
			System.out.println(getName() + ":" + i);
		}
	}
}
