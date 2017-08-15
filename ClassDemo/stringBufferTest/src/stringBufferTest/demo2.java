package stringBufferTest;

public class demo2 {
	public static void main(String[] args) {
		int[] arr = {1, 2, 3};
		StringBuffer string = new StringBuffer();
		for(int i = 0; i < arr.length; i++) {
			if (i == 0) {
				string.append("[");
			}
			if (i == arr.length - 1) {
				string.append(arr[i]);
				string.append("]");
			} else {
				string.append(arr[i]).append(", ");
			}
		}
		System.out.println(string);
	}
}
