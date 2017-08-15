/**
 * 针对数组进行操作的工具类
 * @author liu
 * @version v1.0
 */
// 生成文档API
// javadoc -d 目录 -author -version ArrayTools.java
public class ArrayTool {
    private ArrayTool() {

    }
    
    /**
     * 遍历数据的方法
     * @param arr 被遍历的数组
     */
    public static void printArray(int[] arr) {
        for (int x = 0; x < arr.length; x++) {
            System.out.println(arr[x]);
        }
    }
    /**
     * 获取数组中最大值的方法
     * @param arr 获取数组中最大值
     * @return 返回数组中的最大值
     */
    public static int getMax(int[] arr) {
        int max = arr[0];
        for(int x = 0; x < arr.length; x++) {
            if(arr[x] > max) {
                max = arr[x];
            }
        }
        return max;
    }
}