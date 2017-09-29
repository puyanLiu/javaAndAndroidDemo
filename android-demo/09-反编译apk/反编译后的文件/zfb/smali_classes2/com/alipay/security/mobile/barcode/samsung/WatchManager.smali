.class public Lcom/alipay/security/mobile/barcode/samsung/WatchManager;
.super Ljava/lang/Object;
.source "WatchManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WatchManager"

.field private static sInstance:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;


# instance fields
.field private device:Landroid/bluetooth/BluetoothDevice;

.field private in:Ljava/io/InputStream;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

.field private mContext:Landroid/content/Context;

.field private mWatchCallback:Lcom/alipay/security/mobile/barcode/samsung/WatchCallback;

.field private out:Ljava/io/OutputStream;

.field private uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->sInstance:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->mWatchCallback:Lcom/alipay/security/mobile/barcode/samsung/WatchCallback;

    .line 34
    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->mContext:Landroid/content/Context;

    .line 35
    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 58
    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->in:Ljava/io/InputStream;

    .line 59
    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->out:Ljava/io/OutputStream;

    .line 60
    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 63
    const-string/jumbo v0, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->uuid:Ljava/util/UUID;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->device:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Landroid/bluetooth/BluetoothSocket;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic access$202(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic access$300(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Ljava/util/UUID;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Lcom/alipay/security/mobile/barcode/samsung/WatchCallback;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->mWatchCallback:Lcom/alipay/security/mobile/barcode/samsung/WatchCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$502(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->in:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic access$600(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$602(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->out:Ljava/io/OutputStream;

    return-object p1
.end method

.method public static declared-synchronized instance()Lcom/alipay/security/mobile/barcode/samsung/WatchManager;
    .locals 2

    .prologue
    .line 38
    const-class v1, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->sInstance:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    invoke-direct {v0}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->sInstance:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    .line 41
    :cond_0
    sget-object v0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->sInstance:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized closeConnection()V
    .locals 1

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->in:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 138
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->out:Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 144
    :try_start_3
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    :cond_1
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    :try_start_5
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 154
    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->mContext:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 51
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 52
    return-void
.end method

.method public declared-synchronized sendDataToDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 69
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;-><init>(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 131
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setWatchCallback(Lcom/alipay/security/mobile/barcode/samsung/WatchCallback;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->mWatchCallback:Lcom/alipay/security/mobile/barcode/samsung/WatchCallback;

    .line 56
    return-void
.end method
