package regexTest;

import java.util.Arrays;

public class demo5 {
	public static void main(String[] args) {
		String s1 = "91 27 46 38 50";
		String regex1 = " +";
		String[] strArr1 = s1.split(regex1);
		Arrays.sort(strArr1);
		System.out.println(Arrays.toString(strArr1));
		String s2 = String.join(" ", strArr1);
		System.out.println(s2);
	}
}
