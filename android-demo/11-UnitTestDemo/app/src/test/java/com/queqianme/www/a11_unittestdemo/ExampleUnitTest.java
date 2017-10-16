package com.queqianme.www.a11_unittestdemo;

import org.junit.Test;

import static org.junit.Assert.*;

/**
 * Example local unit test, which will execute on the development machine (host).
 *
 * @see <a href="http://d.android.com/tools/testing">Testing documentation</a>
 */
public class ExampleUnitTest {
    @Test
    public void addition_isCorrect() throws Exception {
        assertEquals(4, 2 + 2);
    }

    @Test
    public void test1() {
        int result = Tools.jianfan(8, 5);
        assertEquals(3, result);
    }

    @Test
    public void test2() {
        Tools.showInfo();
    }
}