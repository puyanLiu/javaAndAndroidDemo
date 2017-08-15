package arrayTest;

public class demo1 {
	/**
	 * @param args
	 * 冒泡排序
	 * 相邻元素两两比较，大的往后放，第一次完毕，最大值出现在了最大索引处
	 */
	public static void main(String[] args) {
		int[] arr = {24, 69, 80, 57, 13};
		for(int i = 0; i < arr.length - 1; i++) {
			for(int j = 0; j < arr.length - 1 - i; j++) {
				if (arr[j] > arr[j + 1]) {
					int temp = arr[j];
					arr[j] = arr[j + 1];
					arr[j + 1] = temp;
				}
			}
		}
		for(int x = 0; x < arr.length; x++) {
			System.out.println(arr[x]);
		}
	}
}
