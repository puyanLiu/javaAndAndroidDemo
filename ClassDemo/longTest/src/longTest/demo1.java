package longTest;

public class demo1 {
	public static void main(String[] args) {
		Long num2 = new Long(22);
		long num4 = 22;
		System.out.println(num2);
		System.err.println(num4);
		System.out.println(num2 == 22); // true
		System.out.println(num2.equals(22)); // false
		System.out.println(num2.equals(num4)); // true
		System.out.println(num2.longValue() == num4); // true

//		Long num2 = new Long(22L);
//		long num4 = 22L;
//		System.out.println(num2);
//		System.err.println(num4);
//		System.out.println(num2.longValue() == 22L);
//		System.out.println(num2.equals(Integer.valueOf(22)));
//		System.out.println(num2.equals(Long.valueOf(num4)));
//		System.out.println(num2.longValue() == num4);

	}
}
