package com.queqianme.www.mobilesafeproject.utils;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/**
 * Created by liupuyan on 2017/10/20.
 */

public class StreamUtils {
    public static String stream2String(InputStream is) {
        byte[] b = new byte[1024];
        int len;
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        try {
            while ((len = is.read(b)) != -1) {
                baos.write(b, 0, len);
            }
            baos.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return baos.toString();
    }
}
