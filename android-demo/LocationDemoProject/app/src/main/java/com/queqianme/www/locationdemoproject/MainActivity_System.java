package com.queqianme.www.locationdemoproject;

import android.Manifest;
import android.content.Context;
import android.content.pm.PackageManager;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import java.util.List;

import static android.os.Build.VERSION_CODES.M;

/**
 使用百度位置定位SDK
 */
public class MainActivity_System extends AppCompatActivity {

    private Button btn_click;
    private TextView txt_value;


    // 通过使用LocationManager来获取移动设备所在的地理位置信息
    private LocationManager locationManager;
    private String locationProvider;
    private LocationListener locationListener;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // 获取地理位置管理器
        locationManager = (LocationManager) getSystemService(Context.LOCATION_SERVICE);
        getLastKnownLocation();
        btn_click = (Button) findViewById(R.id.btn_click);
        txt_value = (TextView) findViewById(R.id.txt_Value);
        btn_click.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                requestPermission();
            }
        });

        // 获取所有可用的位置提供器 有GPS_PROVIDER、NETWORK_PROVIDER、PASSIVE_PROVIDER三种，前两种比较常用
        List<String> providers = locationManager.getProviders(true);
        if (providers.contains(LocationManager.GPS_PROVIDER)) {
            // 如果是GPS
            locationProvider = LocationManager.GPS_PROVIDER;
        } else if (providers.contains(LocationManager.NETWORK_PROVIDER)) {
            // 如果是Network
            locationProvider = LocationManager.NETWORK_PROVIDER;
        } else if (providers.contains(LocationManager.PASSIVE_PROVIDER)) {
            // 如果是Network
            locationProvider = LocationManager.PASSIVE_PROVIDER;
        } else {
            Toast.makeText(this, "没有可用的位置提供器", Toast.LENGTH_SHORT).show();
            return;
        }

        /**
         * LocationListener监听器
         * 参数：地理位置提供器、监听位置变化的时间间隔(毫秒)、位置变化的距离间隔、LocationListener监听器
         */
        // 如果位置变化，重新显示
        locationListener = new LocationListener() {
            @Override
            public void onLocationChanged(Location location) {
                // 事实发现 onLocationChanged永远不会被调用，仍然没法获取定位信息
                if (location == null) {
                    Toast.makeText(MainActivity_System.this, "当前位置获取不成功", Toast.LENGTH_SHORT).show();
                } else {
                    System.out.println("定位发生改变：" + location);
                    // 如果位置变化，重新显示
                    showLocation(location);
                }
            }

            @Override
            public void onStatusChanged(String provider, int status, Bundle extras) {

            }

            @Override
            public void onProviderEnabled(String provider) {
                // 位置提供器可用调用
            }

            @Override
            public void onProviderDisabled(String provider) {
                // 位置提供器不可用调用
            }
        };
    }

    public static final int EXTERNAL_STORAGE_REQ_LOCATION_CODE = 10;

    private void requestPermission() {
        if (Build.VERSION.SDK_INT >= M) {
            // 检查运行时权限
            if (ContextCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED &&
                    ContextCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
                // 进行权限请求
                ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.ACCESS_FINE_LOCATION, Manifest.permission.ACCESS_COARSE_LOCATION}, EXTERNAL_STORAGE_REQ_LOCATION_CODE);
            } else {
                getLocation();
            }
        } else {
            getLocation();
        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        if (requestCode == EXTERNAL_STORAGE_REQ_LOCATION_CODE) {
            if (grantResults[0] != PackageManager.PERMISSION_GRANTED) {
                // Permission Granted 获取权限失败
                Toast.makeText(this, "获取权限失败", Toast.LENGTH_SHORT).show();
            } else {
                getLocation();
            }
        }
    }

    public void getLocation() {
        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED &&
                ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            // 未获取到权限
            return;
        }
        // 获取Location位置信息
        // getLastKnownLocation: 1. 获取当前地理位置 2.如果当前位置定位不成功，则可以用此方法获取缓存中的上一次打开地图时定位的地理位置
        // 使用GPS时，GPS定位不是一下子就能定位成功的，在90%以上的情况下，getLastKnownLocation返回null
