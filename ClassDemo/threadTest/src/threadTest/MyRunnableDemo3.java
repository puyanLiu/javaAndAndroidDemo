package threadTest;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * @author liupuyan
 * 线程池
 * 	线程池里的每一个线程代码结束后，并不会死亡，而是再次回到线程池中成为空闲状态，等待下一个对象来使用
 */
public class MyRunnableDemo3 {
	public static void main(String[] args) {
		// 创建线程池对象
		// new ThreadPoolExecutor(nThreads, nThreads, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue<Runnable>())
		ExecutorService pool = Executors.newFixedThreadPool(2);
		// submit(Runnable task) 提交一个 Runnable 任务用于执行，并返回一个表示该任务的 Future
		pool.submit(new MyRunnable1());
		pool.submit(new MyRunnable1());
		pool.submit(new MyRunnable1());
		pool.submit(new MyRunnable1());
		pool.submit(new MyRunnable1());
		// shutdown() 启动一次顺序关闭，执行以前提交的任务，但不接受新任务
		pool.shutdown();
	}
}
