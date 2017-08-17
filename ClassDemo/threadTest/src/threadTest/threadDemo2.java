package threadTest;

/**
 * @author liupuyan 匿名内部类的格式 new 类名或者接口名() { 重写方法 }; 本质是该类或者接口的子类对象
 * 
 */
public class threadDemo2 {
	public static void main(String[] args) {
		// method1();
		// method2();
		method3();
	}

	private static void method3() {
		// 实现Runnable接口 实现多线程 变形
		// 将会执行Thread子类内容
		new Thread(new Runnable() {

			@Override
			public void run() {
				System.out.println("执行实现Runnable子类内容");
				for (int i = 0; i < 100; i++) {
					// 获取线程的名字
					System.out.println(Thread.currentThread().getName() + ":" + i);
				}
			}
		}, "张三") {
			@Override
			public void run() {
				System.out.println("执行Thread子类内容");
				for (int i = 0; i < 100; i++) {
					// 获取线程的名字
					System.out.println(getName() + ":" + i);
				}
			}
		}.start();
	}

	private static void method2() {
		// 实现Runnable接口 实现多线程
		new Thread(new Runnable() {

			@Override
			public void run() {
				for (int i = 0; i < 100; i++) {
					// 获取线程的名字
					System.out.println(Thread.currentThread().getName() + ":" + i);
				}
			}
		}).start();
	}

	private static void method1() {
		// 继承Thread 实现多线程
		new Thread() {
			@Override
			public void run() {
				for (int i = 0; i < 100; i++) {
					// 获取线程的名字
					System.out.println(getName() + ":" + i);
				}
			}
		}.start();
	}
}
