package ioTest;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

public class copyFileDemo5 {
	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new FileReader("fos.txt"));
		PrintWriter pw = new PrintWriter("fos2.txt");

		String line = null;
		while ((line = br.readLine()) != null) {
			pw.println(line);
		}

		br.close();
		pw.close();
	}
}
