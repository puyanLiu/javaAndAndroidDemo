.class public Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;
.super Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;
.source "GattPeripheral.java"

# interfaces
.implements Lcom/alipay/security/mobile/module/bracelet/lib/core/IGattPeripheral;


# static fields
.field private static final COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final ERROR_CLIENT_IF_UNKNOWN:I = -0x1

.field public static final FEATURE_FORCE_REFRESH:I = 0x1

.field private static __feature__forceRefresh:Z

.field private static m_BTA:Landroid/bluetooth/BluetoothAdapter;

.field private static m_BTM:Landroid/bluetooth/BluetoothManager;


# instance fields
.field private final ID:I

.field private m_AutoReconnect:Z

.field private final m_ConnCB:Lcom/alipay/security/mobile/module/bracelet/lib/core/IConnectionStateChangeCallback;

.field private final m_Context:Landroid/content/Context;

.field private final m_Device:Landroid/bluetooth/BluetoothDevice;

.field private final m_Executor:Ljava/util/concurrent/ExecutorService;

.field private m_Gatt:Landroid/bluetooth/BluetoothGatt;

.field private final m_NotifyCBs:Ljava/util/Map;

.field private m_State:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

.field private final m_StateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    sput-boolean v1, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->__feature__forceRefresh:Z

    .line 34
    sput-object v2, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_BTM:Landroid/bluetooth/BluetoothManager;

    .line 35
    sput-object v2, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_BTA:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/alipay/security/mobile/module/bracelet/lib/core/IConnectionStateChangeCallback;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_NotifyCBs:Ljava/util/Map;

    .line 42
    sget-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->DISCONNECTED:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_State:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_AutoReconnect:Z

    .line 53
    iput-object p1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Context:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Device:Landroid/bluetooth/BluetoothDevice;

    .line 55
    iput-object p3, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_ConnCB:Lcom/alipay/security/mobile/module/bracelet/lib/core/IConnectionStateChangeCallback;

    .line 56
    const-string/jumbo v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    sput-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_BTM:Landroid/bluetooth/BluetoothManager;

    .line 57
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_BTA:Landroid/bluetooth/BluetoothAdapter;

    .line 58
    sget-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->ID:I

    .line 59
    new-instance v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$1;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$1;-><init>(Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Executor:Ljava/util/concurrent/ExecutorService;

    .line 65
    return-void
.end method

.method private GattCB_onConnected()V
    .locals 2

    .prologue
    .line 178
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->CONNECTED:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_State:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    .line 180
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_ConnCB:Lcom/alipay/security/mobile/module/bracelet/lib/core/IConnectionStateChangeCallback;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_ConnCB:Lcom/alipay/security/mobile/module/bracelet/lib/core/IConnectionStateChangeCallback;

    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Device:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Lcom/alipay/security/mobile/module/bracelet/lib/core/IConnectionStateChangeCallback;->onConnected(Landroid/bluetooth/BluetoothDevice;)V

    .line 184
    :cond_0
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private GattCB_onConnectionFailed()V
    .locals 2

    .prologue
    .line 187
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->DISCONNECTED:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_State:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    .line 189
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_ConnCB:Lcom/alipay/security/mobile/module/bracelet/lib/core/IConnectionStateChangeCallback;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_ConnCB:Lcom/alipay/security/mobile/module/bracelet/lib/core/IConnectionStateChangeCallback;

    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Device:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Lcom/alipay/security/mobile/module/bracelet/lib/core/IConnectionStateChangeCallback;->onConnectionFailed(Landroid/bluetooth/BluetoothDevice;)V

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->cleanup()V

    .line 194
    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private GattCB_onDisconnected()V
    .locals 2

    .prologue
    .line 197
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->DISCONNECTED:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_State:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    .line 199
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_ConnCB:Lcom/alipay/security/mobile/module/bracelet/lib/core/IConnectionStateChangeCallback;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_ConnCB:Lcom/alipay/security/mobile/module/bracelet/lib/core/IConnectionStateChangeCallback;

    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Device:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Lcom/alipay/security/mobile/module/bracelet/lib/core/IConnectionStateChangeCallback;->onDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->cleanup()V

    .line 204
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static __clientConnect(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 360
    :try_start_0
    const-class v2, Landroid/bluetooth/BluetoothGatt;

    const-string/jumbo v3, "mService"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 361
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 362
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 363
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 364
    const-string/jumbo v4, "clientConnect"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 366
    invoke-static {p0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->__getClientIf(Landroid/bluetooth/BluetoothGatt;)I

    move-result v4

    .line 367
    if-gtz v4, :cond_0

    .line 376
    :goto_0
    return v0

    .line 370
    :cond_0
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x2

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 372
    goto :goto_0

    .line 376
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static __clientConnect_transport(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 381
    :try_start_0
    const-class v2, Landroid/bluetooth/BluetoothGatt;

    const-string/jumbo v3, "mService"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 382
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 383
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 384
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 385
    const-string/jumbo v4, "clientConnect"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 387
    invoke-static {p0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->__getClientIf(Landroid/bluetooth/BluetoothGatt;)I

    move-result v4

    .line 388
    if-gtz v4, :cond_0

    .line 398
    :goto_0
    return v0

    .line 391
    :cond_0
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x2

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x3

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 393
    goto :goto_0

    .line 394
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static __forceRefresh(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 402
    sget-boolean v2, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->__feature__forceRefresh:Z

    if-nez v2, :cond_0

    .line 415
    :goto_0
    return v0

    .line 405
    :cond_0
    if-nez p0, :cond_1

    move v0, v1

    .line 406
    goto :goto_0

    .line 409
    :cond_1
    :try_start_0
    const-class v2, Landroid/bluetooth/BluetoothGatt;

    const-string/jumbo v3, "refresh"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 410
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private static __getClientIf(Landroid/bluetooth/BluetoothGatt;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 419
    if-nez p0, :cond_0

    .line 430
    :goto_0
    return v0

    .line 423
    :cond_0
    :try_start_0
    const-class v1, Landroid/bluetooth/BluetoothGatt;

    const-string/jumbo v2, "mClientIf"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 425
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 426
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static __printGatt(Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    .prologue
    .line 441
    if-nez p0, :cond_0

    .line 445
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->ID:I

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->GattCB_onConnected()V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->GattCB_onDisconnected()V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->GattCB_onConnectionFailed()V

    return-void
.end method

.method public static final enableFeature(I)V
    .locals 1

    .prologue
    .line 48
    and-int/lit8 v0, p0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->__feature__forceRefresh:Z

    .line 49
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected cleanup()V
    .locals 2

    .prologue
    .line 303
    invoke-super {p0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->cleanup()V

    .line 304
    iget-boolean v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_AutoReconnect:Z

    if-eqz v0, :cond_0

    .line 306
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->connect(Z)V

    .line 312
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final declared-synchronized close()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 315
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_AutoReconnect:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :try_start_1
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 320
    const/4 v0, 0x1

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->cleanup()V

    .line 325
    if-nez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    :cond_1
    :goto_0
    :try_start_2
    invoke-super {p0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 342
    :goto_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 342
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public final declared-synchronized connect(Z)V
    .locals 4

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_AutoReconnect:Z

    .line 69
    sget-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_BTA:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 106
    :goto_0
    monitor-exit p0

    return-void

    .line 73
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getType()I

    .line 75
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    :try_start_2
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_State:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    sget-object v2, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->DISCONNECTED:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    if-eq v0, v2, :cond_1

    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CONNECTION ABORTED, REASON: ILLEGAL STATE ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_State:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 68
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 80
    :cond_1
    :try_start_4
    sget-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->CONNECTING:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_State:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    .line 81
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 82
    :try_start_5
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_2

    .line 83
    const-string/jumbo v0, "\u8c03\u7528connectGatt\u8fde\u63a5\u624b\u73af"

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->debug(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Device:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    .line 85
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_3

    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "m_Gatt == null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 92
    const-string/jumbo v0, "Android 5.0\u91cd\u65b0\u8fde\u63a5"

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->debug(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 94
    :try_start_6
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 97
    :goto_1
    :try_start_7
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Device:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    .line 103
    :goto_2
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->__getClientIf(Landroid/bluetooth/BluetoothGatt;)I

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->__forceRefresh(Landroid/bluetooth/BluetoothGatt;)Z

    goto/16 :goto_0

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->__clientConnect(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final declared-synchronized disconnect(Z)V
    .locals 3

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_AutoReconnect:Z

    .line 110
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_State:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    sget-object v2, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->CONNECTED:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    if-ne v0, v2, :cond_1

    .line 112
    sget-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->DISCONNECTING:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_State:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    .line 113
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 119
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 114
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_State:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    sget-object v2, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->CONNECTING:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    if-ne v0, v2, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 116
    sget-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->DISCONNECTED:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_State:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 109
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public discoverServices()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 455
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 456
    :try_start_0
    iget-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_State:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    sget-object v3, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->CONNECTED:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    if-eq v2, v3, :cond_1

    .line 457
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    :cond_0
    :goto_0
    return v0

    .line 459
    :cond_1
    monitor-exit v1

    .line 460
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, v1}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->synchronizedDiscoverServices(Landroid/bluetooth/BluetoothGatt;)I

    move-result v1

    .line 461
    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public final getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    return-object v0
.end method

.method public final getServices()Ljava/util/List;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 3

    .prologue
    .line 345
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_State:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    sget-object v2, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->CONNECTED:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    .line 243
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_NotifyCBs:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/INotifyCallback;

    .line 244
    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v0, v1}, Lcom/alipay/security/mobile/module/bracelet/lib/core/INotifyCallback;->notify([B)V

    .line 247
    :cond_0
    return-void
.end method

.method public final onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->__printGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 124
    invoke-static {p1}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->__printGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 125
    if-nez p2, :cond_0

    .line 126
    packed-switch p3, :pswitch_data_0

    .line 151
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "newState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$2;

    invoke-direct {v1, p0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$2;-><init>(Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 175
    :goto_0
    return-void

    .line 139
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$3;

    invoke-direct {v1, p0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$3;-><init>(Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 155
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 163
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :sswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "ERROR 141"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :sswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "ERROR 0x101"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :sswitch_2
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$4;

    invoke-direct {v1, p0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$4;-><init>(Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 155
    :sswitch_data_0
    .sparse-switch
        0x85 -> :sswitch_2
        0x8d -> :sswitch_0
        0x101 -> :sswitch_1
    .end sparse-switch
.end method

.method public final onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public final read(Landroid/bluetooth/BluetoothGattCharacteristic;)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 215
    if-nez p1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-object v0

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_State:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    sget-object v3, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->CONNECTED:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    if-eq v2, v3, :cond_2

    .line 220
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    monitor-exit v1

    .line 223
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, v1, p1}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->synchronizedReadCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)I

    move-result v1

    .line 224
    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    goto :goto_0
.end method

.method public final readRemoteRSSI()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, v0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->synchronizedReadRemoteRSSI(Landroid/bluetooth/BluetoothGatt;)I

    move-result v0

    return v0
.end method

.method public final registerNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/alipay/security/mobile/module/bracelet/lib/core/INotifyCallback;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 254
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v0

    .line 257
    :cond_1
    iget-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_NotifyCBs:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, p1, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v2

    .line 260
    if-eqz v2, :cond_0

    .line 263
    sget-object v2, Lcom/alipay/security/mobile/module/bracelet/lib/util/Utils;->UUID_DESCRIPTOR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    .line 265
    if-eqz v2, :cond_0

    .line 268
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-lez v3, :cond_2

    .line 269
    iget-object v3, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v4, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p0, v3, v2, v4}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->synchronizedWriteDescriptor(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;[B)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 272
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-lez v3, :cond_0

    .line 273
    iget-object v3, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v4, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-virtual {p0, v3, v2, v4}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->synchronizedWriteDescriptor(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;[B)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final unregisterNotification(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 280
    if-nez p1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_NotifyCBs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 285
    :try_start_0
    iget-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_State:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    sget-object v3, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->CONNECTED:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    if-eq v2, v3, :cond_2

    .line 286
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    monitor-exit v1

    .line 289
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, p1, v0}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v1

    .line 290
    if-eqz v1, :cond_0

    .line 293
    sget-object v1, Lcom/alipay/security/mobile/module/bracelet/lib/util/Utils;->UUID_DESCRIPTOR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    .line 295
    if-eqz v1, :cond_0

    .line 296
    iget-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p0, v2, v1, v3}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->synchronizedWriteDescriptor(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;[B)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final write(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 228
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_State:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    sget-object v3, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->CONNECTED:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    if-eq v2, v3, :cond_2

    .line 233
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    monitor-exit v1

    .line 236
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, v1, p1, p2}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral;->synchronizedWriteCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)I

    move-result v1

    .line 237
    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
