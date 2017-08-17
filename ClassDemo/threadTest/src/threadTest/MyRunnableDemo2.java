package threadTest;

/**
 * @author liupuyan
 * 线程组
 * 	把多个线程组合到一起
 * 	它可以对一批线程进行分类管理，Java允许程序直接对线程进行控制
 */
public class MyRunnableDemo2 {
	public static void main(String[] args) {
//		method1();
		
		method2();
		System.out.println("哈哈");
	}

	private static void method2() {
		// 创建线程组
		ThreadGroup threadGroup = new ThreadGroup("新的线程组");
		
		MyRunnable1 runnable1 = new MyRunnable1();
		Thread thread1 = new Thread(threadGroup, runnable1, "张三");
		Thread thread2 = new Thread(threadGroup, runnable1, "李四");
		
		ThreadGroup tg1 = thread1.getThreadGroup();
		System.out.println(tg1 + ":" + tg1.getName());
		ThreadGroup tg2 = thread2.getThreadGroup();
		System.out.println(tg2 + ":" + tg1.getName());
		
		// 通过组名称设置后台线程，表示该组的线程都是后台线程
		threadGroup.setDaemon(true);
		
	}

	private static void method1() {
		MyRunnable1 runnable1 = new MyRunnable1();
		Thread thread1 = new Thread(runnable1, "张三");
		Thread thread2 = new Thread(runnable1, "李四");
		
		ThreadGroup tg1 = thread1.getThreadGroup();
		System.out.println(tg1 + ":" + tg1.getName());
		ThreadGroup tg2 = thread2.getThreadGroup();
		System.out.println(tg2 + ":" + tg1.getName());
		
		System.out.println(Thread.currentThread().getThreadGroup().getName());
	}
}
