.class public Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;
.super Ljava/lang/Object;
.source "BraceletUUIDDetector.java"


# static fields
.field private static connector:Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;

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

    .line 38
    sput v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->sConnectedStatus:I

    .line 40
    sput v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->sFailedTimes:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;

    .line 31
    iput-object p1, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$008()I
    .locals 2

    .prologue
    .line 25
    sget v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->sFailedTimes:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->sFailedTimes:I

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;
    .locals 2

    .prologue
    .line 43
    const-class v1, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->connector:Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->connector:Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;

    .line 46
    :cond_0
    sget-object v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->connector:Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized connect()V
    .locals 2

    .prologue
    .line 83
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->sFailedTimes:I

    .line 84
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;->connect(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect()V
    .locals 1

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 92
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    :cond_0
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized init(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .prologue
    .line 50
    monitor-enter p0

    if-nez p1, :cond_0

    .line 80
    :goto_0
    monitor-exit p0

    return-void

    .line 53
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 55
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->disconnect()V

    .line 58
    :cond_1
    const/4 v0, 0x0

    sput v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->sFailedTimes:I

    .line 59
    const/4 v0, 0x0

    sput v0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->sConnectedStatus:I

    .line 61
    new-instance v0, Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;

    iget-object v1, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->mDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance v3, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector$1;

    invoke-direct {v3, p0}, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector$1;-><init>(Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/alipay/security/mobile/module/bracelet/lib/core/IConnectionStateChangeCallback;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isMatchUUIDs(Ljava/util/List;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 146
    :goto_0
    monitor-exit p0

    return v0

    .line 135
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->mPeripheral:Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/profile/AliAuthProfile;->getServices()Ljava/util/List;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move v0, v2

    .line 137
    goto :goto_0

    .line 140
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 141
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 142
    goto :goto_0

    :cond_5
    move v0, v2

    .line 146
    goto :goto_0

    .line 131
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

    .line 104
    monitor-enter p0

    move v1, v0

    .line 105
    :goto_0
    :try_start_0
    sget v2, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->sConnectedStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v4, :cond_3

    if-gt v1, p1, :cond_3

    .line 110
    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 126
    :cond_0
    :goto_1
    monitor-exit p0

    return v0

    :catch_0
    move-exception v2

    .line 117
    :cond_1
    :try_start_2
    sget v2, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->sConnectedStatus:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    sget v2, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->sFailedTimes:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 121
    :cond_2
    const-wide/16 v2, 0x14

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    add-int/lit8 v1, v1, 0x14

    goto :goto_0

    .line 126
    :cond_3
    :try_start_4
    sget v1, Lcom/alipay/security/mobile/bracelet/scan/BraceletUUIDDetector;->sConnectedStatus:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v1, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 124
    :catch_1
    move-exception v2

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
