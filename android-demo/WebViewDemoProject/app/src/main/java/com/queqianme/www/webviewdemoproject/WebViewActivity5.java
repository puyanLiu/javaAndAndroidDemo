package com.queqianme.www.webviewdemoproject;

import android.Manifest;
import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.ContactsContract;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;
import android.webkit.JavascriptInterface;
import android.webkit.WebSettings;
import android.webkit.WebView;

import com.queqianme.www.webviewdemoproject.WebViewAndJS.Contact;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by liupuyan on 2017/12/14.
 *
 * HTML通过JS读取Android联系人并显示
 *
 * 本示例采用GOOGLE建议的运行时权限处理过程
 *
 *
 * 1 检查运行时权限
 * 2 申请权限
 * 3 接收权限处理结果
 */
public class WebViewActivity5 extends AppCompatActivity {

    private WebView wb_webView;

    final int MY_PERMISSIONS_REQUEST_READ_CONTACTS = 101;

    private Handler handler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            wb_webView.loadUrl("javascript:show('" + msg.obj + "')");
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_webview4);

        bindViews();
        webview();
    }

    private void bindViews() {
        wb_webView = findViewById(R.id.wb_webView);
    }

    @SuppressLint("JavascriptInterface")
    private void webview() {
        // 设置webview的相关设置，依次是
        // 支持js，不支持缩放
        WebSettings webSettings = wb_webView.getSettings();
        webSettings.setJavaScriptEnabled(true);
        webSettings.setSupportZoom(false);
        webSettings.setDefaultTextEncodingName("UTF-8");

        wb_webView.addJavascriptInterface(new SharpJS(), "sharp");
        wb_webView.loadUrl("file:///android_asset/demo3.html");
    }

    /**
     * 自定义一个Js的业务类,传递给JS的对象就是这个,调用时直接javascript:sharp.contactlist()
     */
    public class SharpJS {
        @JavascriptInterface
        public void contactlist() {
            try {
                System.out.println("contactlist()方法执行了！");

                // GOOGLE建议的运行时权限处理过程
                // 1、检查运行时权限
                if (ContextCompat.checkSelfPermission(WebViewActivity5.this, Manifest.permission.READ_CONTACTS) != PackageManager.PERMISSION_GRANTED) {
                    // 2、申请权限
                    ActivityCompat.requestPermissions(WebViewActivity5.this, new String[] { Manifest.permission.READ_CONTACTS}, MY_PERMISSIONS_REQUEST_READ_CONTACTS);
                } else {

                    String json = buildJson(getContacts());
//                wb_webView.loadUrl("javascript:show('" + json + "')");
                    Message message = handler.obtainMessage();
                    message.obj = json;
                    handler.sendMessage(message);
                }

            } catch (Exception e) {
                System.out.println("设置数据失败：" + e);
            }
        }

        @JavascriptInterface
        public void call(String phone) {
            System.out.println("call()方法执行了");
            Intent it = new Intent(Intent.ACTION_CALL, Uri.parse("tel:" + phone));
            if (ActivityCompat.checkSelfPermission(WebViewActivity5.this, Manifest.permission.CALL_PHONE) != PackageManager.PERMISSION_GRANTED) {
                // TODO: Consider calling
                //    ActivityCompat#requestPermissions
                // here to request the missing permissions, and then overriding
                //   public void onRequestPermissionsResult(int requestCode, String[] permissions,
                //                                          int[] grantResults)
                // to handle the case where the user grants the permission. See the documentation
                // for ActivityCompat#requestPermissions for more details.
                return;
            }
            startActivity(it);
        }
    }

    // GOOGLE建议的运行时权限处理过程
    // 3、接收权限处理结果
    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        switch (requestCode) {
            case MY_PERMISSIONS_REQUEST_READ_CONTACTS: {
                // If request is cancelled, the result arrays are empty.
                if (grantResults.length > 0
                        && grantResults[0] == PackageManager.PERMISSION_GRANTED) {

                    // permission was granted, yay! Do the
                    // contacts-related task you need to do.

                    try {
                        System.out.println("权限允许---------------------------------------方法执行了！");

                        String json = buildJson(getContacts());
//                wb_webView.loadUrl("javascript:show('" + json + "')");
                        Message message = handler.obtainMessage();
                        message.obj = json;
                        handler.sendMessage(message);

                    } catch (Exception e) {
                        System.out.println("设置数据失败：" + e);
                    }

                } else {

                    // permission denied, boo! Disable the
                    // functionality that depends on this permission.

                    System.out.println("----------------------权限拒绝");
                }
                return;
            }

            // other 'case' lines to check for other
            // permissions this app might request
        }
    }

    //将获取到的联系人集合写入到JsonObject对象中,再添加到JsonArray数组中
    public String buildJson(List<Contact> contacts)throws Exception
    {
        JSONArray array = new JSONArray();
        for(Contact contact:contacts)
        {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("id", contact.getId());
            jsonObject.put("name", contact.getName());
            jsonObject.put("phone", contact.getPhone());
            array.put(jsonObject);
        }
        return array.toString();
    }

    //定义一个获取联系人的方法,返回的是List<Contact>的数据
    public List<Contact> getContacts()
    {
        List<Contact> Contacts = new ArrayList<Contact>();
        //查询raw_contacts表获得联系人的id
        ContentResolver resolver = getContentResolver();
        Uri uri = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
        //查询联系人数据
        Cursor cursor = resolver.query(uri, null, null, null, null);
        while(cursor.moveToNext())
        {
            Contact contact = new Contact();
            //获取联系人姓名,手机号码
            contact.setId(cursor.getString(cursor.getColumnIndex(ContactsContract.Contacts._ID)));
            contact.setName(cursor.getString(cursor.getColumnIndex(ContactsContract.CommonDataKinds.Phone.DISPLAY_NAME)));
            contact.setPhone(cursor.getString(cursor.getColumnIndex(ContactsContract.CommonDataKinds.Phone.NUMBER)));
            Contacts.add(contact);
        }
        cursor.close();
        return Contacts;
    }
}