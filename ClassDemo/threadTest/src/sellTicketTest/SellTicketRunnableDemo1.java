package sellTicketTest;

/**
 * @author liupuyan
 * 模拟售票案例
 * 
 * 判断一个程序是否会有线程安全问题的标准
 * 	是否是多线程环境
 * 	是否有共享数据
 * 	是否有多条语句操作共享数据
 * 
 * 同步代码块
 * synchronized (对象) {
 * 	需要同步的代码
 * }
 * 
 * 注： 同步可以解决安全问题的根本原因就在对象上，该对象如同锁的功能，多个线程必须是同一把锁
 * 
 * 同步的好处 
 * 	解决了多线程的安全问题
 * 
 * 同步的弊端
 * 	当线程相当多时，因为每个线程都会去判断同步上的锁，这是很耗费资源的，无形中会降低程序的运行效率
 */
public class SellTicketRunnableDemo1 {
	public static void main(String[] args) {
		SellTicketRunnable1 runnable1 = new SellTicketRunnable1();
		Thread thread1 = new Thread(runnable1, "窗口一");
		Thread thread2 = new Thread(runnable1, "窗口二");
		Thread thread3 = new Thread(runnable1, "窗口三");
		
		thread1.start();
		thread2.start();
		thread3.start();
	}
}
