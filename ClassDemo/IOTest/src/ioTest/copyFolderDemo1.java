package ioTest;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * @author liupuyan
 * 复制单级文件夹 
 */
public class copyFolderDemo1 {
	public static void main(String[] args) throws IOException {
		File srcFolder = new File("/Users/liupuyan/Desktop/fileDemo/javaFile");
		File destFolder = new File("/Users/liupuyan/Desktop/fileDemo/javaFileCopy");
		
		if (!destFolder.exists()) {
			destFolder.mkdir();
		}
		
		File[] fileArray = srcFolder.listFiles();
		if (fileArray != null) {
			for (File f: fileArray) {
				if (f.isFile()) {
					copyFile(f, new File(destFolder, f.getName()));
				}
			}
		}
		
	}
	
	public static void copyFile(File srcFile, File destFile) throws IOException {
		BufferedInputStream bis = new BufferedInputStream(new FileInputStream(srcFile));
		BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(destFile));
		
		int b = 0;
		while ((b = bis.read()) != -1) {
			bos.write(b);
		}
		
		bis.close();
		bos.close();
	}
}