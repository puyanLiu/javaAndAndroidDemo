package arrayTest;

public class demo5 {
	/**
	 * @param args
	 * 选择排序
	 * 把0索引的元素，和索引1以后的元素进行比较，第一次完毕，最小值出现在了0索引
	 */
	public static void main(String[] args) {
		int[] arr = {24, 69, 80, 57, 13};
		for(int i = 0; i < arr.length - 1; i++) {
			for(int j = i + 1; j < arr.length; j++) {
				if (arr[i] > arr[j]) {
					int temp = arr[j];
					arr[j] = arr[i];
					arr[i] = temp;
				}
			}
		}
		for(int x = 0; x < arr.length; x++) {
			System.out.println(arr[x]);
		}
	}
}