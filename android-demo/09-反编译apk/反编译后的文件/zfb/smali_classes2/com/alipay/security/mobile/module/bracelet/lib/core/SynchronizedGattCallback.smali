.class abstract Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "SynchronizedGattCallback.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String;

.field private static final ERROR_GATT_INVALID:I = 0xff01

.field private static final ERROR_GATT_NOT_CONNECTED:I = 0xff04

.field private static final ERROR_GATT_OPERATION_FAILED:I = 0xff02

.field private static final ERROR_GATT_OPERATION_TIMEOUT:I = 0xff03

.field protected static final ERROR_GATT_SUCCESS:I = 0x0

.field private static final ERROR_POST:I = 0xff05

.field private static final ERROR_UNKNOWN:I = 0xff00

.field private static final GATT_OPERATION_TIMEOUT:J = 0x7530L

.field private static final GATT_QUEUE_THREAD_NAME:Ljava/lang/String;

.field private static final INVALID_RSSI:I = 0x7fffffff


# instance fields
.field private final m_GattOperationLock:Ljava/lang/Object;

.field private m_GattOperationStatus:I

.field private final m_GattQueue:Landroid/os/Handler;

.field private final m_GattQueueThread:Landroid/os/HandlerThread;

.field private m_RSSI:I

.field private final m_RSSILock:Ljava/lang/Object;

.field private m_ReadRSSIStatus:I

.field private m_isGattOperationLocking:Z

.field private m_isRSSILocking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 21
    sput-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->CLASS_NAME:Ljava/lang/String;

    sput-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->GATT_QUEUE_THREAD_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const v2, 0xff00

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_GattOperationLock:Ljava/lang/Object;

    .line 27
    iput-boolean v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_isGattOperationLocking:Z

    .line 28
    iput v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_GattOperationStatus:I

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_RSSILock:Ljava/lang/Object;

    .line 30
    iput-boolean v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_isRSSILocking:Z

    .line 31
    iput v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_ReadRSSIStatus:I

    .line 32
    const v0, 0x7fffffff

    iput v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_RSSI:I

    .line 35
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->GATT_QUEUE_THREAD_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_GattQueueThread:Landroid/os/HandlerThread;

    .line 36
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_GattQueueThread:Landroid/os/HandlerThread;

    new-instance v1, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$1;

    invoke-direct {v1, p0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$1;-><init>(Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 40
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_GattQueueThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_GattQueueThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_GattQueue:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;I)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->notifyGattOperation(I)V

    return-void
.end method

.method private notifyGattOperation(I)V
    .locals 2

    .prologue
    .line 249
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_GattOperationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_0
    iput p1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_GattOperationStatus:I

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_isGattOperationLocking:Z

    .line 252
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_GattOperationLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 253
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private waitGattOperation(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)I
    .locals 4

    .prologue
    .line 257
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_GattOperationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 258
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_isGattOperationLocking:Z

    .line 259
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_GattQueue:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    .line 260
    if-nez v0, :cond_0

    .line 261
    const v0, 0xff05

    monitor-exit v1

    .line 278
    :goto_0
    return v0

    .line 263
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_isGattOperationLocking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 264
    if-eqz p1, :cond_1

    .line 266
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_GattOperationLock:Ljava/lang/Object;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :goto_1
    :try_start_2
    iget-boolean v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_isGattOperationLocking:Z

    if-eqz v0, :cond_0

    .line 270
    const v0, 0xff03

    iput v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_GattOperationStatus:I

    .line 271
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    iget v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_GattOperationStatus:I

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected cleanup()V
    .locals 2

    .prologue
    .line 49
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_GattOperationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_isGattOperationLocking:Z

    .line 51
    const v0, 0xff00

    iput v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_GattOperationStatus:I

    .line 52
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_GattOperationLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 53
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_RSSILock:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_isRSSILocking:Z

    .line 56
    const v0, 0xff00

    iput v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_ReadRSSIStatus:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_RSSI:I

    .line 58
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_RSSILock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 59
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 59
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected close()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_GattQueueThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 64
    return-void
.end method

.method protected init()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method protected isConnected()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public final onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0, p3}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->notifyGattOperation(I)V

    .line 231
    return-void
.end method

.method public final onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0, p3}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->notifyGattOperation(I)V

    .line 236
    return-void
.end method

.method public final onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0, p3}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->notifyGattOperation(I)V

    .line 241
    return-void
.end method

.method public final onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0, p3}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->notifyGattOperation(I)V

    .line 246
    return-void
.end method

.method public final onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2

    .prologue
    .line 213
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_RSSILock:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_0
    iput p2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_RSSI:I

    .line 215
    iput p3, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_ReadRSSIStatus:I

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_isRSSILocking:Z

    .line 217
    iget-object v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_RSSILock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 218
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0, p2}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->notifyGattOperation(I)V

    .line 225
    return-void
.end method

.method final declared-synchronized synchronizedDiscoverServices(Landroid/bluetooth/BluetoothGatt;)I
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$2;-><init>(Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;Landroid/bluetooth/BluetoothGatt;)V

    .line 118
    invoke-direct {p0, p1, v0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->waitGattOperation(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized synchronizedReadCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)I
    .locals 1

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$3;-><init>(Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 140
    invoke-direct {p0, p1, v0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->waitGattOperation(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized synchronizedReadDescriptor(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;)I
    .locals 1

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$5;-><init>(Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;)V

    .line 185
    invoke-direct {p0, p1, v0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->waitGattOperation(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized synchronizedReadRemoteRSSI(Landroid/bluetooth/BluetoothGatt;)I
    .locals 5

    .prologue
    const v0, 0x7fffffff

    .line 71
    monitor-enter p0

    if-nez p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 74
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_RSSILock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_isRSSILocking:Z

    .line 79
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    move-result v2

    .line 80
    if-nez v2, :cond_2

    .line 81
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_isRSSILocking:Z

    .line 82
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 84
    :cond_2
    :try_start_3
    iget-boolean v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_isRSSILocking:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_3

    .line 86
    :try_start_4
    iget-object v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_RSSILock:Ljava/lang/Object;

    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 89
    :goto_1
    :try_start_5
    iget-boolean v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_isRSSILocking:Z

    if-eqz v2, :cond_2

    .line 90
    :cond_3
    iget v2, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_ReadRSSIStatus:I

    if-eqz v2, :cond_4

    .line 94
    monitor-exit v1

    goto :goto_0

    .line 96
    :cond_4
    iget v0, p0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->m_RSSI:I

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method final declared-synchronized synchronizedWriteCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)I
    .locals 1

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$4;-><init>(Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 164
    invoke-direct {p0, p1, v0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->waitGattOperation(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized synchronizedWriteDescriptor(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;[B)I
    .locals 1

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback$6;-><init>(Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;[B)V

    .line 209
    invoke-direct {p0, p1, v0}, Lcom/alipay/security/mobile/module/bracelet/lib/core/SynchronizedGattCallback;->waitGattOperation(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
