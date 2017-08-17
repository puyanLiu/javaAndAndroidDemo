package thread2Test;

/**
 * @author liupuyan
 * 等待唤醒
 * 	Object类中提供了三个方法
 * 		wait() 等待
 * 		notify() 唤醒单个线程
 * 		notifyAll() 唤醒所有线程
 * 
 * 为什么以上方法定义在Object类中
 * 	因为这些方法的调用时依赖于锁对象的，而同步代码块的锁对象是任意锁
 * 
 * wait()
 * 	可以不指定时间，也可以指定时间 释放锁
 * sleep()
 * 	必须指定时间 不释放锁
 */
public class StudentDemo {
	public static void main(String[] args) {
		Student s = new Student();
		SetThread setThread = new SetThread(s);
		GetThread getThread = new GetThread(s);
		
		Thread thread1 = new Thread(setThread);
		Thread thread2 = new Thread(getThread);
		
		thread1.start();
		thread2.start();
		
	}
}
