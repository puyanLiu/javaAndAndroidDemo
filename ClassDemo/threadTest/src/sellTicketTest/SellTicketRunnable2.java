package sellTicketTest;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class SellTicketRunnable2 implements Runnable {

	private int ticket = 100;
	
	// 定义锁对象
	private Lock lock = new ReentrantLock();
	
	@Override
	public void run() {
		boolean isFlag = true;
		while(isFlag) {
			try {
				// 加锁
				lock.lock();
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
					isFlag = false;
				}
			} finally {
				// 释放锁
				lock.unlock();
			}
		}
	}

}
