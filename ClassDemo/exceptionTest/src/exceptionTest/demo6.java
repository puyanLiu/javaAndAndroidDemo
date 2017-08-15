package exceptionTest;

/**
 * @author liupuyan
 * finally 被finally控制的语句体一定会执行
 * 一般用于释放资源
 * 
 * final
 * 	最终的意思，可以修饰类、成员变量、成员方法
 * 	修饰类，类不能被继承
 *  修饰成员变量，成员变量就是常量
 *  修饰成员方法，成员方法不能被重写
 * finally
 *  异常处理的一部分，用于资源释放
 * finalize
 * 	Object类的一个方法，用于垃圾回收
 */
public class demo6 {
	public static void main(String[] args) {
//		method1();
		System.out.println(method5());
	}
	
	private static int method4() {
		int a = 10;
		int b = 5;
		try {
			System.out.println(a / b);
		} catch (ArithmeticException e) {
			System.out.println("除数不能为0");
			a = 30;
			return a;
		} finally {
			System.out.println("finally");
			a = 40;
//			return a;
		}
		System.out.println("over");
		return a;
	}
	
	// method4反编译
	private static int method5() {
	      byte a = 10;
	      byte b = 5;

	      label35: {
	         byte var4;
	         try {
	            System.out.println(a / b);
	            break label35;
	         } catch (ArithmeticException var7) {
	            System.out.println("除数不能为0");
	            a = 30;
	            var4 = a;
	         } finally {
	            System.out.println("finally");
	            a = 40;
	         }

	         return var4;
	      }

	      System.out.println("over");
	      return a;
	   }

	private static int method2() {
		int a = 10;
		int b = 0;
		try {
			System.out.println(a / b);
		} catch (ArithmeticException e) {
			System.out.println("除数不能为0");
			a = 30;
			return a;
		} finally {
			System.out.println("finally");
			a = 40;
//			return a;
		}
		System.out.println("over");
		return a;
	}
	
	// method2反编译
	private static int method3() {
	      byte a = 10;
	      byte b = 0;

	      // label35 标识代码块的标签
	      label35: {
	         byte var4;
	         try {
	            System.out.println(a / b);
	            break label35;
	         } catch (ArithmeticException var7) {
	            System.out.println("除数不能为0");
	            a = 30;
	            var4 = a;
	         } finally {
	            System.out.println("finally");
	            a = 40;
	         }

	         return var4;
	      }

	      System.out.println("over");
	      return a;
	   }

	private static void method1() {
		int a = 10;
		int b = 0;
		try {
			System.out.println(a / b);
		} catch (ArithmeticException e) {
			System.out.println("除数不能为0");
		} finally {
			System.out.println("finally");
		}
	}
	
}
