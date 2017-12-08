package com.queqianme.www.packupdemoproject;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.TextView;

import com.meituan.android.walle.WalleChannelReader;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // 获取多环境信息
        int envType = BuildConfig.ENV_TYPE;
        System.out.println("多环境信息-----------------------------" + envType);

        // 获取API地址
        String api_host = BuildConfig.API_HOST;
        System.out.println("API地址-----------------------------" + api_host);

        boolean isDebugLog = BuildConfig.LOG_DEBUG;
        System.out.println("是否输出LOG信息-----------------------------" + isDebugLog);

        TextView txt_hello = (TextView) findViewById(R.id.txt_hello);
        // 获取多渠道信息
        String channel = WalleChannelReader.getChannel(this);
        System.out.println("渠道信息-----------------------------" + channel);
        txt_hello.setText("walle渠道信息：" + channel);

        // 360加固
        if (channel == null) {
            channel = getChannelString(this);
            txt_hello.setText("360渠道信息：" + channel);
        }
    }

    /**
     * 获取渠道
     *
     * @return
     */
    public static String getChannelString(Context ctx) {
        if (ctx == null) {
            return null;
        }
        String channelName = null;
        try {
            PackageManager packageManager = ctx.getPackageManager();
            if (packageManager != null) {
                //注意此处为ApplicationInfo 而不是 ActivityInfo,因为友盟设置的meta-data是在application标签中，而不是某activity标签中，所以用ApplicationInfo
                ApplicationInfo applicationInfo = packageManager.getApplicationInfo(ctx.getPackageName(), PackageManager.GET_META_DATA);
                if (applicationInfo != null) {
                    if (applicationInfo.metaData != null) {
                        channelName = applicationInfo.metaData.getString("UMENG_CHANNEL");
                    }
                }

            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return channelName;
    }
}
