package com.queqianme.www.a13_networkimagedownload;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/**
 * Created by liupuyan on 2017/10/20.
 */

public class Tools {
    public static String getTextFromStream(InputStream is) {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        try {
            byte[] b = new byte[1024];
            int len;
            while ((len = is.read(b)) != -1) {
                baos.write(b, 0, len);
            }
            baos.close();
            return baos.toString();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
}
