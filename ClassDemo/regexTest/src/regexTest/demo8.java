package regexTest;

import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author liupuyan
 * 获取由三个字符组成的单词
 */
public class demo8 {
	public static void main(String[] args) {
		String s = "da jia ting wo shuo, wo men de zu guo hen mei hao";
		String[] strArr = s.split(" +");
		System.out.println(Arrays.toString(strArr));
		for (int i = 0; i < strArr.length; i++) {
			if (strArr[i].matches("[a-zA-Z]{3}")) {
				System.out.println(strArr[i]);
			}
		}
		System.out.println("---------------------------------");
		String regex = "\\b\\w{3}\\b";
		// 正则表达式编译成模式对象
		Pattern pattern = Pattern.compile(regex);
		// 通过模式对象得到匹配器对象
		Matcher matcher = pattern.matcher(s);
		// find 查找有没有满足条件的子串
		while (matcher.find()) {
			// group 获取刚才查找过的数据
			// 没有匹配到 报异常 IllegalStateException
			System.out.println(matcher.group());
		}
	}
}
