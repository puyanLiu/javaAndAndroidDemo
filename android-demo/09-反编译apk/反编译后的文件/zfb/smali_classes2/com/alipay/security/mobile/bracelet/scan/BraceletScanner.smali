.class public Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;
.super Ljava/lang/Object;
.source "BraceletScanner.java"


# static fields
.field public static final COMMON_UUID_SERVICE:Ljava/util/UUID;

.field public static final WATCH_UUID_SERVICE:Ljava/util/UUID;

.field public static final XIAOMI_UUID_ALL:Ljava/util/UUID;

.field public static final XIAOMI_UUID_SERVICE:Ljava/util/UUID;

.field private static mConnectedDeviceLock:Ljava/lang/Object;

.field private static scanner:Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;


# instance fields
.field private mInnerScanner:Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;

.field private mListener:Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner$IDeviceFoundListener;

.field private mWearableType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "FEE0"

    invoke-static {v0}, Lcom/alipay/security/mobile/bracelet/scan/Utils;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->XIAOMI_UUID_ALL:Ljava/util/UUID;

    .line 29
    const-string/jumbo v0, "FEE1"

    invoke-static {v0}, Lcom/alipay/security/mobile/bracelet/scan/Utils;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->XIAOMI_UUID_SERVICE:Ljava/util/UUID;

    .line 30
    const-string/jumbo v0, "FEC1"

    invoke-static {v0}, Lcom/alipay/security/mobile/bracelet/scan/Utils;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->COMMON_UUID_SERVICE:Ljava/util/UUID;

    .line 31
    const-string/jumbo v0, "FEC2"

    invoke-static {v0}, Lcom/alipay/security/mobile/bracelet/scan/Utils;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->WATCH_UUID_SERVICE:Ljava/util/UUID;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->mConnectedDeviceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v2, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->mListener:Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner$IDeviceFoundListener;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->mWearableType:I

    .line 59
    new-instance v0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;

    new-instance v1, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner$1;

    invoke-direct {v1, p0}, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner$1;-><init>(Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;)V

    invoke-direct {v0, v2, v1}, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;-><init>([Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$DeviceFilter;Lcom/alipay/security/mobile/bracelet/scan/IDeviceFoundCallback;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->mInnerScanner:Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->mWearableType:I

    return v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)Z
    .locals 1

    .prologue
    .line 26
    invoke-static {p0, p1, p2}, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->isMatchType(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;)Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner$IDeviceFoundListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->mListener:Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner$IDeviceFoundListener;

    return-object v0
.end method

.method public static getConnectedDevice(Landroid/content/Context;I)Ljava/util/List;
    .locals 9

    .prologue
    .line 96
    sget-object v1, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->mConnectedDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :try_start_1
    const-string/jumbo v0, "android.bluetooth.BluetoothManager"

    invoke-static {v0}, Lcom/alipay/security/mobile/util/CompatUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 101
    const-string/jumbo v0, "android.bluetooth.BluetoothProfile"

    invoke-static {v0}, Lcom/alipay/security/mobile/util/CompatUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 103
    const-class v0, Landroid/content/Context;

    const-string/jumbo v5, "BLUETOOTH_SERVICE"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    const-string/jumbo v5, "GATT"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 106
    const-string/jumbo v5, "getConnectedDevices"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-static {v3, v5, v6}, Lcom/alipay/security/mobile/util/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 109
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v0, v5, v3, v6}, Lcom/alipay/security/mobile/util/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 115
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 116
    invoke-static {p0, v0, p1}, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->isSupportWithConnecting(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 123
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getScanner()Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;
    .locals 3

    .prologue
    .line 79
    const-class v1, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;

    monitor-enter v1

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 86
    :goto_0
    monitor-exit v1

    return-object v0

    .line 83
    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->scanner:Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;

    invoke-direct {v0}, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->scanner:Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;

    .line 86
    :cond_1
    sget-object v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->scanner:Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isBracelet(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    .line 148
    if-eqz p1, :cond_2

    .line 149
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 150
    sget-object v4, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->XIAOMI_UUID_ALL:Ljava/util/UUID;

    invoke-virtual {v0, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->XIAOMI_UUID_SERVICE:Ljava/util/UUID;

    invoke-virtual {v0, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->COMMON_UUID_SERVICE:Ljava/util/UUID;

    invoke-virtual {v0, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    :cond_1
    :goto_0
    return v1

    .line 157
    :cond_2
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v3, "getUuids"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v0, v3, v4}, Lcom/alipay/security/mobile/util/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 158
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v0, v4}, Lcom/alipay/security/mobile/util/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/ParcelUuid;

    .line 160
    if-eqz v0, :cond_6

    .line 161
    array-length v4, v0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_6

    aget-object v5, v0, v3

    .line 162
    sget-object v6, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->XIAOMI_UUID_ALL:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    sget-object v7, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->XIAOMI_UUID_SERVICE:Ljava/util/UUID;

    invoke-virtual {v6, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    sget-object v6, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->COMMON_UUID_SERVICE:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move v0, v1

    .line 169
    :goto_2
    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    move v2, v0

    :goto_4
    move v1, v2

    .line 175
    goto :goto_0

    .line 161
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method private static isMatchType(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)Z
    .locals 1

    .prologue
    .line 128
    packed-switch p1, :pswitch_data_0

    .line 135
    invoke-static {p0, p2}, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->isBracelet(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p2}, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->isWatch(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 130
    :pswitch_0
    invoke-static {p0, p2}, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->isBracelet(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;)Z

    move-result v0

    goto :goto_0

    .line 132
    :pswitch_1
    invoke-static {p0, p2}, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->isWatch(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;)Z

    move-result v0

    goto :goto_0

    .line 135
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isSupportWithConnecting(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5

    .prologue
    .line 222
    sget-object v1, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->mConnectedDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 224
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 225
    sget-object v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->WATCH_UUID_SERVICE:Ljava/util/UUID;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :goto_0
    invoke-static {p0}, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 232
    const/4 v0, 0x0

    .line 234
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->init(Landroid/bluetooth/BluetoothDevice;)V

    .line 235
    invoke-virtual {v3}, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->connect()V

    .line 236
    const/16 v4, 0x1f40

    invoke-virtual {v3, v4}, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->waitForConnected(I)Z

    .line 237
    invoke-virtual {v3, v2}, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->isMatchUUIDs(Ljava/util/List;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 241
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    :goto_2
    :try_start_3
    monitor-exit v1

    return v0

    .line 227
    :cond_0
    sget-object v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->XIAOMI_UUID_ALL:Ljava/util/UUID;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->XIAOMI_UUID_SERVICE:Ljava/util/UUID;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->COMMON_UUID_SERVICE:Ljava/util/UUID;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private static isWatch(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 185
    .line 187
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->getConfig()Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->isWatch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    :goto_0
    return v1

    .line 191
    :cond_0
    if-eqz p1, :cond_2

    .line 192
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 193
    sget-object v4, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->WATCH_UUID_SERVICE:Ljava/util/UUID;

    invoke-virtual {v0, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 199
    :cond_2
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v3, "getUuids"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v0, v3, v4}, Lcom/alipay/security/mobile/util/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 200
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v0, v4}, Lcom/alipay/security/mobile/util/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/ParcelUuid;

    .line 203
    if-eqz v0, :cond_5

    .line 204
    array-length v4, v0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v5, v0, v3

    .line 205
    sget-object v6, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->WATCH_UUID_SERVICE:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    move v0, v1

    .line 211
    :goto_2
    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    move v1, v0

    .line 217
    goto :goto_0

    .line 204
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 215
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    move v1, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method public addListener(Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner$IDeviceFoundListener;)V
    .locals 0

    .prologue
    .line 255
    if-eqz p1, :cond_0

    .line 256
    iput-object p1, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->mListener:Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner$IDeviceFoundListener;

    .line 258
    :cond_0
    return-void
.end method

.method public startScan(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->mInnerScanner:Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->stopScan()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    iput p2, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->mWearableType:I

    .line 270
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->mInnerScanner:Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/util/UUID;

    invoke-virtual {v0, p1, v1}, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->startScan(Landroid/content/Context;[Ljava/util/UUID;)Z

    .line 271
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopScan()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->mInnerScanner:Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->stopScan()V

    .line 278
    return-void
.end method
