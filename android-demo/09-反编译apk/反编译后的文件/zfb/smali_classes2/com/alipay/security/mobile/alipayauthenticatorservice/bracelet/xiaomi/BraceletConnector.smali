.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;
.super Ljava/lang/Object;
.source "BraceletConnector.java"

# interfaces
.implements Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/IBraceletConnector;


# static fields
.field private static connector:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;

.field public static sConnectedStatus:I

.field private static sFailedTimes:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field protected mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->sConnectedStatus:I

    .line 35
    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->sFailedTimes:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;

    .line 26
    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method static synthetic access$008()I
    .locals 2

    .prologue
    .line 20
    sget v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->sFailedTimes:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->sFailedTimes:I

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;
    .locals 2

    .prologue
    .line 38
    const-class v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->connector:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->connector:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;

    .line 41
    :cond_0
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->connector:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;
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
.method public declared-synchronized connect()V
    .locals 2

    .prologue
    .line 78
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->sFailedTimes:I

    .line 79
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;->connect(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect()V
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 91
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    :cond_0
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized getPeripheral()Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;
    .locals 1

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic getPeripheral()Lcom/alipay/security/mobile/module/bracelet/lib/profile/IAliAuthProfile;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->getPeripheral()Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized init(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .prologue
    .line 45
    monitor-enter p0

    if-nez p1, :cond_0

    .line 75
    :goto_0
    monitor-exit p0

    return-void

    .line 48
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 50
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->disconnect()V

    .line 53
    :cond_1
    const/4 v0, 0x0

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->sConnectedStatus:I

    .line 55
    new-instance v0, Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;

    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->mDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance v3, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector$1;

    invoke-direct {v3, p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector$1;-><init>(Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/alipay/security/mobile/module/bracelet/lib/core/IConnectionStateChangeCallback;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitForConnected(I)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 103
    monitor-enter p0

    move v1, v0

    .line 104
    :goto_0
    :try_start_0
    sget v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->sConnectedStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v4, :cond_3

    if-gt v1, p1, :cond_3

    .line 109
    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 110
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 125
    :cond_0
    :goto_1
    monitor-exit p0

    return v0

    :catch_0
    move-exception v2

    .line 116
    :cond_1
    :try_start_2
    sget v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->sConnectedStatus:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    sget v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->sFailedTimes:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 120
    :cond_2
    const-wide/16 v2, 0x14

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    add-int/lit8 v1, v1, 0x14

    goto :goto_0

    .line 125
    :cond_3
    :try_start_4
    sget v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnector;->sConnectedStatus:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v1, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 123
    :catch_1
    move-exception v2

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
