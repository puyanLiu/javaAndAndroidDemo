package exceptionTest;

import java.text.ParseException;

/**
 * @author liupuyan
 *
 * 子类重写父类方法时，子类的方法必出抛出相同的异常或父类异常的子类
 *                  如果父类方法没有异常，子类也不可以抛出异常
 *                  子类不能抛出父类没有的异常
 */
public class demo7 {
	public static void main(String[] args) {
		
	}
}

class Fu {
	public void show() throws Exception {
		
	}
	
	// 抛出运行期异常
	public void show1() throws ArithmeticException {
		
	}
	
	public void show2() throws ParseException {
		
	}
	
	public void show3() {
		
	}
}

class Zi extends Fu {
	@Override
	public void show() throws Exception {
		super.show();
	}
	
	@Override
	public void show1() {
		super.show1();
	}
	
	@Override
	public void show2() throws ParseException {
		super.show2();
	}
	
	@Override
	public void show3() {
		super.show3();
	}
}
