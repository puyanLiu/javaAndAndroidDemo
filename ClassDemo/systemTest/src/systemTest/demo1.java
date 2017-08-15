package systemTest;

import java.util.Arrays;

/**
 * @author liupuyan
 * System类包含一些有用的类字段和方法，它不能被实例化
 */
public class demo1 {
	public static void main(String[] args) {
		Person p1 = new Person("张三", 19);
		System.out.println(p1);
		p1 = null;
		// 运行垃圾回收器
		System.gc();
		
		// 终止当前正在运行的Java虚拟机。参数作用状态码 非0表示异常终止
//		System.exit(0);
		System.out.println("看看终止没啊");
		
		// 计算程序的运行时间
		long start = System.currentTimeMillis(); // 返回以毫秒为单位的当前时间
		for(int x = 0; x < 1000; x++) {
			System.out.println(x);
		}
		long end = System.currentTimeMillis();
		System.out.println(end - start + "毫秒");
		
		// 从指定数据源复制一个数组，复制从指定的位置开始，到目标数组的指定位置结束
		int[] arr1 = {11, 22, 33, 44, 55, 66};
		int[] arr2 = {1, 2, 3, 4, 5, 6};
		System.arraycopy(arr1, 1, arr2, 2, 3);
		System.out.println(Arrays.toString(arr1));
		System.out.println(Arrays.toString(arr2));
	}
}
