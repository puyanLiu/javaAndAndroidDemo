package characterTest;

public class demo2 {
	public static void main(String[] args) {
		String string = "Hello123World";
		int bigCharCount = 0;
		int smallCharCount = 0;
		int numCount = 0;
		for(int i = 0; i < string.length(); i++) {
			char ch = string.charAt(i);
			if (Character.isLowerCase(ch)) {
				smallCharCount++;
			} else if (Character.isUpperCase(ch)) {
				bigCharCount++;
			} else if (Character.isDigit(ch))  {
				numCount++;
			}
		}
		System.out.println(bigCharCount);
		System.out.println(smallCharCount);
		System.out.println(numCount);
	}
}
