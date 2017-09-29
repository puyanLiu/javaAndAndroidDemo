.class public Lcom/ali/user/mobile/info/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static a:Lcom/ali/user/mobile/info/DeviceInfo;


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/info/DeviceInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/ali/user/mobile/info/DeviceInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ali/user/mobile/info/DeviceInfo;
    .locals 2

    .prologue
    .line 35
    const-class v1, Lcom/ali/user/mobile/info/DeviceInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/info/DeviceInfo;->a:Lcom/ali/user/mobile/info/DeviceInfo;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/ali/user/mobile/info/DeviceInfo;

    invoke-direct {v0}, Lcom/ali/user/mobile/info/DeviceInfo;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/info/DeviceInfo;->a:Lcom/ali/user/mobile/info/DeviceInfo;

    .line 38
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/info/DeviceInfo;->a:Lcom/ali/user/mobile/info/DeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getHeightPix()I
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getScreenHeight()I

    move-result v0

    return v0
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUtDid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUtDidAsync()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getWidthPix()I
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getScreenWidth()I

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/ali/user/mobile/info/DeviceInfo$1;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/info/DeviceInfo$1;-><init>(Lcom/ali/user/mobile/info/DeviceInfo;)V

    .line 29
    const-string/jumbo v2, "aliuser_DeviceInfo_initUtdid"

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32
    :cond_0
    return-void
.end method
