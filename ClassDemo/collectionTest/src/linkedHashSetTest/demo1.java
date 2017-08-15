package linkedHashSetTest;

import java.util.LinkedHashSet;

/**
 * @author liupuyan
 * LinkedHashSet 底层数据结构由哈希表和链表组成
 * 哈希表保证元素的唯一性
 * 链表保证元素的有序性(存储顺序)
 * 
 * 哈希表：是一个元素为链表的数组
 */
public class demo1 {
	public static void main(String[] args) {
		LinkedHashSet<String> lhs1 = new LinkedHashSet<>();
		lhs1.add("hello");
		lhs1.add("world");
		lhs1.add("java");
		lhs1.add("hello");
		System.out.println(lhs1);
	}
}
