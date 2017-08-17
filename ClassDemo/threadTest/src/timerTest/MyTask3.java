package timerTest;

import java.io.File;
import java.util.Timer;
import java.util.TimerTask;

public class MyTask3 extends TimerTask {

	private Timer timer;
	
	public MyTask3() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public MyTask3(Timer t) {
		super();
		// TODO Auto-generated constructor stub
		this.timer = t;
	}

	@Override
	public void run() {
		System.out.println("开始删除");
		File f1 = new File("/Users/liupuyan/Desktop/fileDemo/javaFile");
		deleteFolder(f1);
		System.out.println("删除完成");
		timer.cancel();
	}

	private void deleteFolder(File file) {
		File[] arr = file.listFiles();
		if (arr != null) {
			for(File f: file.listFiles()) {
				if (f.isFile()) {
					f.delete();
				} else {
					deleteFolder(f);
				}
			}
			file.delete();
		}
	}
}
