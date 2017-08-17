package timerTest;

import java.util.Timer;

/**
 * @author liupuyan
 * 定时器
 * Timer 定时
 * TimerTask 任务
 */
public class timerDemo1 {
	public static void main(String[] args) {
		Timer timer = new Timer();
		timer.schedule(new MyTask1(timer), 3000);
		System.out.println("end");
	}
}
