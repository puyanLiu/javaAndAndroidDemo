package regexTest;

/**
 * @author liupuyan
 * 手机号码判断
 * 			13436975980
 * 			13688886868
 * 			13866668888
 * 			13456789012
 * 			13123456789
 * 			18912345678
 * 			18886867878
 * 			18638833883
 */
public class demo3 {
	public static void main(String[] args) {
		String s = "13436975980";
//		String regex = "1[38][0-9]{9}";
		String regex = "1[38]\\d{9}";
		System.out.println(s.matches(regex));
	}
}