.class public Lcom/alipay/mobile/common/transportext/biz/shared/config/MainProcConfigListenServiceImpl;
.super Ljava/lang/Object;
.source "MainProcConfigListenServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/ext/MainProcConfigListenService;


# static fields
.field private static final TAG:Ljava/lang/String; = "MainProcConfigListenService"

.field private static mainProcConfigListenService:Lcom/alipay/mobile/common/transportext/biz/shared/config/MainProcConfigListenServiceImpl;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/transport/ext/MainProcConfigListenService;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/config/MainProcConfigListenServiceImpl;->mainProcConfigListenService:Lcom/alipay/mobile/common/transportext/biz/shared/config/MainProcConfigListenServiceImpl;

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/config/MainProcConfigListenServiceImpl;->mainProcConfigListenService:Lcom/alipay/mobile/common/transportext/biz/shared/config/MainProcConfigListenServiceImpl;

    .line 30
    :goto_0
    return-object v0

    .line 24
    :cond_0
    const-class v1, Lcom/alipay/mobile/common/transportext/biz/shared/config/MainProcConfigListenServiceImpl;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/config/MainProcConfigListenServiceImpl;->mainProcConfigListenService:Lcom/alipay/mobile/common/transportext/biz/shared/config/MainProcConfigListenServiceImpl;

    if-eqz v0, :cond_1

    .line 26
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/config/MainProcConfigListenServiceImpl;->mainProcConfigListenService:Lcom/alipay/mobile/common/transportext/biz/shared/config/MainProcConfigListenServiceImpl;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 28
    :cond_1
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/config/MainProcConfigListenServiceImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/config/MainProcConfigListenServiceImpl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/config/MainProcConfigListenServiceImpl;->mainProcConfigListenService:Lcom/alipay/mobile/common/transportext/biz/shared/config/MainProcConfigListenServiceImpl;

    .line 29
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/config/MainProcConfigListenServiceImpl;->mainProcConfigListenService:Lcom/alipay/mobile/common/transportext/biz/shared/config/MainProcConfigListenServiceImpl;

    goto :goto_0
.end method


# virtual methods
.method public notifyConfigureChangedEvent()V
    .locals 2

    .prologue
    .line 40
    const-string/jumbo v0, "MainProcConfigListenService"

    const-string/jumbo v1, "Accepted push condfigure changed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 42
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->updateConfig(Landroid/content/Context;)Z

    .line 43
    return-void
.end method
