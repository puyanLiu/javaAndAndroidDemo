package arrayListTest;

import java.util.ArrayList;
import java.util.Iterator;

public class demo1 {
	public static void main(String[] args) {
		ArrayList al1 = new ArrayList();
		al1.add("hello");
		al1.add("world");
		al1.add("java");
		
		Iterator it1 = al1.iterator();
		while (it1.hasNext()) {
			String string = (String)it1.next();
			System.out.println(string);
		}
		
		System.out.println("-----------------------");
		
		for (int i = 0; i < al1.size(); i++) {
			String string = (String)al1.get(i);
			System.out.println(string);
		}
	}
}
