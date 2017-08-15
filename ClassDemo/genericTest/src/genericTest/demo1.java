package genericTest;

import java.util.ArrayList;
import java.util.Iterator;

/**
 * @author liupuyan
 * 泛型
 * 是一种把类型明确的工作推迟到创建对象或者调用方法的时候才去明确的特殊的类型
 * 参数化类型，把类型当作参数一样的传递
 * <数据类型> 只能是引用类型
 */
public class demo1 {
	public static void main(String[] args) {
		ArrayList<String> al1 = new ArrayList<String>();
		al1.add("hello");
		al1.add("world");
		al1.add("java");
		
		Iterator<String> it1 = al1.iterator();
		while (it1.hasNext()) {
			String string = it1.next();
			System.out.println(string);
		}
		
	}
}
