package genericTest;

import java.util.ArrayList;
import java.util.Collection;

/**
 * @author liupuyan
 * 泛型通配符
 * <?> 任意类型，如果没有明确，那么就是任意类
 * <？extends E> 向下限定，E及其子类
 * <? super E>  向上限定，E及其父类
 */
public class demo3 {
	public static void main(String[] args) {
		// 泛型如果明确类型，那么前后必须一致
		Collection<Object> c1 = new ArrayList<Object>();
		
		// ? 任意类型都可以
		Collection<?> c2 = new ArrayList<Object>();
		Collection<?> c3 = new ArrayList<Animal>();
		Collection<?> c4 = new ArrayList<Dog>();
		Collection<?> c5 = new ArrayList<Cat>();
		
		// <？extends E> 向下限定，E及其子类
		Collection<? extends Animal> c6 = new ArrayList<Animal>();
		Collection<? extends Animal> c7 = new ArrayList<Dog>();
		Collection<? extends Animal> c8 = new ArrayList<Cat>();
		
		// <? super E>  向上限定，E及其父类
		Collection<? super Animal> c9 = new ArrayList<Object>();
		Collection<? super Animal> c10 = new ArrayList<Animal>();
	}
}

class Animal {
	
}

class Dog extends Animal {
	
}

class Cat extends Animal {
	
}
