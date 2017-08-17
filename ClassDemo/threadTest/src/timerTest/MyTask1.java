package timerTest;

import java.util.Timer;
import java.util.TimerTask;

public class MyTask1 extends TimerTask {

	private Timer timer;
	
	public MyTask1() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public MyTask1(Timer t) {
		this.timer = t;
	}
	
	@Override
	public void run() {
		System.out.println("大爆炸");
		timer.cancel();
	}

}
