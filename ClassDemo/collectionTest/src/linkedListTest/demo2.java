package linkedListTest;

import java.util.LinkedList;

/**
 * @author liupuyan
 * 用LinkedList模拟栈数据结构的集合
 * 栈的特点 先进后出
 */
public class demo2 {
	public static void main(String[] args) {
		MyStack stack = new MyStack();
		stack.add("hello");
		stack.add("world");
		stack.add("java");
		
		System.out.println(stack);
		
		while (!stack.isEmpty()) {
			System.out.println(stack.get());
		}
	}
}

