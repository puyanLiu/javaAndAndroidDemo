package com.example.liupuyan.a05_xmldemo;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.util.Xml;
import android.view.View;

import com.example.liupuyan.a05_xmldemo.domain.SmsModel;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {

    List<SmsModel> smsList;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        smsList = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            SmsModel model = new SmsModel("你好" + i, System.currentTimeMillis(), 1, "12324535534");
            smsList.add(model);
        }
    }

    List<SmsModel> newSmsList;
    public void getXML(View v) {
//        getClassLoader().getResourceAsStream("") 获取目录下的文件
        File file = new File(getFilesDir(), "sms1.xml");
        FileInputStream fis = null;
        // 获取xml解析器
        XmlPullParser xp = Xml.newPullParser();
        try {
            fis = new FileInputStream(file);
            // 初始化
            xp.setInput(fis, "utf-8");
            int type = xp.getEventType();
            SmsModel model = null;
            while (type != XmlPullParser.END_DOCUMENT) {
                switch (type) {
                    case  XmlPullParser.START_TAG:
                        if ("smsList".equals(xp.getName())) {
                            newSmsList = new ArrayList<>();
                        } else if ("sms".equals(xp.getName())) {
                            model = new SmsModel();
                        } else if ("body".equals(xp.getName())) {
                            String temp = xp.nextText();
                            model.setBody(temp);
                        } else if ("date".equals(xp.getName())) {
                            String temp = xp.nextText();
                            model.setDate(Long.parseLong(temp));
                        } else if ("type".equals(xp.getName())) {
                            String temp = xp.nextText();
                            model.setType(Integer.parseInt(temp));
                        } else if ("address".equals(xp.getName())) {
                            String temp = xp.nextText();
                            model.setAddress(temp);
                        }
                        break;
                    case  XmlPullParser.END_TAG:
                        if ("sms".equals(xp.getName())) {
                            newSmsList.add(model);
                        }
                        break;
                }
                // 把指针移动到下一个节点，并返回该节点的事件类型
                type = xp.next();
            }
            fis.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e) {
            e.printStackTrace();
        }
        for(SmsModel model: newSmsList) {
            Log.i("sms", model.toString());
        }
    }

    public void createXML(View v) {
        // 获取xml序列化器
        XmlSerializer xs = Xml.newSerializer();
        File file = new File(getFilesDir(), "sms1.xml");
        FileOutputStream fos = null;
        try {
            fos = new FileOutputStream(file);
            // 初始化
            // 指定编码
            xs.setOutput(fos, "utf-8");
            // 生成头结点
            xs.startDocument("utf-8", true);
            xs.startTag(null, "smsList");
            for(SmsModel model: smsList) {
                xs.startTag(null, "sms");

                xs.startTag(null, "body");
                xs.text(model.getBody());
                xs.endTag(null, "body");

                xs.startTag(null, "date");
                xs.text(model.getDate() + "");
                xs.endTag(null, "date");

                xs.startTag(null, "type");
                xs.text(model.getType() + "");
                xs.endTag(null, "type");

                xs.startTag(null, "address");
                xs.text(model.getAddress());
                xs.endTag(null, "address");

                xs.endTag(null, "sms");
            }
            xs.endTag(null, "smsList");
            // 序列化结束
            xs.endDocument();

            fos.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void createxml1() {
        StringBuffer sb = new StringBuffer();
        sb.append("<?xml version=\"1.0\" encoding=\"utf-8\"?>");
        sb.append("<smsList>");
        for(SmsModel model: smsList) {
            sb.append("<sms>");
            sb.append("<body>");
            sb.append(model.getBody());
            sb.append("</body>");

            sb.append("<date>");
            sb.append(model.getDate());
            sb.append("</date>");

            sb.append("<type>");
            sb.append(model.getType());
            sb.append("</type>");

            sb.append("<address>");
            sb.append(model.getAddress());
            sb.append("</address>");

            sb.append("</sms>");
        }
        sb.append("</smsList>");

        File file = new File(getFilesDir(), "sms.xml");
        FileOutputStream fos = null;
        try {
            fos = new FileOutputStream(file);
            fos.write(sb.toString().getBytes());
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
