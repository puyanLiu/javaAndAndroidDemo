package ioTest;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Properties;
import java.util.Set;

/**
 * @author liupuyan
 * 读写数据
 */
public class PropertiesDemo2 {
	public static void main(String[] args) throws IOException {
		write();
		
		read();
	}

	private static void read() throws FileNotFoundException, IOException {
		Properties p = new Properties();
		// 把文件中的数据读取到集合中
		p.load(new FileReader("fos.txt"));
		System.out.println(p);
		
		Set<String> s = p.stringPropertyNames();
		for(String a: s) {
			System.out.println(a + " " + p.getProperty(a));
		}
	}

	private static void write() throws IOException {
		Properties p = new Properties();
		p.setProperty("name", "张三");
		p.setProperty("age", "18");
		p.setProperty("score", "35");
		// 把集合中的数据存储到文件
		p.store(new FileWriter("fos.txt"), "0987654321不知道是啥");
	}
}
