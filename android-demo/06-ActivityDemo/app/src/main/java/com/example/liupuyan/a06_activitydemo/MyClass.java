package com.example.liupuyan.a06_activitydemo;

/**
 * Created by liupuyan on 2017/10/25.
 * 饿汉式单例类
 */

public class MyClass {
    private static final MyClass ourInstance = new MyClass();

    public static MyClass getInstance() {
        return ourInstance;
    }

    private MyClass() {
    }
}
