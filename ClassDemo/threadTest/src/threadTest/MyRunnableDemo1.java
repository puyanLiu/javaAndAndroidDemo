package threadTest;

/**
 * @author liupuyan
 * 实现多线程 通过实现Runnable接口实现
 */
public class MyRunnableDemo1 {
	public static void main(String[] args) {
		// 创建Runnable类的对象
		MyRunnable1 runnable1 = new MyRunnable1();
		// 创建Thread类的对象
		Thread thread1 = new Thread(runnable1, "张三");
		Thread thread2 = new Thread(runnable1, "李四");
		// 本质 调用runnable1的run()
		thread1.start();
		thread2.start();
	}
}
