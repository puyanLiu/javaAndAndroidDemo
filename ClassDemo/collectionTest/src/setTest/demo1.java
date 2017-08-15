package setTest;

import java.util.HashSet;
import java.util.Set;

/**
 * @author liupuyan
 * set 无序（存储顺序和取出顺序不一致）唯一
 * 
 * HashSet 底层数据结构是哈希表（是一个元素为链表的数组）
 */
public class demo1 {
	public static void main(String[] args) {
		Set<String> set1 = new HashSet<>();
		set1.add("hello");
		set1.add("world");
		set1.add("java");
		System.out.println(set1);
	}
}
