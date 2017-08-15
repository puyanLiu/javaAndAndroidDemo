package ioTest;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * @author liupuyan
 * 字符输入流
 */
public class InputStreamReaderDemo1 {
	public static void main(String[] args) throws IOException {
		// 创建对象
		// 用默认编码读取数据
//		InputStreamReader isr = new InputStreamReader(new FileInputStream("fos.txt"));
		
		// 用指定编码读取数据
//		InputStreamReader isr = new InputStreamReader(new FileInputStream("fos.txt"), "gbk");
		
		InputStreamReader isr = new InputStreamReader(new FileInputStream("fos.txt"), "utf-8");
		
		// 一次读取一个字符
//		int ch = 0;
//		while ((ch = isr.read()) != -1) {
//			System.out.print((char)ch);
//		}
		
		// 一次读取一个字符数组
		char[] chs = new char[1024];
		int len = 0;
		while ((len = isr.read(chs)) != -1) {
			System.out.println(new String(chs, 0, len));
		}
		isr.close();
	}
}
