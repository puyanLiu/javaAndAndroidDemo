package com.queqianme.www.okhttpdemoproject;

import android.support.test.runner.AndroidJUnit4;

import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.google.gson.reflect.TypeToken;

import org.junit.Test;
import org.junit.runner.RunWith;

import java.util.List;

/**
 * Created by liupuyan on 2017/12/20.
 */

@RunWith(AndroidJUnit4.class)
public class GsonTest {

    /**
     * fromJson() 实现反序列化 用于解析
     * toJson() 实现序列化 用于生成
     * @throws Exception
     */
    @Test
    public void gson_fromJson() throws Exception {
        // 基础数据类型解析
        Gson gson = new Gson();
        int i = gson.fromJson("100", int.class);
        double d =  gson.fromJson("\"99.99\"", double.class);
        boolean b = gson.fromJson("true", boolean.class);
        String str = gson.fromJson("HelloWorld", String.class);
        System.out.println("---------" + i);
    }

    @Test
    public void gson_toJson() throws Exception {
        // 基础数据类型生成
        Gson gson = new Gson();
        String jsonNumber = gson.toJson(100);
        String jsonBoolean = gson.toJson(false);
        String jsonString = gson.toJson("Hello world");
        System.out.println("--------" + gson);
    }

    public class User {
        public String name;
        public int age;
        public String emailAddress;

        public User(String name, int age, String emailAddress) {
            this.name = name;
            this.age = age;
            this.emailAddress = emailAddress;
        }
    }

    @Test
    public void gson1() throws Exception {
        // 生成JSON
        Gson gson = new Gson();
        User user = new User("张三", 20, "814168332@qq.com");
        String jsonObject = gson.toJson(user);
//        String jsonString = "{\"age\":20,\"emailAddress\":\"814168332@qq.com\",\"name\":\"张三\"}";
        System.out.println("-------" + jsonObject);

        // 解析JSON
        User user1 = gson.fromJson(jsonObject, User.class);
        System.out.println("-----------" + user1.name);
    }

    /**
     * 属性重命名 @SerializedName 注解
     *
     * SerializedName注解 还可为字段设置备选属性名
     */
    public class Student {
        public String name;
        public int age;
//        @SerializedName("email_address")
        // alternate提供备选属性名
        @SerializedName(value = "emailAddress", alternate = {"email_address", "email"})
        public String emailAddress;

        public Student(String name, int age, String emailAddress) {
            this.name = name;
            this.age = age;
            this.emailAddress = emailAddress;
        }
    }

    /**
     * Gson使用泛型
     * @throws Exception
     */
    @Test
    public void gson2() throws Exception {
        Gson gson = new Gson();
        String jsonArray = "[\"Android\",\"Java\",\"PHP\"]";
        String[] strings = gson.fromJson(jsonArray, String[].class);
        System.out.println("--------" + strings);

        // 解析为List<String>
        // Gson提供了TypeToken来实现对泛型的支持
        List<String> stringList = gson.fromJson(jsonArray, new TypeToken<List<String>>() {}.getType());

    }

    /**
     * gson设置类型的时候假设是data是User，则可以写Result<User>
     * gson设置类型的时候假设是data是List<User>，则可以写Result<List<User>>
     */
    public class Result<T> {
        public int code;
        public String message;
        public T data;
    }
}
