package fileTest;

import java.io.File;

/**
 * @author liupuyan
 * 批量修改文件
 */
public class demo4 {
	public static void main(String[] args) {
		File f1 = new File("/Users/liupuyan/Desktop/fileDemo/javaFile");
		File[] fileArray = f1.listFiles();
		for(File f: fileArray) {
			String name = f.getName();
			int startIndex = name.indexOf(".java") - 1;
			File newF = new File(f.getParent(), "happy".concat(name.substring(startIndex)));
			System.out.println(newF);
			f.renameTo(newF);
		}
	}
}
