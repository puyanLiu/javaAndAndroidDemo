package regexTest;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author liupuyan
 * 模式和匹配器的使用
 */
public class demo7 {
	public static void main(String[] args) {
		// 把正则表达式编译成模式对象
		Pattern p1 = Pattern.compile("\\w+");
		// 通过模式对象得到匹配器对象 被匹配的字符串
		Matcher m1 = p1.matcher("ab");
		// 调用匹配器对象功能
		boolean b = m1.matches();
		System.out.println(b);
	}
}
