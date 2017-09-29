.class public Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;
.super Ljava/lang/Object;
.source "LBSInfoGather.java"

# interfaces
.implements Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;


# static fields
.field private static a:Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;

.field private static h:Ljava/lang/String;

.field private static i:I

.field private static j:I

.field private static k:I


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

.field private f:Landroid/telephony/TelephonyManager;

.field private g:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "LBSLocationManager"

    sput-object v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->h:Ljava/lang/String;

    .line 52
    const/16 v0, 0x3e8

    sput v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->i:I

    .line 53
    const/16 v0, 0x3e9

    sput v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->j:I

    .line 54
    const/16 v0, 0x3ea

    sput v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->k:I

    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    .line 102
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->f:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->g:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather$1;-><init>(Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    .line 103
    return-void
.end method

.method private declared-synchronized a()Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 158
    monitor-enter p0

    :try_start_0
    new-instance v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;

    invoke-direct {v5}, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;-><init>()V

    .line 160
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->source:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v6

    iput-wide v6, v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    .line 164
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v6

    iput-wide v6, v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    .line 165
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getAccuracy()F

    move-result v0

    float-to-double v6, v0

    iput-wide v6, v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->accuracy:D

    .line 166
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getAltitude()D

    move-result-wide v6

    iput-wide v6, v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->altitude:D

    .line 167
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getBearing()F

    move-result v0

    float-to-double v6, v0

    iput-wide v6, v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->direction:D

    .line 168
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getSpeed()F

    move-result v0

    float-to-double v6, v0

    iput-wide v6, v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->speed:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 174
    if-nez v0, :cond_1

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->bluetoothOpen:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v4, v2, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->accessWirelessNetType:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v2}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    :goto_3
    iput-boolean v0, v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->lbsOpen:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    :goto_4
    :try_start_4
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->currentMobileOperator:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 207
    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v2}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    :goto_6
    iput-object v0, v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->gsmInfos:Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 213
    :goto_7
    :try_start_6
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v2}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v1

    :goto_8
    iput-object v0, v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->cdmaInfos:Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 219
    :goto_9
    :try_start_7
    invoke-direct {p0}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->wifiInfos:Ljava/util/List;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 225
    :goto_a
    :try_start_8
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "false"

    :goto_b
    iput-object v0, v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->wifiConn:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 230
    :goto_c
    monitor-exit p0

    return-object v5

    .line 177
    :cond_1
    :try_start_9
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    const/4 v2, 0x1

    iput-boolean v2, v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->bluetoothOpen:Z

    .line 179
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->bluetoothMac:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    :try_start_a
    sget-object v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->h:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    .line 181
    :cond_2
    const/4 v0, 0x0

    :try_start_b
    iput-boolean v0, v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->bluetoothOpen:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 189
    :cond_3
    :try_start_c
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1

    .line 191
    :catch_1
    move-exception v0

    :try_start_d
    sget-object v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->h:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_2

    .line 195
    :cond_5
    :try_start_e
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    const-string/jumbo v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string/jumbo v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v0

    goto :goto_3

    .line 197
    :catch_2
    move-exception v0

    :try_start_f
    sget-object v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->h:Ljava/lang/String;

    goto :goto_4

    .line 203
    :catch_3
    move-exception v0

    sget-object v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->h:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_5

    .line 207
    :cond_6
    :try_start_10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x5

    if-lt v4, v6, :cond_e

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v4, v3

    move v3, v0

    :goto_d
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_7

    instance-of v6, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v6, :cond_7

    new-instance v6, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;

    invoke-direct {v6}, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;-><init>()V

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    iput v3, v6, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->mnc:I

    iput v4, v6, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->mcc:I

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v7

    iput v7, v6, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->cid:I

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, v6, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->lac:I

    const/4 v0, -0x1

    iput v0, v6, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->rssi:I

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    move-object v0, v2

    goto/16 :goto_6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    if-eqz v0, :cond_8

    new-instance v7, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;

    invoke-direct {v7}, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;-><init>()V

    iput v3, v7, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->mnc:I

    iput v4, v7, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->mcc:I

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v8

    iput v8, v7, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->lac:I

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v8

    iput v8, v7, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->cid:I

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    iput v0, v7, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->rssi:I

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_e

    .line 209
    :catch_4
    move-exception v0

    :try_start_11
    sget-object v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->h:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_7

    .line 213
    :cond_b
    :try_start_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_c

    instance-of v2, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_c

    new-instance v2, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;

    invoke-direct {v2}, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;-><init>()V

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v3

    iput v3, v2, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;->bsid:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    iput v3, v2, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;->nid:I

    const/4 v3, -0x1

    iput v3, v2, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;->rssi:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v0

    iput v0, v2, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;->sid:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_c
    move-object v0, v1

    goto/16 :goto_8

    .line 215
    :catch_5
    move-exception v0

    :try_start_13
    sget-object v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->h:Ljava/lang/String;

    goto/16 :goto_9

    .line 221
    :catch_6
    move-exception v0

    sget-object v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->h:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_a

    .line 225
    :cond_d
    :try_start_14
    const-string/jumbo v0, "true"
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_b

    .line 227
    :catch_7
    move-exception v0

    :try_start_15
    sget-object v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->h:Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_c

    :cond_e
    move v4, v3

    goto/16 :goto_d
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->i:I

    return v0
