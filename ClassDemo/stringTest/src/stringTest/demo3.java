package stringTest;

public class demo3 {
	public static void main(String[] args) {
		String s1 = "helloworld";
		
		// 字符串转为字节数组
		byte[] bs = s1.getBytes();
		for(int i = 0; i < bs.length; i++) {
			System.out.println(bs[i]);
		}
		
		// 字符串转换为字符数组
		char[] cs = s1.toCharArray();
		for(int i = 0; i < cs.length; i++) {
			System.out.println(cs[i]);
		}
		
		// 字符数组转字符串
		System.out.println(String.valueOf(cs));
		
		// int类型数据转换成字符串
		System.out.println(String.valueOf(100));
		
		// 字符串转小写
		System.out.println("HELLO".toLowerCase());
		// 字符串转大写
		System.out.println("hello".toUpperCase());
		
		// 字符串拼接
		System.out.println("hello".concat("world"));
		
		System.out.println(s1.substring(0, 1).toUpperCase().concat(s1.substring(1).toLowerCase()));
		
		// 替换
		System.out.println(s1.replace('l', 'p'));
		System.out.println(s1.replace("ll", "pp"));
		
		// 去除字符串两端空格
		System.out.println("  hello world  ".trim());
		
		// 按字典顺序比较两个字符串
		System.out.println("hello".compareTo("hello"));
		System.out.println("abc".compareTo("xyz"));
		System.out.println("hello".compareTo("helo"));
		System.out.println("hello".compareTo("hell"));
	}
}
