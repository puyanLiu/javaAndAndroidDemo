package regexTest;

/**
 * @author liupuyan
 * 邮箱校验
 * 	12432432@qq.com
 * 	fsfsd@163.com
 *  fdsfds@126.com
 *  fdsfsfa@sinacom.cn
 *  
 */
public class demo2 {
	public static void main(String[] args) {
		String s = "2343432@qq.com";
//		String regex = "[a-zA-Z0-9]+@[a-zA-Z0-9]{2,6}(\\.[a-zA-Z0-9]{2,3})+";
		String regex = "\\w+@\\w{2,6}(\\.\\w{2,3})+";
		System.out.println(s.matches(regex));
	}
}
