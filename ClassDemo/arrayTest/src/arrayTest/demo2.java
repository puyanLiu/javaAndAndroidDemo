package arrayTest;

/**
 * @author liupuyan
 * 字符串中的字符进行排序
 */
public class demo2 {
	public static void main(String[] args) {
		String string = "dacgebf";
		byte[] bs = string.getBytes();
//		char[] cs = string.toCharArray();
//		string = String.valueOf(cs);
		for(int i = 0; i < bs.length - 1; i++) {
			for(int j = 0; j < bs.length - 1 - i ; j++) {
				if (bs[j] > bs[j + 1]) {
					byte temp = bs[j];
					bs[j] = bs[j + 1];
					bs[j + 1] = temp;
				}
			}
		}
		string = new String(bs);
		System.out.println(string);
	}
}
