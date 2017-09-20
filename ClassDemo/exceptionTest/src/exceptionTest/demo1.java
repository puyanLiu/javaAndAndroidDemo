package exceptionTest;

/**
 * @author liupuyan
 * 异常：程序出现了不正常的情况
 * Exception
 * 	编译器问题 不是继承RuntimeException的异常 必须进行处理，不处理 编译不通过
 * 	运行期问题 继承RuntimeException的异常 可以不做处理 一般是代码不规范产生的问题
 */
public class demo1 {
	public static void main(String[] args) {
		int a = 10;
		int b = 0;
		/* *
		 * Exception in thread "main" java.lang.ArithmeticException: / by zero at exceptionTest.demo1.main(demo1.java:14)
		 * */
		System.out.println(a / b);
		System.out.println("end");
	}
}