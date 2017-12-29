package com.queqianme.www.retrofitdemoproject.netstate;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

import com.queqianme.www.retrofitdemoproject.R;

/**
 * Created by liupuyan on 2017/12/28.
 */
public class NetActivity extends AppCompatActivity implements NetBroadcastReceiver.NetEvevt {

    /**
     * 网络类型
     */
    private int netMobile;
    public static NetBroadcastReceiver.NetEvevt evevt;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_net);

        //监听网络变化
        evevt = this;

        System.out.println("-----------" + NetType.NONE.value + NetType.MOBILE4G);

    }

    public enum NetType {

        NONE(0), WIFI(1), MOBILE2G(2), MOBILE3G(3), MOBILE4G(4);

        private int value = 0;

        private NetType(int value) {
            this.value = value;
        }
    }

    @Override
    public void onNetChange(int netMobile) {
        this.netMobile = netMobile;
        System.out.println("--------------------netMobile" + netMobile);
        if (isNetConnect()) {
            System.out.println("-----------------------有网络");
        } else {
            System.out.println("-----------------------没有网络");
        }
    }

    /**
     * 判断有无网络 。
     *
     * @return true 有网, false 没有网络.
     */
    public boolean isNetConnect() {
        if (netMobile == NetType.NONE.value) {
            return false;
        } else {
            return true;
        }
    }
}