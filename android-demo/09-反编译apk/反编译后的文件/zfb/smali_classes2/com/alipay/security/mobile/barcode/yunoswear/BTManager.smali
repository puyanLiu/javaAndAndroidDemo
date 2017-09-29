.class Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;
.super Ljava/lang/Object;
.source "BTManager.java"


# static fields
.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTFAIL:I = 0x4

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x3

.field public static final STATE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BTManager"


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBondReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectRequestInfo:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;

.field private mConnectThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;

.field private mConnectedThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;

.field private mContext:Landroid/content/Context;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$1;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$1;-><init>(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mBondReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mState:I

    .line 84
    iput-object p1, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;)Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectRequestInfo:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;)Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectRequestInfo:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->connectionFailed(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$402(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;)Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;

    return-object p1
.end method

.method static synthetic access$500(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->connected(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->connectionLost(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;[B)I
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->readInt([B)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;Ljava/io/InputStream;II)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->decodeContent(Ljava/io/InputStream;II)V

    return-void
.end method

.method private declared-synchronized connected(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->cancel()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectedThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectedThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;->cancel()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectedThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;

    .line 178
    :cond_1
    new-instance v0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;-><init>(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectedThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;

    .line 179
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectedThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;->start()V

    .line 180
    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->setState(ILandroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private connectionFailed(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->setState(ILandroid/bluetooth/BluetoothDevice;)V

    .line 185
    return-void
.end method

.method private connectionLost(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->setState(ILandroid/bluetooth/BluetoothDevice;)V

    .line 189
    return-void
.end method

.method private decodeContent(Ljava/io/InputStream;II)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 381
    .line 383
    new-array v3, p2, [B

    move v2, v1

    .line 384
    :goto_0
    if-lez p2, :cond_0

    .line 387
    :try_start_0
    invoke-virtual {p1, v3, v2, p2}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 391
    :goto_1
    add-int/2addr v2, v0

    .line 392
    sub-int/2addr p2, v0

    .line 393
    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 394
    :cond_0
    invoke-direct {p0, v3, p3}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->readData([BI)V

    .line 395
    return-void
.end method

.method private pairDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .prologue
    .line 152
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "createBond"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 154
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private readData([BI)V
    .locals 5

    .prologue
    .line 374
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 375
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    const-string/jumbo v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "readData clientId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {p0, v0, v1, p2}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->onRecvData(ILjava/lang/String;I)V

    .line 378
    return-void
.end method

.method private readInt([B)I
    .locals 3

    .prologue
    .line 367
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 370
    return v0
.end method

.method private declared-synchronized setState(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setState() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    iput p1, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mState:I

    .line 164
    invoke-virtual {p0, p1, p2}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->onConnectionStateChange(ILandroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected declared-synchronized connect(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 93
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    .line 116
    :goto_0
    monitor-exit p0

    return-void

    .line 95
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 96
    invoke-direct {p0, p1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->pairDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 97
    new-instance v0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;-><init>(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectRequestInfo:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectRequestInfo;

    .line 98
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mBondReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 102
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "connect to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", secure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mState:I

    if-ne v0, v2, :cond_2

    .line 104
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->cancel()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectedThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectedThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;->cancel()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectedThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;

    .line 113
    :cond_3
    new-instance v0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;-><init>(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Z)V

    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;

    .line 114
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->start()V

    .line 115
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->setState(ILandroid/bluetooth/BluetoothDevice;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected connect(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 89
    invoke-virtual {p0, v0, p2, p3}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->connect(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Z)V

    .line 90
    return-void
.end method

.method protected onConnectionStateChange(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onConnectionStateChange() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    return-void
.end method

.method protected onRecvData(ILjava/lang/String;I)V
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onRecvData clientId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->cancel()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectedThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectedThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;->cancel()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectedThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;

    .line 139
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->setState(ILandroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write([B)Z
    .locals 2

    .prologue
    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 122
    const/4 v0, 0x0

    monitor-exit p0

    .line 125
    :goto_0
    return v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->mConnectedThread:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;

    .line 124
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;->write([B)Z

    move-result v0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
