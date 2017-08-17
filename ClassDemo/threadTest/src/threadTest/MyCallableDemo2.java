package threadTest;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/**
 * @author liupuyan
 * Callable 有返回值
 */
public class MyCallableDemo2 {
	public static void main(String[] args) {
		ExecutorService pool = Executors.newFixedThreadPool(2);
		// <T> Future<T> submit(Callable<T> task);
		Future<Integer> value1 = pool.submit(new MyCallable2(100));
		Future<Integer> value2 = pool.submit(new MyCallable2(1000));
		
		pool.shutdown();
		
		try {
			System.out.println(value1.get());
			System.out.println(value2.get());
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ExecutionException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