.end method

.method static synthetic access$1(Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 140
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->a()Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v3

    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v4

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v4

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v3, v1}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoListener;->onLBSInfoChanged(Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;Z)V

    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->j:I

    return v0
.end method

.method static synthetic access$3(Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdates(Landroid/content/Context;Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->k:I

    return v0
.end method

.method static synthetic access$5(Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->removeUpdates(Landroid/content/Context;Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;)V

    :cond_0
    return-void
.end method

.method private b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 329
    new-instance v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;

    invoke-direct {v0}, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;-><init>()V

    .line 330
    iget-object v2, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 331
    if-eqz v2, :cond_1

    .line 332
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->mac:Ljava/lang/String;

    .line 333
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->ssid:Ljava/lang/String;

    .line 334
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    iput v2, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->rssi:I

    .line 338
    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_0

    .line 343
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 351
    :cond_0
    return-object v1

    .line 336
    :cond_1
    const-string/jumbo v2, "no_connected_wifi"

    iput-object v2, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->ssid:Ljava/lang/String;

    iput-object v2, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->mac:Ljava/lang/String;

    goto :goto_0

    .line 343
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 344
    new-instance v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;

    invoke-direct {v3}, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;-><init>()V

    .line 345
    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v4, v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->mac:Ljava/lang/String;

    .line 346
    iget-object v4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v4, v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->ssid:Ljava/lang/String;

    .line 347
    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    iput v0, v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->rssi:I

    .line 348
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->a:Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    invoke-direct {v0, p0}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->a:Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    .line 60
    :cond_0
    sget-object v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->a:Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    return-object v0
.end method


# virtual methods
.method public getLastKnownLBSInfo()Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;
    .locals 4

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->a()Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    if-nez v1, :cond_0

    .line 84
    invoke-static {}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getLastKnownLocation(Landroid/content/Context;)Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    .line 88
    invoke-virtual {v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    .line 89
    invoke-virtual {v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->accuracy:D

    .line 90
    invoke-virtual {v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getAltitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->altitude:D

    .line 91
    invoke-virtual {v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getBearing()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->direction:D

    .line 92
    invoke-virtual {v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getSpeed()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->speed:D

    .line 96
    :cond_0
    return-object v0
.end method

.method public getWifiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onLocationUpdate(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 0

    .prologue
    .line 367
    invoke-virtual {p0, p1}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->setLBSLocation(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;)V

    .line 368
    return-void
.end method

.method public removeUpdates(Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoListener;)V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    sget v2, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->k:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 78
    return-void
.end method

.method public requestLBSInfoUpdates(Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoListener;)V
    .locals 3

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    sget v2, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->i:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 72
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    sget v2, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->j:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 73
    return-void
.end method

.method protected declared-synchronized setLBSLocation(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 3

    .prologue
    .line 359
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 360
    :try_start_0
    iput-object p1, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    .line 361
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    sget v2, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->i:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :cond_0
    monitor-exit p0

    return-void

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
