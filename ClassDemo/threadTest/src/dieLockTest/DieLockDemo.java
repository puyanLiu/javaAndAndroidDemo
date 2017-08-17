package dieLockTest;

/**
 * @author liupuyan
 * 同步弊端
 * 	效率低
 *  容易产生死锁
 *  
 * 死锁
 * 	两个或两个以上的线程在争夺资源的过程中，发生的一种相互等待的现象
 */
public class DieLockDemo {
	public static void main(String[] args) {
		DieLock dl1 = new DieLock(true);
		DieLock dl2 = new DieLock(false);
		
		dl1.start();
		dl2.start();
	}
}
