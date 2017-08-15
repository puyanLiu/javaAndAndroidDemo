package stringTest;

public class demo5 {
	/**
	 * @param args
	 * 字符串反转
	 */
	public static void main(String[] args) {
		String s1 = "abc";
		String s2 = "";
		for(int i = s1.length() - 1; i >= 0; i--) {
			s2 += s1.charAt(i);
		}
		System.out.println(s2);
	}
}
