  /**
    A:一个类的静态代码块,构造代码块,构造方法的执行流程
			静态代码块 > 构造代码块 > 构造方法
    B:静态的内容是随着类的加载而加载
        静态代码块的内容会优先执行
    C:子类初始化之前先会进行父类的初始化
   */

  class Fu {
	static {
		System.out.println("静态代码块Fu");
	}

	{
		System.out.println("构造代码块Fu");
	}

	public Fu() {
		System.out.println("构造方法Fu");
	}
}

class Zi extends Fu {
	static {
		System.out.println("静态代码块Zi");
	}

	{
		System.out.println("构造代码块Zi");
	}

	public Zi() {
		System.out.println("构造方法Zi");
	}
}

class ExtendsTest {
	public static void main(String[] args) {
		Zi z = new Zi();
	}
}