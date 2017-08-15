package treeSetTest;

import java.util.Iterator;
import java.util.TreeSet;

/**
 * @author liupuyan
 * TreeSet 能够对元素按照某种规则进行排序
 * 排序方式
 * 	自然排序
 * 		让元素所属的类实现Comparable接口
 * 	比较器排序
 * 		让集合构造方法接收Comparator的实现类对象
 * 
 * TreeSet 底层数据结构是红黑树 一种自平衡的二叉树
 * 
 * 元素存储
 * 	第一个元素直接作为根节点存储
 *  第二个元素开始，依次从根节点开始比较
 *  		大 就作为右节点
 *  		小 作为做节点
 *  		相等 不作处理
 *  
 *  元素取值
 *  按照左中右依次取出
 */
public class demo1 {
	public static void main(String[] args) {
		TreeSet<Integer> ts1 = new TreeSet<>();
		ts1.add(13);
		ts1.add(14);
		ts1.add(12);
		ts1.add(16);
		ts1.add(16);
		ts1.add(17);
		for(Integer i: ts1) {
			System.out.println(i);
		}
		
		System.out.println("---------------------------");
		
		Iterator<Integer> it1 = ts1.iterator();
		while (it1.hasNext()) {
			Integer integer = it1.next();
			System.out.println(integer);
		}
	}
}
