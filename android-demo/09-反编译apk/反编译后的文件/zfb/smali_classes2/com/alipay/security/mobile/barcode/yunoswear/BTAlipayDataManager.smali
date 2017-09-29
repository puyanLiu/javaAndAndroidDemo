.class public Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;
.super Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;
.source "BTAlipayDataManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BTCommonDataManager"

.field private static mInstance:Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;


# instance fields
.field private final MY_UUID_SECURE:Ljava/lang/String;

.field private mBLECallback:Lcom/alipay/security/mobile/barcode/yunoswear/YunOSBLECallback;

.field mDevices:Ljava/util/List;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;-><init>(Landroid/content/Context;)V

    .line 15
    const-string/jumbo v0, "8ce255c0-200a-11e0-ac64-0800200c9a67"

    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->MY_UUID_SECURE:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->mDevices:Ljava/util/List;

    .line 31
    return-void
.end method

.method public static final declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->mInstance:Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->mInstance:Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;

    .line 26
    :cond_0
    sget-object v0, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->mInstance:Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendHeader(II)V
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0x55aa

    invoke-direct {p0, v0}, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->sendInt(I)V

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->sendInt(I)V

    .line 71
    invoke-direct {p0, p1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->sendInt(I)V

    .line 72
    invoke-direct {p0, p2}, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->sendInt(I)V

    .line 73
    return-void
.end method

.method private sendInt(I)V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 77
    const/4 v1, 0x3

    const/high16 v2, -0x1000000

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 78
    const/4 v1, 0x2

    const/high16 v2, 0xff0000

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 79
    const/4 v1, 0x1

    const v2, 0xff00

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 80
    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    shr-int/lit8 v2, v2, 0x0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 81
    invoke-virtual {p0, v0}, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->write([B)Z

    .line 82
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .prologue
    .line 42
    const-string/jumbo v0, "8ce255c0-200a-11e0-ac64-0800200c9a67"

    const/4 v1, 0x1

    invoke-super {p0, p1, v0, v1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->connect(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Z)V

    .line 43
    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    const-string/jumbo v0, "8ce255c0-200a-11e0-ac64-0800200c9a67"

    const/4 v1, 0x1

    invoke-super {p0, p1, v0, v1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->connect(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 39
    return-void
.end method

.method public disconnected()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->stop()V

    .line 107
    return-void
.end method

.method public getConnectedBLEDevices()Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->mDevices:Ljava/util/List;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConnectionStateChange(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->mBLECallback:Lcom/alipay/security/mobile/barcode/yunoswear/YunOSBLECallback;

    invoke-interface {v0, p2}, Lcom/alipay/security/mobile/barcode/yunoswear/YunOSBLECallback;->onConnecting(Landroid/bluetooth/BluetoothDevice;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 91
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->sendHeader(II)V

    .line 92
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->mDevices:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->mBLECallback:Lcom/alipay/security/mobile/barcode/yunoswear/YunOSBLECallback;

    invoke-interface {v0, p2}, Lcom/alipay/security/mobile/barcode/yunoswear/YunOSBLECallback;->onConnected(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 94
    :cond_2
    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->mDevices:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->mBLECallback:Lcom/alipay/security/mobile/barcode/yunoswear/YunOSBLECallback;

    invoke-interface {v0, p2}, Lcom/alipay/security/mobile/barcode/yunoswear/YunOSBLECallback;->onDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method protected onRecvData(ILjava/lang/String;I)V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onRecvData clientId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->mBLECallback:Lcom/alipay/security/mobile/barcode/yunoswear/YunOSBLECallback;

    invoke-interface {v0, p2}, Lcom/alipay/security/mobile/barcode/yunoswear/YunOSBLECallback;->onReadDataFromDevice(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 46
    const/16 v0, 0x3e8

    .line 48
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    const-string/jumbo v2, "tid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 52
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 54
    array-length v2, v1

    invoke-direct {p0, v2, v0}, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->sendHeader(II)V

    .line 55
    invoke-virtual {p0, v1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->write([B)Z

    .line 56
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setYunOSBLECallback(Lcom/alipay/security/mobile/barcode/yunoswear/YunOSBLECallback;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTAlipayDataManager;->mBLECallback:Lcom/alipay/security/mobile/barcode/yunoswear/YunOSBLECallback;

    .line 35
    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->stop()V

    return-void
.end method

.method public bridge synthetic write([B)Z
    .locals 1

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->write([B)Z

    move-result v0

    return v0
.end method
