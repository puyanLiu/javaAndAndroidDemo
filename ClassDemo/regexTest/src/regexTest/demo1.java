package regexTest;

/**
 * @author liupuyan
 * QQ号
 * 5-15位数字
 * 不能以0开头
 */
public class demo1 {
	public static void main(String[] args) {
		String qq = "904332222";
		String regex = "[1-9][0-9]{4,14}";
//		String regex = "[1-9]\\d{4,14}";
		System.out.println(qq.matches(regex));
	}
}
