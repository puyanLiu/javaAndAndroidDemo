.class Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$FlowControlTask;
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
    .line 290
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$FlowControlTask;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$FlowControlTask;)V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$FlowControlTask;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 293
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FlowControlTask: [ flow control is over ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setFlowCotrol(Z)V

    .line 299
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getConnManager()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    .line 301
    if-nez v0, :cond_0

    .line 302
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FlowControlTask: [ connManager=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connect()V

    goto :goto_0
.end method
