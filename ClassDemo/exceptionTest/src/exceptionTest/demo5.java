package exceptionTest;

/**
 * @author liupuyan
 * throw 如果出现了异常，可以把异常抛出，抛出的应该是异常对象
 * 
 * throw和throws区别
 * throw
 * 	用在方法体内，跟的是异常对象
 * 	只能抛出一个异常对象
 *  表示抛出异常，由方法体内的语句处理
 *  抛出了异常，执行到throw就一定会抛出某种异常
 * throws
 * 	用在方法声明后，跟的是异常类
 *  可以跟多个异常类名
 *  表示抛出异常，由该方法的调用者来处理
 *  throws表示出现异常的一种可能性，并不一定会发生这些异常
 */
public class demo5 {
	public static void main(String[] args) {
//		method1();
		try {
			method2();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private static void method2() throws Exception {
		int a = 10;
		int b = 0;
		if (b == 0) {
			throw new Exception();
		} else {
			System.out.println(a / b);
		}
	}
	
	private static void method1() {
		int a = 10;
		int b = 0;
		if (b == 0) {
			throw new ArithmeticException();
		} else {
			System.out.println(a / b);
		}
	}
}
