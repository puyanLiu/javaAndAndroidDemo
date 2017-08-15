package genericTest;

public class InterDemo {
	public static void main(String[] args) {
		InterImpl1 impl1 = new InterImpl1();
		impl1.show("哈喽");
		
		InterImpl2<Integer> impl2 = new InterImpl2<>();
		impl2.show(40);
		
		InterImpl2<String> impl3 = new InterImpl2<>();
		impl3.show("hello");
	}
}
