package stringTest;

public class demo6 {
	/**
	 * @param args
	 * 统计大串中小串出现的次数
	 */
	public static void main(String[] args) {
		String s1 = "woaijavawozhenaijavawozhendeaijavawozhendehenaijavaxinbuxinwoaijavagun";
		String s2 = "java";
		int count = 0;
		int index = 0;
		while (index != - 1) {
			count++;
			index = s1.indexOf(s2, index);
			s1 = s1.substring(index + s2.length());
		}
		System.out.println(count);
	}
}
