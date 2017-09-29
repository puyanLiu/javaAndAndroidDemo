.class final Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;
.super Ljava/lang/Object;
.source "ScanCallback.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceFoundReceiver:Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AliBluetoothReceiver;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private final m_BTA:Landroid/bluetooth/BluetoothAdapter;

.field private final m_DeviceFoundCB:Lcom/alipay/security/mobile/bracelet/scan/IDeviceFoundCallback;

.field private m_isScanning:Z


# direct methods
.method public constructor <init>([Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$DeviceFilter;Lcom/alipay/security/mobile/bracelet/scan/IDeviceFoundCallback;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->m_BTA:Landroid/bluetooth/BluetoothAdapter;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->m_isScanning:Z

    .line 28
    iput-object p2, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->m_DeviceFoundCB:Lcom/alipay/security/mobile/bracelet/scan/IDeviceFoundCallback;

    .line 29
    return-void
.end method

.method static synthetic access$200(Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;)Lcom/alipay/security/mobile/bracelet/scan/IDeviceFoundCallback;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->m_DeviceFoundCB:Lcom/alipay/security/mobile/bracelet/scan/IDeviceFoundCallback;

    return-object v0
.end method

.method private cancelTimer()V
    .locals 1

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->mTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->mTimerTask:Ljava/util/TimerTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private scheduleTimer(J)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->cancelTimer()V

    .line 66
    new-instance v0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$1;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$1;-><init>(Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->mTimerTask:Ljava/util/TimerTask;

    .line 72
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->mTimer:Ljava/util/Timer;

    .line 73
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 74
    return-void
.end method


# virtual methods
.method public final onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;-><init>([BLcom/alipay/security/mobile/bracelet/scan/ScanCallback$1;)V

    .line 33
    iget-object v1, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->m_DeviceFoundCB:Lcom/alipay/security/mobile/bracelet/scan/IDeviceFoundCallback;

    invoke-static {v0}, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->access$100(Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, p1, p2, v0}, Lcom/alipay/security/mobile/bracelet/scan/IDeviceFoundCallback;->onDeviceFound(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V

    .line 34
    return-void
.end method

.method public final declared-synchronized startScan(Landroid/content/Context;[Ljava/util/UUID;)Z
    .locals 3

    .prologue
    .line 40
    monitor-enter p0

    const-wide/32 v0, 0xea60

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->scheduleTimer(J)V

    .line 42
    iget-boolean v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->m_isScanning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 43
    const/4 v0, 0x0

    .line 61
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 45
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->m_BTA:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p2, p0}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 48
    :try_start_2
    iput-object p1, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->mContext:Landroid/content/Context;

    .line 49
    if-eqz p1, :cond_2

    .line 50
    new-instance v1, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AliBluetoothReceiver;

    invoke-direct {v1, p0}, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AliBluetoothReceiver;-><init>(Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;)V

    iput-object v1, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->mDeviceFoundReceiver:Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AliBluetoothReceiver;

    .line 51
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.bluetooth.device.action.FOUND"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->mDeviceFoundReceiver:Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AliBluetoothReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 59
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->m_isScanning:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public final declared-synchronized stopScan()V
    .locals 2

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->m_BTA:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AliBluetoothReceiver;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AliBluetoothReceiver;-><init>(Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->mDeviceFoundReceiver:Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AliBluetoothReceiver;

    .line 101
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->mDeviceFoundReceiver:Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AliBluetoothReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->m_BTA:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->cancelTimer()V

    .line 107
    iget-boolean v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->m_isScanning:Z

    if-eqz v0, :cond_1

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback;->m_isScanning:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    :cond_1
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
