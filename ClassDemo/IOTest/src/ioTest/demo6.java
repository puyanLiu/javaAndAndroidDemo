package ioTest;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Arrays;

/**
 * @author liupuyan
 * fos.txt 中 hcexfgijkamdnoqrzstuvwybpl
 * 读取数据内容，排序后写入fos2.txt
 */
public class demo6 {
	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new FileReader("fos.txt"));
		String line = br.readLine();
		br.close();
		
		char[] ch = line.toCharArray();
		Arrays.sort(ch);
		
		BufferedWriter bw = new BufferedWriter(new FileWriter("fos2.txt"));
		bw.write(ch);
		bw.close();
	}
}
