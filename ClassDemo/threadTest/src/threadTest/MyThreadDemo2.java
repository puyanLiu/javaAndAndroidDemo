package threadTest;

/**
 * @author liupuyan
 * stop() 让线程停止 已过时
 * interrput() 中断线程 把线程的状态终止 并抛出一个InterruptedException
 */
public class MyThreadDemo2 {
	public static void main(String[] args) {
		method1();
	}
	
	private static void method1() {
		// 通过构造方法设置线程名称
		MyThread2 thread1 = new MyThread2("王五");
		MyThread2 thread2 = new MyThread2("赵六");
		thread1.start();
		thread2.start();
		
		try {
			Thread.sleep(2000);
//			thread1.stop();
			thread1.interrupt();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
