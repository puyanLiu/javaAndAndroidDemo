.class Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$DelayedConnectTask;
.super Ljava/lang/Object;
.source "SyncTimerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$DelayedConnectTask;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$DelayedConnectTask;)V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$DelayedConnectTask;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 316
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "DelayedConnectTask"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getConnManager()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    .line 321
    if-nez v0, :cond_0

    .line 322
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "DelayedConnectTask: [ connManager=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connect()V

    goto :goto_0
.end method
