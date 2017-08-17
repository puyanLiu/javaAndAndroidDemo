package threadTest;

import java.util.concurrent.Callable;

public class MyCallable2 implements Callable<Integer> {

	private int number;
	
	public MyCallable2(int number) {
		super();
		this.number = number;
		// TODO Auto-generated constructor stub
	}

	@Override
	public Integer call() throws Exception {
		int sum = 0;
		for (int i = 0; i < number; i++) {
			sum += i;
		}
		return sum;
	}

}
