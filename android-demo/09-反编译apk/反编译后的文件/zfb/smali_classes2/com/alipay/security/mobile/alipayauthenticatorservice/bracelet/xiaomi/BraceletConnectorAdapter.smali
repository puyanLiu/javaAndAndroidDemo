.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;
.super Ljava/lang/Object;
.source "BraceletConnectorAdapter.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static connector:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;


# instance fields
.field private mBraceletConnector:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/IBraceletConnector;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;
    .locals 2

    .prologue
    .line 34
    const-class v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->connector:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->connector:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;

    .line 37
    :cond_0
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->connector:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized connect()V
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->mBraceletConnector:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/IBraceletConnector;

    invoke-interface {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/IBraceletConnector;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect()V
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->mBraceletConnector:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/IBraceletConnector;

    invoke-interface {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/IBraceletConnector;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPeripheral()Lcom/alipay/security/mobile/module/bracelet/lib/profile/IAliAuthProfile;
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->mBraceletConnector:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/IBraceletConnector;

    invoke-interface {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/IBraceletConnector;->getPeripheral()Lcom/alipay/security/mobile/module/bracelet/lib/profile/IAliAuthProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .prologue
    .line 41
    monitor-enter p0

    if-nez p1, :cond_0

    .line 50
    :goto_0
    monitor-exit p0

    return-void

    .line 44
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 45
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/BraceletSPPConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->mBraceletConnector:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/IBraceletConnector;

    .line 49
    :goto_1
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->mBraceletConnector:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/IBraceletConnector;

    invoke-interface {v0, p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/IBraceletConnector;->init(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 47
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->mBraceletConnector:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/IBraceletConnector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized waitForConnected(I)Z
    .locals 1

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->mBraceletConnector:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/IBraceletConnector;

    invoke-interface {v0, p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/IBraceletConnector;->waitForConnected(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
