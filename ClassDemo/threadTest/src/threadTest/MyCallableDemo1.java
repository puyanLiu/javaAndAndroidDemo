package threadTest;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * @author liupuyan
 * 实现多线程 通过实现Callable接口实现
 */
public class MyCallableDemo1 {
	public static void main(String[] args) {
		// 创建线程池对象
		ExecutorService pool = Executors.newFixedThreadPool(2);
		
		// 这种线程池可以执行Runnable对象或者Callable对象代表的线程
		pool.submit(new MyCallable1());
		pool.submit(new MyCallable1());
		
		// shutdown() 启动一次顺序关闭，执行以前提交的任务，但不接受新任务
		pool.shutdown();
		
	}
}
