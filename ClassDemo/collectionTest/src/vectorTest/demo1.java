package vectorTest;

import java.util.Enumeration;
import java.util.Iterator;
import java.util.Vector;

/**
 * @author liupuyan
 * Vector可以被ArrayList取代
 * 取代原因
 * - 安全
 * - 效率
 * - 简化书写
 */
public class demo1 {
	public static void main(String[] args) {
		Vector v1 = new Vector();
		v1.add("hello");
		v1.addElement("world");
		
		Iterator it1 = v1.iterator();
		while (it1.hasNext()) {
			String string = (String) it1.next();
			System.out.println(string);
		}
		
		System.out.println("----------------------");
	
		for (int i = 0; i < v1.size(); i++) {
			String string = (String) v1.get(i);
			System.out.println(string);
		}
		
		System.out.println("Vector特有的----------------------");
		
		for (int i = 0; i < v1.size(); i++) {
			String string = (String) v1.elementAt(i);
			System.out.println(string);
		}
		
		System.out.println("----------------------");
		
		Enumeration en = v1.elements();
		while (en.hasMoreElements()) {
			String string = (String) en.nextElement();
			System.out.println(string);
		}
	}
}
