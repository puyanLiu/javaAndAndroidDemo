.class public abstract Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;
.super Ljava/lang/Object;
.source "RpcSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RpcRunner"


# instance fields
.field private event:Lcom/alipay/mobile/beehive/rpc/RpcEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/beehive/rpc/RpcEvent",
            "<TResultType;>;"
        }
    .end annotation
.end field

.field private volatile isCancelPending:Z

.field private rpcUiProcessor:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->isCancelPending:Z

    .line 33
    new-instance v0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;-><init>(Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->rpcUiProcessor:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;Ljava/lang/String;Lcom/alipay/mobile/beehive/rpc/RpcEvent;)V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->postRpcEvent(Ljava/lang/String;Lcom/alipay/mobile/beehive/rpc/RpcEvent;)V

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;Lcom/alipay/mobile/beehive/rpc/RpcTask;)V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->runTask(Lcom/alipay/mobile/beehive/rpc/RpcTask;)V

    return-void
.end method

.method private postRpcEvent(Ljava/lang/String;Lcom/alipay/mobile/beehive/rpc/RpcEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/beehive/rpc/RpcEvent",
            "<TResultType;>;)V"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Lcom/alipay/mobile/beehive/rpc/RpcEvent;

    iget-object v1, p2, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->rpcTask:Lcom/alipay/mobile/beehive/rpc/RpcTask;

    iget-object v2, p2, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->result:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/beehive/rpc/RpcEvent;-><init>(Lcom/alipay/mobile/beehive/rpc/RpcTask;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 257
    iput-object p1, v0, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->status:Ljava/lang/String;

    .line 258
    invoke-static {}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->getInstance()Lcom/alipay/mobile/beehive/eventbus/EventBusManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->post(Ljava/lang/Object;)V

    .line 259
    return-void
.end method

.method private processRpcResultAction(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .prologue
    .line 161
    if-eqz p1, :cond_1

    .line 162
    invoke-static {}, Lcom/alipay/mobile/beehive/util/DebugUtil;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    invoke-static {p1}, Lcom/alipay/mobile/beehive/rpc/RpcResultValidator;->assertValidResult(Ljava/lang/Object;)V

    .line 166
    :cond_0
    const/4 v3, 0x0

    .line 167
    const-string/jumbo v1, "followAction"

    invoke-static {p1, v1}, Lcom/alipay/mobile/beehive/rpc/RpcUtil;->getFieldByReflect(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 168
    if-eqz v1, :cond_2

    .line 170
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 171
    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->rpcUiProcessor:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;

    if-eqz v1, :cond_2

    .line 172
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->rpcUiProcessor:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor;->processAction(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    const/4 v1, 0x1

    .line 182
    :goto_0
    if-nez v1, :cond_1

    sget-boolean v1, Lcom/alipay/mobile/beehive/rpc/RpcSettings;->supportShowType:Z

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->rpcUiProcessor:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;

    invoke-static {v1, p1}, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor;->processShowType(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Ljava/lang/Object;)V

    .line 186
    :cond_1
    return-void

    .line 177
    :catch_0
    move-exception v1

    .line 178
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v4, "RpcRunner"

    invoke-interface {v2, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method private runTask(Lcom/alipay/mobile/beehive/rpc/RpcTask;)V
    .locals 1

    .prologue
    .line 223
    new-instance v0, Lcom/alipay/mobile/beehive/rpc/RpcRunner;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->start(Lcom/alipay/mobile/beehive/rpc/RpcTask;)V

    .line 224
    return-void
.end method

.method private unregisterFromEventBus()V
    .locals 1

    .prologue
    .line 248
    invoke-static {}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->getInstance()Lcom/alipay/mobile/beehive/eventbus/EventBusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->unregisterRaw(Ljava/lang/Object;)V

    .line 249
    return-void
.end method


# virtual methods
.method public getRpcEvent()Lcom/alipay/mobile/beehive/rpc/RpcEvent;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->event:Lcom/alipay/mobile/beehive/rpc/RpcEvent;

    return-object v0
.end method

.method public getRpcResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultType;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->event:Lcom/alipay/mobile/beehive/rpc/RpcEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->event:Lcom/alipay/mobile/beehive/rpc/RpcEvent;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 232
    :cond_0
    const/4 v0, 0x0

    .line 234
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->event:Lcom/alipay/mobile/beehive/rpc/RpcEvent;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->result:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected onCancel()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onEvent(Lcom/alipay/mobile/beehive/rpc/RpcEvent;)V
    .locals 8
    .annotation runtime Lcom/alipay/mobile/beehive/eventbus/Subscribe;
        threadMode = "ui"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/beehive/rpc/RpcEvent",
            "<TResultType;>;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 41
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->rpcTask:Lcom/alipay/mobile/beehive/rpc/RpcTask;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->rpcTask:Lcom/alipay/mobile/beehive/rpc/RpcTask;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/rpc/RpcTask;->subscriber:Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;

    if-nez v0, :cond_2

    .line 42
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "RpcRunner"

    .line 43
    const-string/jumbo v2, "onEvent call: event || event.rpcTask || event.rpcTask.subscriber is null"

    .line 42
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 46
    :cond_2
    iget-object v0, p1, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->rpcTask:Lcom/alipay/mobile/beehive/rpc/RpcTask;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/rpc/RpcTask;->subscriber:Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;

    if-eq v0, p0, :cond_3

    .line 47
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "RpcRunner"

    .line 48
    const-string/jumbo v2, "onEvent call: other subscirber %s relate event"

    new-array v3, v7, [Ljava/lang/Object;

    .line 49
    iget-object v4, p1, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->rpcTask:Lcom/alipay/mobile/beehive/rpc/RpcTask;

    iget-object v4, v4, Lcom/alipay/mobile/beehive/rpc/RpcTask;->subscriber:Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 48
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_3
    iput-object p1, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->event:Lcom/alipay/mobile/beehive/rpc/RpcEvent;

    .line 54
    iget-object v0, p1, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->rpcTask:Lcom/alipay/mobile/beehive/rpc/RpcTask;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/rpc/RpcTask;->runConfig:Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;->loadingMode:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    .line 55
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "RpcRunner"

    .line 56
    const-string/jumbo v3, "RpcSubscriber onEvent status=%s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->status:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p1, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->status:Ljava/lang/String;

    const-string/jumbo v2, "rpc_cancel"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 58
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "RpcRunner"

    const-string/jumbo v3, "unregister from event bus onEvent RPC_CANCEL"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iput-boolean v7, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->isCancelPending:Z

    .line 60
    sget-object v1, Lcom/alipay/mobile/beehive/rpc/LoadingMode;->CANCELABLE_EXIT_LOADING:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    if-ne v0, v1, :cond_4

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->rpcUiProcessor:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getActivityResponsible()Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->rpcUiProcessor:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getActivityResponsible()Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 65
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->onCancel()V

    .line 66
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->unregisterFromEventBus()V

    goto :goto_0

    .line 67
    :cond_5
    iget-object v1, p1, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->status:Ljava/lang/String;

    const-string/jumbo v2, "rpc_start"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 68
    iput-boolean v6, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->isCancelPending:Z

    .line 69
    sget-object v1, Lcom/alipay/mobile/beehive/rpc/LoadingMode;->BLOCK_LOADING:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    if-ne v0, v1, :cond_7

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->rpcUiProcessor:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->showProgressDialog(ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 86
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->rpcUiProcessor:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;

    new-instance v1, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber$2;-><init>(Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;Lcom/alipay/mobile/beehive/rpc/RpcEvent;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->setRetryRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 71
    :cond_7
    sget-object v1, Lcom/alipay/mobile/beehive/rpc/LoadingMode;->CANCELABLE_LOADING:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    if-eq v0, v1, :cond_8

    .line 72
    sget-object v1, Lcom/alipay/mobile/beehive/rpc/LoadingMode;->CANCELABLE_EXIT_LOADING:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    if-ne v0, v1, :cond_9

    .line 73
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->rpcUiProcessor:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;

    new-instance v1, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber$1;-><init>(Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;Lcom/alipay/mobile/beehive/rpc/RpcEvent;)V

    invoke-virtual {v0, v7, v1}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->showProgressDialog(ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 79
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "RpcRunner"

    const-string/jumbo v2, "showProgressDialog"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_9
    sget-object v1, Lcom/alipay/mobile/beehive/rpc/LoadingMode;->TITLEBAR_LOADING:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    if-ne v0, v1, :cond_6

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->rpcUiProcessor:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->showTitleBarLoading()V

    .line 83
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "RpcRunner"

    const-string/jumbo v2, "showTitleBarLoading"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 92
    :cond_a
    iget-object v1, p1, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->status:Ljava/lang/String;

    const-string/jumbo v2, "rpc_finish_start"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 93
    sget-object v1, Lcom/alipay/mobile/beehive/rpc/LoadingMode;->SILENT:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    if-eq v0, v1, :cond_b

    .line 94
    iget-object v1, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->rpcUiProcessor:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->dismissProgressDialog()V

    .line 95
    sget-object v1, Lcom/alipay/mobile/beehive/rpc/LoadingMode;->TITLEBAR_LOADING:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    if-ne v0, v1, :cond_b

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->rpcUiProcessor:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->dismissTitleBarLoading()V

    .line 97
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "RpcRunner"

    const-string/jumbo v2, "dismissTitleBarLoading"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_b
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->onFinishStart()V

    goto/16 :goto_0

    .line 101
    :cond_c
    iget-object v0, p1, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->status:Ljava/lang/String;

    const-string/jumbo v1, "rpc_finish_end"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 102
    iput-boolean v6, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->isCancelPending:Z

    .line 103
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->onFinishEnd()V

    .line 104
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->unregisterFromEventBus()V

    goto/16 :goto_0

    .line 105
    :cond_d
    iget-object v0, p1, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->status:Ljava/lang/String;

    const-string/jumbo v1, "rpc_result_success"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 106
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->isCancelPending:Z

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->rpcUiProcessor:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->hideFlowTipViewIfShow()V

    .line 109
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "RpcRunner"

    const-string/jumbo v2, "hideFlowTipViewIfShow"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p1, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->result:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 112
    :cond_e
    iget-object v0, p1, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->status:Ljava/lang/String;

    const-string/jumbo v1, "rpc_result_fail"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 113
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->isCancelPending:Z

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->rpcUiProcessor:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->hideFlowTipViewIfShow()V

    .line 116
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "RpcRunner"

    const-string/jumbo v2, "hideFlowTipViewIfShow"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p1, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->result:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->onFail(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 119
    :cond_f
    iget-object v0, p1, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->status:Ljava/lang/String;

    const-string/jumbo v1, "rpc_result_exception"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->isCancelPending:Z

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p1, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->exception:Ljava/lang/Exception;

    iget-object v1, p1, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->rpcTask:Lcom/alipay/mobile/beehive/rpc/RpcTask;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->onException(Ljava/lang/Exception;Lcom/alipay/mobile/beehive/rpc/RpcTask;)V

    goto/16 :goto_0
.end method

.method protected onException(Ljava/lang/Exception;Lcom/alipay/mobile/beehive/rpc/RpcTask;)V
    .locals 1

    .prologue
    .line 192
    instance-of v0, p1, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/alipay/mobile/beehive/rpc/RpcUtil;->isNetworkException(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->onNetworkException(Ljava/lang/Exception;Lcom/alipay/mobile/beehive/rpc/RpcTask;)V

    .line 194
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/alipay/mobile/beehive/rpc/RpcTask;->runConfig:Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;

    iget-boolean v0, v0, Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;->showNetError:Z

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->rpcUiProcessor:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->showNetworkError()V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/alipay/mobile/beehive/rpc/RpcTask;->runConfig:Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;

    iget-boolean v0, v0, Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;->showWarn:Z

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->rpcUiProcessor:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->showWarn()V

    .line 204
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->onNotNetworkException(Ljava/lang/Exception;Lcom/alipay/mobile/beehive/rpc/RpcTask;)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->rpcUiProcessor:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->hideFlowTipViewIfShow()V

    goto :goto_1
.end method

.method protected onFail(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->processRpcResultAction(Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method protected onFinishEnd()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method protected onFinishStart()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method protected onNetworkException(Ljava/lang/Exception;Lcom/alipay/mobile/beehive/rpc/RpcTask;)V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method protected onNotNetworkException(Ljava/lang/Exception;Lcom/alipay/mobile/beehive/rpc/RpcTask;)V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->processRpcResultAction(Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method public showEmptyView(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->rpcUiProcessor:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->rpcUiProcessor:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->showEmptyView(Ljava/lang/String;)V

    .line 245
    :cond_0
    return-void
.end method