//        Location location = locationManager.getLastKnownLocation(locationProvider);

        List<String> providers = locationManager.getProviders(true);
        Location location = null;
        if (providers.contains(LocationManager.GPS_PROVIDER)) {
            System.out.println("location----GPS_PROVIDER");
            // 如果是GPS
            locationProvider = LocationManager.GPS_PROVIDER;
            location = locationManager.getLastKnownLocation(LocationManager.GPS_PROVIDER);
        }
        if (location == null) {
            if (providers.contains(LocationManager.NETWORK_PROVIDER)) {
                System.out.println("location----NETWORK_PROVIDER");
                // 如果是Network
                locationProvider = LocationManager.NETWORK_PROVIDER;
                location = locationManager.getLastKnownLocation(LocationManager.NETWORK_PROVIDER);
            }
        }
        if (location == null) {
            if (providers.contains(LocationManager.PASSIVE_PROVIDER)) {
                System.out.println("location----PASSIVE_PROVIDER");
                // 如果是Network
                locationProvider = LocationManager.PASSIVE_PROVIDER;
                location = locationManager.getLastKnownLocation(LocationManager.PASSIVE_PROVIDER);
            }
        }



        List<String> providers1 = locationManager.getProviders(true);
        location = locationManager.getLastKnownLocation(LocationManager.NETWORK_PROVIDER);
        for (String provider : providers1) {
            Location l = locationManager.getLastKnownLocation(provider);
            if (l == null) {
                continue;
            }
            if (location == null || l.getAccuracy() < location.getAccuracy()) {
                // Found best last known location: %s", l);
                location = l;
            }
        }
        System.out.println("bestLocation----" + location);



        // 由系统根据用户的配置为用户选择一个最接近用户需求的provider
        Criteria criteria = new Criteria();
        criteria.setAccuracy(Criteria.ACCURACY_FINE); //精度
        criteria.setPowerRequirement(Criteria.POWER_LOW); //功耗类型选择
        String provider = mLocationManager.getBestProvider(criteria, true);
        location = locationManager.getLastKnownLocation(provider);
        System.out.println("location----" + location);


        if (location != null) {
            // 不为空 显示地理位置经纬度
            showLocation(location);
        } else {
            Toast.makeText(this, "获取的位置为null", Toast.LENGTH_SHORT).show();
            System.out.println("location----" + location);
        }

//        String query_name = updateWithNewLocation(location);
//        if (query_name != null && (0 != query_name.length())) {
//            System.out.println("-------" + query_name);
//        }


    }

    @Override
    protected void onResume() {
        super.onResume();

        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED &&
                ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            // 未获取到权限
            return;
        }


        // 监视地理位置变化
        /**
         * 第二个参数表示更新的周期，单位为毫秒；第三个参数表示最小距离间隔，单位是米 设定每3秒进行一次自动定位
         */
        locationManager.requestLocationUpdates(locationProvider, 3000, 1, locationListener);
    }

    @Override
    protected void onPause() {
        super.onPause();
        if (locationManager != null) {
            // 省电 节约资源
            // 移除监听器
            locationManager.removeUpdates(locationListener);
        }
    }

    private void showLocation(Location location) {
        String locationStr = "纬度：" + location.getLatitude() + "\n" + "经度：" + location.getLongitude();
        txt_value.setText(locationStr);
    }

    /**
     * 更新Location 根据位置获取城市名
     * @param location
     * @return
     */
    private String updateWithNewLocation(Location location) {
        return "哈哈";
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
    }


    LocationManager mLocationManager;

    private Location getLastKnownLocation() {
        mLocationManager = (LocationManager) getSystemService(Context.LOCATION_SERVICE);
        List<String> providers = mLocationManager.getProviders(true);
        Location bestLocation = null;
        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED &&
                ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            // 未获取到权限
            return null;
        }
        for (String provider : providers) {
            Location l = mLocationManager.getLastKnownLocation(provider);
            if (l == null) {
                continue;
            }
            if (bestLocation == null || l.getAccuracy() < bestLocation.getAccuracy()) {
                // Found best last known location: %s", l);
                bestLocation = l;
            }
        }
        System.out.println("-------++++++++" + bestLocation);
        return bestLocation;
    }
}
