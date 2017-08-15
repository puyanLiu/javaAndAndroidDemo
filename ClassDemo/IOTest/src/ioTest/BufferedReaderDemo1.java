package ioTest;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/**
 * @author liupuyan
 *
 * BufferedReader 字符缓冲输入流
 * 从字符输入流中读取文本，缓冲各个字符，从而实现字符、数组和行的高效读取
 * 可以指定缓冲区的大小，或者使用默认的，大多数情况下，默认值就足够大了
 */
public class BufferedReaderDemo1 {
	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new FileReader("fos.txt"));
		int b = 0;
		while ((b = br.read()) != -1) {
			System.out.print((char)b);
		}
		br.close();
	}
}
