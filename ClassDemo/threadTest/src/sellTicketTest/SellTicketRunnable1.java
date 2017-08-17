package sellTicketTest;

import org.omg.CORBA.BooleanHolder;

public class SellTicketRunnable1 implements Runnable {

	private static int ticket = 100;
	private Object obj = new Object();
	private AnyClass c = new AnyClass();
	private int x = 0;
	
	
	@Override
	public void run() {
		BooleanHolder isFlag = new BooleanHolder(true);
		while(isFlag.value) {
			// 模拟网络延迟100ms
			// 锁必须是同一个
			if (x % 2 == 0) {
				synchronized (SellTicketRunnable1.class) {
					try {
						Thread.sleep(100);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					if (ticket > 0) {
						System.out.println(Thread.currentThread().getName() + "正在售出第" + ticket-- + "票");
					} else {
						System.out.println("没票了");
						isFlag.value = false;
					}
				}
			} else {
				SellTicketRunnable1.sellTicket(isFlag);
			}
			x++;
		}
	}
	
	// 静态方法同步 
	// 静态方法的锁对象是 类的字节码文件对象
	private static synchronized void sellTicket(BooleanHolder isFlag) {
		try {
			Thread.sleep(100);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (ticket > 0) {
			System.out.println(Thread.currentThread().getName() + "正在售出第" + ticket-- + "票");
		} else {
			System.out.println("没票了");
			isFlag.value = false;
		}
	}
	
	
	
	
	
//	@Override
//	public void run() {
//		BooleanHolder isFlag = new BooleanHolder(true);
//		while(isFlag.value) {
//			// 模拟网络延迟100ms
//			// 锁必须是同一个
//			if (x % 2 == 0) {
//				synchronized (this) {
//					try {
//						Thread.sleep(100);
//					} catch (InterruptedException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}
//					if (ticket > 0) {
//						System.out.println(Thread.currentThread().getName() + "正在售出第" + ticket-- + "票");
//					} else {
//						System.out.println("没票了");
//						isFlag.value = false;
//					}
//				}
//			} else {
//				sellTicket(isFlag);
//			}
//			x++;
//		}
//	}
//	
//	// 同步方法 把synchronized关键字加在方法上
//	// 同步方法的锁对象是this
//	private synchronized void sellTicket(BooleanHolder isFlag) {
//		try {
//			Thread.sleep(100);
//		} catch (InterruptedException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		if (ticket > 0) {
//			System.out.println(Thread.currentThread().getName() + "正在售出第" + ticket-- + "票");
//		} else {
//			System.out.println("没票了");
//			isFlag.value = false;
//		}
//	}
	
	
	
	
	
	// 同步代码块用任意对象做锁
//	@Override
//	public void run() {
//		boolean isFlag = true;
//		while(isFlag) {
//			// 模拟网络延迟100ms
//			// 锁必须是同一个
//			synchronized (c) {
//				try {
//					Thread.sleep(100);
//				} catch (InterruptedException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//				if (ticket > 0) {
//					System.out.println(Thread.currentThread().getName() + "正在售出第" + ticket-- + "票");
//				} else {
//					System.out.println("没票了");
//					isFlag = false;
//				}
//			}
//		}
//	}
	
	
	
	
	// 同步代码用obj做锁
//	@Override
//	public void run() {
//		boolean isFlag = true;
//		while(isFlag) {
//			// 模拟网络延迟100ms
//			// 锁必须是同一个
//			synchronized (obj) {
//				try {
//					Thread.sleep(100);
//				} catch (InterruptedException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//				if (ticket > 0) {
//					System.out.println(Thread.currentThread().getName() + "正在售出第" + ticket-- + "票");
//				} else {
//					System.out.println("没票了");
//					isFlag = false;
//				}
//			}
//		}
//	}

}

class AnyClass {
	
}
