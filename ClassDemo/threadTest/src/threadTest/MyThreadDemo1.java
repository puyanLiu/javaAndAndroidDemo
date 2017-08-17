package threadTest;

/**
 * @author liupuyan
 * 实现多线程 通过继承Thread类实现
 * 
 * run()
 * 	仅仅是封装被线程执行的代码，直接调用是普通方法
 * start()
 * 	 使该线程开始执行；Java 虚拟机调用该线程的 run 方法
 */
public class MyThreadDemo1 {
	public static void main(String[] args) {
		
		// 获取当前正在执行的线程
		System.out.println(Thread.currentThread().getName());
		
//		method1();
//		method2();
//		method3();
//		method4();
//		method5();
//		method6();
		method7();
	}

	/**
	 *  默认优先级是5
	 *  线程优先级范围 1 - 10
	 *  线程优先级高仅仅表示线程获取的CPU时间片的几率高
	 */
	private static void method7() {
		// 获取线程默认优先级
		System.out.println(Thread.currentThread().getName() + "---------" + Thread.currentThread().getPriority());
		MyThread1 thread1 = new MyThread1("王五");
		MyThread1 thread2 = new MyThread1("赵六");
		thread1.start();
		thread2.start();
		// 设置优先级
		thread1.setPriority(10);
		thread2.setPriority(3);
		System.out.println(thread1.getName() + "---------" + thread1.getPriority());
		System.out.println(thread2.getName() + "---------" + thread2.getPriority());
	}

	private static void method6() {
		MyThread1 thread1 = new MyThread1("张三");
		MyThread1 thread2 = new MyThread1("李四");
		MyThread1 thread3 = new MyThread1("王五");
		thread1.start();
		try {
			// 等待该线程终止
			thread1.join();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		thread2.start();
		thread3.start();
	}

	private static void method5() {
		MyThread1 thread1 = new MyThread1("张三");
		MyThread1 thread2 = new MyThread1("李四");
		
		// setDaemon(boolean on) 将该线程标记为守护线程或用户线程
		// 当正在运行的线程都是守护线程时，Java虚拟机退出 
		// 该方法必须在启动线程前调用
		thread1.setDaemon(true);
		thread2.setDaemon(true);
		
		thread1.start();
		thread2.start();
		
		Thread.currentThread().setName("主线程");
		
		for (int i = 0; i < 10; i++) {
			System.out.println(Thread.currentThread().getName() + "------------------------" + i);
		}
	}

	private static void method4() {
		// 通过构造方法设置线程名称
		MyThread1 thread1 = new MyThread1("王五");
		MyThread1 thread2 = new MyThread1("赵六");
		thread1.start();
		thread2.start();
	}

	private static void method3() {
		MyThread1 thread1 = new MyThread1();
		MyThread1 thread2 = new MyThread1();
		thread1.start();
		thread2.start();
		// 设置线程名字
		thread1.setName("张三");
		thread2.setName("李四");
	}

	private static void method2() {
		MyThread1 thread1 = new MyThread1();
		thread1.start();
		// IllegalThreadStateException 如果线程已经启动 再调用start会抛出
//		thread1.start();
	}

	private static void method1() {
		// 创建线程对象
		MyThread1 thread1 = new MyThread1();
		thread1.run(); // 直接调用run()是单线程的，因为run()方法直接调用其实就相当于普通方法调用
		thread1.run();
	}
}
