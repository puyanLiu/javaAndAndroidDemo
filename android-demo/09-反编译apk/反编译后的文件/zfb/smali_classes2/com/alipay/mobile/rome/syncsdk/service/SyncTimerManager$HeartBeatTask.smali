.class Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$HeartBeatTask;
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
    .line 333
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$HeartBeatTask;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$HeartBeatTask;)V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$HeartBeatTask;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 336
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "HeartBeatTask"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getConnManager()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    .line 341
    if-nez v0, :cond_0

    .line 342
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "HeartBeatTask: [ connManager=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->sendHeartBeatPacket()V

    goto :goto_0
.end method
