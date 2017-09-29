.class Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$TimeOutTask;
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
    .line 453
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$TimeOutTask;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$TimeOutTask;)V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$TimeOutTask;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 456
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TimeOutTask"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->NOT_AVAILABLE:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->setLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V

    .line 458
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/rome/syncsdk/constant/LinkConstants;->IS_LINK_TIMEOUT:Z

    .line 459
    return-void
.end method
