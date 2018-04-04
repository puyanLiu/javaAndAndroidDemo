package com.queqianme.www.locationdemoproject;

import android.content.Context;

import com.baidu.location.BDAbstractLocationListener;
import com.baidu.location.BDLocation;
import com.baidu.location.LocationClient;
import com.baidu.location.LocationClientOption;

/**
 * Created by liupuyan on 2018/3/20.
 * 百度地图定位工具类
 */

public class BDLocationUtil {
    /**
     * 单例
     *
     * @return
     */
    public static BDLocationUtil getInstance() {
        return LocationHolder.INSTANCE;
    }

    private static class LocationHolder {
        private static final BDLocationUtil INSTANCE = new BDLocationUtil();
    }

    private BDLocationUtil() {
    }

    /**
     * 定位回调的接口
     */
    public interface MyLocationListener {
        void myLocation(BDLocation location);
    }

    /**
     * 获取当前位置
     */
    public void requestLocation(final MyLocationListener listener, Context context) {
        //声明LocationClient类
        final LocationClient locationClient = new LocationClient(context);
        // 设置定位条件
        LocationClientOption option = new LocationClientOption();
        option.setOpenGps(true);                // 是否打开GPS
        option.setCoorType("bd09ll");           // 设置返回值的坐标类型
        option.setScanSpan(10000);              // 设置定时定位的时间间隔。单位毫秒
        option.setIsNeedAddress(true);          //可选，设置是否需要地址信息，默认不需要
        option.setIgnoreKillProcess(false);     //可选，默认true，定位SDK内部是一个SERVICE，并放到了独立进程，设置是否在stop的时候杀死这个进程，默认不杀死
        locationClient.setLocOption(option);
        // 注册位置监听器
        locationClient.registerLocationListener(new BDAbstractLocationListener() {
            @Override
            public void onReceiveLocation(BDLocation location) {
                listener.myLocation(location);
                locationClient.stop();
            }
        });
        locationClient.start();
        /*
         * 当所设的整数值大于等于1000（ms）时，定位SDK内部使用定时定位模式。调用requestLocation(
         * )后，每隔设定的时间，定位SDK就会进行一次定位。如果定位SDK根据定位依据发现位置没有发生变化，就不会发起网络请求，
         * 返回上一次定位的结果；如果发现位置改变，就进行网络请求进行定位，得到新的定位结果。
         * 定时定位时，调用一次requestLocation，会定时监听到定位结果。
         */
        locationClient.requestLocation();
    }
}
