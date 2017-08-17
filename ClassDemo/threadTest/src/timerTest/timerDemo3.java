package timerTest;

import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Timer;

/**
 * @author liupuyan
 * 指定的时间删除指定的目录
 */
public class timerDemo3 {
	public static void main(String[] args) {
		String str = "2017-08-17 14:11:00";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			Date date = sdf.parse(str);
			Timer timer = new Timer();
			timer.schedule(new MyTask3(timer), date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
