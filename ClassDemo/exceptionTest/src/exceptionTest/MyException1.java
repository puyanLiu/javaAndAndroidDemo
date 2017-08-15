package exceptionTest;

/**
 * @author liupuyan
 * 编译期异常
 */
public class MyException1 extends Exception {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public MyException1() {
        super();
    }
	
	public MyException1(String message) {
        super(message);
    }
}
