package genericTest;

/**
 * @author liupuyan
 *
 * @param <T>
 * 
 * 泛型定义在类上
 */
public class ObjectTool<T> {
	private T object;
	
	public void setObject(T object) {
		this.object = object;
	}
	
	public T getObject() {
		return object;
	}
	
	/**
	 * @param t
	 * 
	 * 泛型定义在方法上
	 */
	public <E> void show(E t) {
		System.out.println(t);
	}

	@Override
	public String toString() {
		return "ObjectTool [object=" + object + "]";
	}
	
}
