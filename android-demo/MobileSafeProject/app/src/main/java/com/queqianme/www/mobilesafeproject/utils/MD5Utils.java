package com.queqianme.www.mobilesafeproject.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * Created by liupuyan on 2017/10/28.
 */

public class MD5Utils {
    public static String encode(String password) {
        MessageDigest digest = null;
        try {
            digest = MessageDigest.getInstance("MD5");
            byte[] bytes = digest.digest(password.getBytes()); // 进行加密运算，返回加密后的字节数组
            StringBuffer sb = new StringBuffer();
            for (byte b: bytes) {
                int i = b & 0xff;
                String hexString = Integer.toHexString(i);
                if (hexString.length() == 1) {
                    hexString = "0" + hexString;
                }
                sb.append(hexString);
            }

            String md5 = sb.toString();
            LogUtils.i("A", "md5=" + md5);
            LogUtils.i("A", "md5 len=" + md5.length());

            return md5;
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return null;
    }
}
