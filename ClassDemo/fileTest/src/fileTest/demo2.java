package fileTest;

import java.io.File;

public class demo2 {
	public static void main(String[] args) {
		File f1 = new File("/Users/liupuyan/Desktop");
		// 获取指定目录下的所有文件或者文件夹的名称数组
		String[] strArray = f1.list();
		for(String s: strArray) {
			System.out.println(s);
		}
		
		// 获取指定目录下的所有文件或者文件夹的File数组
		File[] fileArray = f1.listFiles();
		for(File f: fileArray) {
			System.out.println(f);
		}
	}
}
