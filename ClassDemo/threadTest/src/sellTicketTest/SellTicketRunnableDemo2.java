package sellTicketTest;

/**
 * @author liupuyan
 * 锁对象Lock
 * 
 * ReentrantLock是Lock实现类
 */
public class SellTicketRunnableDemo2 {
	public static void main(String[] args) {
		SellTicketRunnable2 runnable1 = new SellTicketRunnable2();
		Thread thread1 = new Thread(runnable1, "窗口一");
		Thread thread2 = new Thread(runnable1, "窗口二");
		Thread thread3 = new Thread(runnable1, "窗口三");
		
		thread1.start();
		thread2.start();
		thread3.start();
	}
}
