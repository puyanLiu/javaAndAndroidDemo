package hashSetTest;

import java.util.HashSet;

/**
 * @author liupuyan
 * HashSet 存储字符串唯一
 * 依赖 两个方法：hashCode() 和 equals()
 * 
 * 步骤
 * 先比较哈希值，再比较equals()
 */
public class demo1 {
	public static void main(String[] args) {
		HashSet<String> hs1 = new HashSet<>();
		hs1.add("hello");
		hs1.add("world");
		hs1.add("hello");
		System.out.println(hs1);
		
	}
}
