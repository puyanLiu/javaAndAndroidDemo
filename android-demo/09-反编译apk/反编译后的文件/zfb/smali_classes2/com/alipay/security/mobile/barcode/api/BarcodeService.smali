.class public Lcom/alipay/security/mobile/barcode/api/BarcodeService;
.super Ljava/lang/Object;
.source "BarcodeService.java"


# static fields
.field private static instance:Lcom/alipay/security/mobile/barcode/api/BarcodeService;


# instance fields
.field private isFinish:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/alipay/security/mobile/barcode/api/BarcodeService;

    invoke-direct {v0}, Lcom/alipay/security/mobile/barcode/api/BarcodeService;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->instance:Lcom/alipay/security/mobile/barcode/api/BarcodeService;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->isFinish:Z

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/security/mobile/barcode/api/BarcodeService;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->isFinish:Z

    return v0
.end method

.method static synthetic access$002(Lcom/alipay/security/mobile/barcode/api/BarcodeService;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->isFinish:Z

    return p1
.end method

.method public static final declared-synchronized getInstance()Lcom/alipay/security/mobile/barcode/api/BarcodeService;
    .locals 2

    .prologue
    .line 34
    const-class v0, Lcom/alipay/security/mobile/barcode/api/BarcodeService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->instance:Lcom/alipay/security/mobile/barcode/api/BarcodeService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized disconnectAll()V
    .locals 2

    .prologue
    .line 197
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->isFinish:Z

    .line 198
    invoke-static {}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->getInstance()Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->init(Landroid/content/Context;)V

    .line 200
    invoke-virtual {v0}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :goto_0
    monitor-exit p0

    return-void

    .line 201
    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWearableAuthInfo(Ljava/lang/String;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 3

    .prologue
    .line 65
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->isFinish:Z

    .line 66
    invoke-static {}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->getInstance()Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->init(Landroid/content/Context;)V

    .line 68
    invoke-static {}, Lcom/alipay/security/mobile/barcode/util/BarcodeMessageUtil;->getFirstWatchRequestData()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/security/mobile/barcode/api/BarcodeService$1;

    invoke-direct {v2, p0, p2}, Lcom/alipay/security/mobile/barcode/api/BarcodeService$1;-><init>(Lcom/alipay/security/mobile/barcode/api/BarcodeService;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->sendDataToDevice(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->isFinish:Z

    .line 41
    iput-object p1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSupportBarcode(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->getConfig()Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->getModelByMacAddress(Ljava/lang/String;)Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->isSupportQRCode()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 55
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendNormalData(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 2

    .prologue
    .line 215
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->isFinish:Z

    .line 216
    invoke-static {}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->getInstance()Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->init(Landroid/content/Context;)V

    .line 218
    new-instance v1, Lcom/alipay/security/mobile/barcode/api/BarcodeService$3;

    invoke-direct {v1, p0, p3, v0}, Lcom/alipay/security/mobile/barcode/api/BarcodeService$3;-><init>(Lcom/alipay/security/mobile/barcode/api/BarcodeService;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->sendDataToDevice(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    monitor-exit p0

    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendRegisterInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 3

    .prologue
    .line 129
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->isFinish:Z

    .line 130
    invoke-static {}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->getInstance()Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/api/BarcodeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->init(Landroid/content/Context;)V

    .line 132
    invoke-static {p2, p3, p4, p5}, Lcom/alipay/security/mobile/barcode/util/BarcodeMessageUtil;->getSecondWatchRequestData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/security/mobile/barcode/api/BarcodeService$2;

    invoke-direct {v2, p0, p6, v0}, Lcom/alipay/security/mobile/barcode/api/BarcodeService$2;-><init>(Lcom/alipay/security/mobile/barcode/api/BarcodeService;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/security/mobile/barcode/adapter/BarcodeAdapter;->sendDataToDevice(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/security/mobile/barcode/adapter/BarcodeCallback;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
