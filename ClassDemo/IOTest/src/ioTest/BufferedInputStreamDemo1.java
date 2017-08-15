package ioTest;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;

/**
 * @author liupuyan
 *
 * BufferedInputStream
 * 字节缓冲输入流
 */
public class BufferedInputStreamDemo1 {
	public static void main(String[] args) throws IOException {
		BufferedInputStream bis = new BufferedInputStream(new FileInputStream("fos.txt"));
//		int b = 0;
//		while ((b = bis.read()) != -1) {
//			System.out.print((char)b);
//		}
		
		byte[] bs = new byte[1024];
		int len = 0;
		while ((len = bis.read(bs)) != -1) {
			System.out.print(new String(bs, 0, len));
		}
		bis.close();
	}
}
