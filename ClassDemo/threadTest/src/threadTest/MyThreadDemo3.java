package threadTest;

/**
 * @author liupuyan
 * yield() 暂停当前正在执行的线程对象，并执行其他线程
 */
public class MyThreadDemo3 {
	public static void main(String[] args) {
		method1();
	}
	
	private static void method1() {
		// 通过构造方法设置线程名称
		MyThread3 thread1 = new MyThread3("王五");
		MyThread3 thread2 = new MyThread3("赵六");
		thread1.start();
		thread2.start();
	}
}
