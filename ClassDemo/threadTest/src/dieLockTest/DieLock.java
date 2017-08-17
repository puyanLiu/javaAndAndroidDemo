package dieLockTest;

public class DieLock extends Thread {
	
	private boolean flag;
	
	public DieLock(boolean flag) {
		this.flag = flag;
	}
	
	@Override
	public void run() {
		if (flag) {
			synchronized (MyLock.objA) {
				System.out.println("hello objA");
				synchronized (MyLock.objB) {
					System.out.println("B执行");
				}
				
			}
		} else {
			synchronized (MyLock.objB) {
				System.out.println("hello objB");
				synchronized (MyLock.objA) {
					System.out.println("A执行");
				}
			}
		}
	}
}
