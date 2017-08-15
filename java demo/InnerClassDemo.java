class Outer {

    private int num = 10;
    private static int num2 = 100;

    // 成员内部类
    class Inner {
        int num = 500;
        public void show() {
            System.out.println(num);
            System.out.println(Outer.this.num);
        }
    }

    class Inner2 {
        public void show() {
            num2 = 200;
            System.out.println(num2);
        }
    }

    static class Inner3 {
        public void show() {
            num2 = 400;
            System.out.println(num2);
        }
    }

    public void method() {
        Inner i = new Inner();
        i.show();
    }

    public void method1() {
        int num3 = 300;
        // 局部内部类
        class Inner1 {
            public void show() {
                System.out.println(num3);
            }
        }

        Inner1 i1 = new Inner1();
        i1.show();
    }

    public void method3() {
        // 继承了该类或实现了该接口的子类匿名对象
        new Inter() {
            public void show() {
                System.out.println("show");
            }
            public void show2() {
                System.out.println("show2");
            }
        }.show();

        Inter i = new Inter() {
            public void show() {
                System.out.println("show");
            }
            public void show2() {
                System.out.println("show2");
            }
        };
        i.show();
        i.show2();
    }
}

interface Inter {
    public abstract void show();
    public abstract void show2();
}

class InnerClassDemo {
    public static void main(String[] args) {
        // 成员内部类访问 外部类名.内部类名 对象名 = 外部类对象.内部类对象
        Outer.Inner oi = new Outer().new Inner();
        oi.show();

        Outer.Inner2 oi2 = new Outer().new Inner2();
        oi2.show();

        // 静态成员内部类访问 外部类名.内部类型 对象名 = new 外部类名.内部类名()
        Outer.Inner3 oi3 = new Outer.Inner3();
        oi3.show();
        new Outer.Inner3().show();

        Outer o = new Outer();
        o.method1();
        o.method3();

        Other ot = new Other();
        new InnerClassDemo().addOne(ot);
    }

    public void addOne(final Other o) {
        o.i++;
        System.out.println(o.i);
    }
}

class Other {
    public int i;
}