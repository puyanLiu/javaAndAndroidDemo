package timerTest;

import java.util.Timer;

public class timerDemo2 {
	public static void main(String[] args) {
		Timer timer = new Timer();
		// 3秒后执行一次，每隔2秒执行一次
		timer.schedule(new MyTask2(), 3000, 2000);
	}
}
