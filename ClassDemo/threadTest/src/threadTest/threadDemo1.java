package threadTest;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Hashtable;
import java.util.List;
import java.util.Vector;

/**
 * @author liupuyan
 * 
 * 进程：正在运行的程序，是系统进行分配和调用的独立单位
 * 		每一个进程都有它自己的内存空间和系统资源
 * 线程：是进程中的单个顺序控制流，是一条执行路径
 * 
 * 并行：
 * 	在某一个时间内同时运行多个程序
 * 并发：
 * 	在某一个时间点同时运行多个程序
 * 
 * Java程序运行原理
 * 	由java命令启动JVM，JVM启动就相当于启动了一个进程，接着由该进程创建一个主线程去调用main方法
 * 
 * jvm虚拟机的启动是多线程的
 * 	垃圾回收线程
 * 	主线程
 */
public class threadDemo1 {
	public static void main(String[] args) {
		// 线程安全的类
		StringBuffer stringBuffer = new StringBuffer();
		Vector<String> vector = new Vector<>();
		Hashtable<String, String> hashtable = new Hashtable<>();
		
		List<String> list = new ArrayList<>(); // 线程不安全
		// 线程不安全的集合类变成一个线程安全的集合类
		List<String> list2 = Collections.synchronizedList(new ArrayList<>()); // 线程安全
		
	}
}
