package threadTest;

import java.util.concurrent.Callable;

/**
 * @author liupuyan
 * 这里泛型其实是call()返回值类型
 */
public class MyCallable1 implements Callable {

	@Override
	public Object call() throws Exception {
		for (int i = 0; i < 100; i++) {
			// 获取线程的名字
			System.out.println(Thread.currentThread().getName() + ":" + i);
		}
		return null;
	}

}
