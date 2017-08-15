package com.qqm;

/**
带包的编译和运行：
		A:手动式
			a:编写一个带包的java文件。
			b:通过javac命令编译该java文件。
			c:手动创建包名。
			d:把b步骤的class文件放到c步骤的最底层包
			e:回到和包根目录在同一目录的地方，然后运行
				带包运行。
				
		B:自动式
			a:编写一个带包的java文件。
			b:javac编译的时候带上-d即可
				javac -d . HelloWorld.java
			c:回到和包根目录在同一目录的地方，然后运行
				带包运行。
 */
public class PackageDemo {
    public int sum(int a, int b) {
        return a + b;
    }
}