package timerTest;

import java.util.Date;
import java.util.TimerTask;

public class MyTask2 extends TimerTask {

	@Override
	public void run() {
		System.out.println("大爆炸" + ":" + new Date());
	}

}
