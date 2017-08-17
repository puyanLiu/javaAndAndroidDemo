package sellTicketTest;

/**
 * @author liupuyan
 * 模拟售票案例
 */
public class SellTicketThreadDemo1 {
	public static void main(String[] args) {
		SellTicketThread1 thread1 = new SellTicketThread1("窗口一");
		SellTicketThread1 thread2 = new SellTicketThread1("窗口二");
		SellTicketThread1 thread3 = new SellTicketThread1("窗口三");
		
		thread1.start();
		thread2.start();
		thread3.start();
	}
}
