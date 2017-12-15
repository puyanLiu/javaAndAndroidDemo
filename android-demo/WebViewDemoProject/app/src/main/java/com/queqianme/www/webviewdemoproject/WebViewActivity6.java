package com.queqianme.www.webviewdemoproject;

import android.Manifest;
import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.ContactsContract;
import android.support.annotation.NonNull;
import android.support.v7.app.AppCompatActivity;
import android.webkit.JavascriptInterface;
import android.webkit.WebSettings;
import android.webkit.WebView;

import com.queqianme.www.webviewdemoproject.WebViewAndJS.Contact;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

import pub.devrel.easypermissions.EasyPermissions;

/**
 * Created by liupuyan on 2017/12/14.
 *
 * HTML通过JS读取Android联系人并显示
 *
 * 本示例采用easypermissions第三方库处理
 *
 * 0 引用库
     dependencies {
        compile 'pub.devrel:easypermissions:0.1.9'
     }
 *
 * 1 检查运行时权限
 * 2 申请权限
 * 3 实现EasyPermissions.PermissionCallbacks接口，直接处理权限是否成功申请
 *
 *
 * evaluateJavascript() 就是专门来异步执行JavaScript代码的
 */
public class WebViewActivity6 extends AppCompatActivity implements EasyPermissions.PermissionCallbacks {

    private WebView wb_webView;

    final int MY_PERMISSIONS_REQUEST_READ_CONTACTS = 101;
    final int MY_PERMISSIONS_REQUEST_CALL_CONTACTS = 102;
    String mPhone = null;

    private Handler handler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            wb_webView.loadUrl("javascript:show('" + msg.obj + "')");


            // evaluateJavascript() 就是专门来异步执行JavaScript代码的,并且能够得到一个回调结果
//            if (Build.VERSION.SDK_INT > Build.VERSION_CODES.JELLY_BEAN_MR2) {
//
//                wb_webView.evaluateJavascript("javascript:show('" + msg.obj + "')", new ValueCallback<String>() {
//                    @Override
//                    public void onReceiveValue(String value) {
//
//                    }
//                });
//            }
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
//            try {
//                System.out.println("contactlist()方法执行了！");
//
//                // 1、检查运行时权限
//                String[] perms = { Manifest.permission.READ_CONTACTS };
//                if (EasyPermissions.hasPermissions(WebViewActivity6.this, perms)) {
//                    String json = buildJson(getContacts());
////                wb_webView.loadUrl("javascript:show('" + json + "')");
//                    Message message = handler.obtainMessage();
//                    message.obj = json;
//                    handler.sendMessage(message);
//                } else {
//                    // 2、申请权限
//                    EasyPermissions.requestPermissions(WebViewActivity6.this, "需要获取联系人权限", MY_PERMISSIONS_REQUEST_READ_CONTACTS, perms);
//                }
//
//            } catch (Exception e) {
//                System.out.println("设置数据失败：" + e);
//            }



            // 使用runOnUiThread()方法来保证你关于 WebView的操作是在UI线程中进行的
            runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    try {
                        System.out.println("contactlist()方法执行了！");

                        // 1、检查运行时权限
                        String[] perms = { Manifest.permission.READ_CONTACTS };
                        if (EasyPermissions.hasPermissions(WebViewActivity6.this, perms)) {
                            String json = buildJson(getContacts());
                            wb_webView.loadUrl("javascript:show('" + json + "')");
                        } else {
                            // 2、申请权限
                            EasyPermissions.requestPermissions(WebViewActivity6.this, "需要获取联系人权限", MY_PERMISSIONS_REQUEST_READ_CONTACTS, perms);
                        }

                    } catch (Exception e) {
                        System.out.println("设置数据失败：" + e);
                    }
                }
            });

        }

        @SuppressLint("MissingPermission")
        @JavascriptInterface
        public void call(String phone) {
            System.out.println("call()方法执行了");
            mPhone = phone;

            // // 1、检查运行时权限
            String[] perms = { Manifest.permission.CALL_PHONE };
            if (EasyPermissions.hasPermissions(WebViewActivity6.this, perms)) {
                Intent it = new Intent(Intent.ACTION_CALL, Uri.parse("tel:" + mPhone));
                startActivity(it);
            } else {
                // 2、申请权限
                EasyPermissions.requestPermissions(WebViewActivity6.this, "需要获取拨打联系人权限", MY_PERMISSIONS_REQUEST_CALL_CONTACTS, perms);
            }
        }
    }

    // 3、接收权限处理结果
    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        EasyPermissions.onRequestPermissionsResult(requestCode, permissions, grantResults, WebViewActivity6.this);
    }

    // 3、EasyPermissions.PermissionCallbacks接口

    @SuppressLint("MissingPermission")
    @Override
    public void onPermissionsGranted(int requestCode, @NonNull List<String> perms) {
        switch (requestCode) {
            case MY_PERMISSIONS_REQUEST_READ_CONTACTS: {

//                try {
//                    System.out.println("权限允许---------------------------------------方法执行了！");
//
//                    String json = buildJson(getContacts());
////                wb_webView.loadUrl("javascript:show('" + json + "')");
//                    Message message = handler.obtainMessage();
//                    message.obj = json;
//                    handler.sendMessage(message);
//
//                } catch (Exception e) {
//                    System.out.println("设置数据失败：" + e);
//                }


                // UI线程进行
                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        try {
                            System.out.println("contactlist()方法执行了！");

                            String json = buildJson(getContacts());
                            wb_webView.loadUrl("javascript:show('" + json + "')");

                        } catch (Exception e) {
                            System.out.println("设置数据失败：" + e);
                        }
                    }
                });
                return;
            }
            case MY_PERMISSIONS_REQUEST_CALL_CONTACTS: {

                Intent it = new Intent(Intent.ACTION_CALL, Uri.parse("tel:" + mPhone));
                startActivity(it);

                return;
            }
        }
    }

    @Override
    public void onPermissionsDenied(int requestCode, @NonNull List<String> perms) {
        switch (requestCode) {
            case MY_PERMISSIONS_REQUEST_READ_CONTACTS: {

                System.out.println("----------------------权限拒绝");

                return;
            }
            case MY_PERMISSIONS_REQUEST_CALL_CONTACTS: {

                System.out.println("----------------------权限拒绝");

                return;
            }
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