package sellTicketTest;

public class SellTicketThread1 extends Thread {
	
	private static int ticket = 100;
	
	public SellTicketThread1() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SellTicketThread1(String name) {
		super(name);
		// TODO Auto-generated constructor stub
	}

	@Override
	public void run() {
		boolean isFlag = true;
		while(isFlag) {
			if (ticket > 0) {
				System.out.println(getName() + "正在售出第" + ticket-- + "票");
			} else {
				System.out.println("没票了");
				isFlag = false;
			}
		}
	}
}
