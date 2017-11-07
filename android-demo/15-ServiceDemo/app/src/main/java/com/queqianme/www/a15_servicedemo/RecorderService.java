package com.queqianme.www.a15_servicedemo;

import android.app.Service;
import android.content.Intent;
import android.media.MediaRecorder;
import android.os.IBinder;
import android.support.annotation.Nullable;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;

import java.io.IOException;

/**
 * Created by liupuyan on 2017/10/31.
 */

public class RecorderService extends Service {

    private MediaRecorder recorder;

    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();

        System.out.println("create");

        // 获取电话管理器
        TelephonyManager tm = (TelephonyManager) getSystemService(TELEPHONY_SERVICE);
        // 监听电话状态
        tm.listen(new MyListener(), PhoneStateListener.LISTEN_CALL_STATE);
    }

    class MyListener extends PhoneStateListener {
        // 电话状态改变时回调
        @Override
        public void onCallStateChanged(int state, String incomingNumber) {
            super.onCallStateChanged(state, incomingNumber);

            // 判断当前是什么状态
            switch (state) {
                case TelephonyManager.CALL_STATE_IDLE:
                    if (recorder != null) {
                        System.out.println("停止录音");
                        recorder.stop();
                        recorder.release();
                        recorder = null;
                    }
                    break;
                case TelephonyManager.CALL_STATE_RINGING:
                    if (recorder == null) {
                        recorder = new MediaRecorder();
                        // 设置音频来源
                        recorder.setAudioSource(MediaRecorder.AudioSource.MIC);
                        // 设置输出格式
                        recorder.setOutputFormat(MediaRecorder.OutputFormat.THREE_GPP);
                        recorder.setOutputFile("sdcard/voice.3gp");
                        // 设置音频编码
                        recorder.setAudioEncoder(MediaRecorder.AudioEncoder.AMR_NB);
                        try {
                            System.out.println("准备好");
                            recorder.prepare();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                    break;
                case TelephonyManager.CALL_STATE_OFFHOOK:
                    if (recorder != null) {
                        System.out.println("开始录音");
                        recorder.start();
                    }
                    break;
            }
        }
    }
}
