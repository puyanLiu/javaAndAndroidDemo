package genericTest;

/**
 * @author liupuyan
 * 还不确定什么类型
 * @param <T>
 */
public class InterImpl2<T> implements Inter<T> {

	@Override
	public void show(T t) {
		System.out.println(t);
	}
	
}
