.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;
.super Ljava/lang/Object;
.source "BraceletSPPConnector.java"

# interfaces
.implements Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/IBraceletConnector;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static connector:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;


# instance fields
.field private mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

.field private mContext:Landroid/content/Context;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mProfile:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthProfile;

.field private uuid:Ljava/util/UUID;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 33
    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->mProfile:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthProfile;

    .line 39
    const-string/jumbo v0, "0000FFC1-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->uuid:Ljava/util/UUID;

    .line 36
    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;
    .locals 2

    .prologue
    .line 45
    const-class v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->connector:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->connector:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;

    .line 48
    :cond_0
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->connector:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized connect()V
    .locals 2

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->disconnect()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 72
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 77
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :goto_0
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 80
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized disconnect()V
    .locals 1

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 93
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized getPeripheral()Lcom/alipay/security/mobile/module/bracelet/lib/profile/IAliAuthProfile;
    .locals 2

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->mProfile:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthProfile;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthProfile;

    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthProfile;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->mProfile:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthProfile;

    .line 85
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->mProfile:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthProfile;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthProfile;->init()Z

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->mProfile:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    if-nez p1, :cond_0

    .line 63
    :goto_0
    monitor-exit p0

    return-void

    .line 55
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->mProfile:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 57
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->mProfile:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthProfile;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthProfile;->cleanup()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->mProfile:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthProfile;

    .line 62
    :cond_1
    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->mDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized waitForConnected(I)Z
    .locals 1

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
