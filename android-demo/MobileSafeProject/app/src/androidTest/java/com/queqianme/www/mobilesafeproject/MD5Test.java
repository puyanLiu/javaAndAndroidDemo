package com.queqianme.www.mobilesafeproject;

import android.support.test.runner.AndroidJUnit4;

import org.junit.Test;
import org.junit.runner.RunWith;

import java.security.MessageDigest;

/**
 * Created by liupuyan on 2017/10/28.
 */

@RunWith(AndroidJUnit4.class)
public class MD5Test {

    /**
     * md5测试
     * @throws Exception
     */
    @Test
    public void md5() throws Exception {
        String password = "123";
        MessageDigest digest = MessageDigest.getInstance("MD5");
        byte[] bytes = digest.digest(password.getBytes()); // 进行加密运算，返回加密后的字节数组
        StringBuffer sb = new StringBuffer();
        for (byte b: bytes) {
            int i = b & 0xff;
            String hexString = Integer.toHexString(i);
            System.out.println(hexString);
            if (hexString.length() == 1) {
                hexString = "0" + hexString;
            }
            sb.append(hexString);
        }

        String md5 = sb.toString();
        System.out.println("md5=" + md5);
        System.out.println("md5 len=" + md5.length());
    }
}
