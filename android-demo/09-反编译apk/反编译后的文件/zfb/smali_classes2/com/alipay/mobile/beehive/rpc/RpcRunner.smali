.class public Lcom/alipay/mobile/beehive/rpc/RpcRunner;
.super Ljava/lang/Object;
.source "RpcRunner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RpcRunnber"


# instance fields
.field private isCheckRunnableClass:Z

.field private rpcTask:Lcom/alipay/mobile/beehive/rpc/RpcTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/beehive/rpc/RpcTask",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->isCheckRunnableClass:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;Lcom/alipay/mobile/beehive/rpc/RpcRunnable;Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;",
            "Lcom/alipay/mobile/beehive/rpc/RpcRunnable",
            "<*>;",
            "Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->init(Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;Lcom/alipay/mobile/beehive/rpc/RpcRunnable;Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/beehive/rpc/RpcRunnable;Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/beehive/rpc/RpcRunnable",
            "<*>;",
            "Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->init(Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;Lcom/alipay/mobile/beehive/rpc/RpcRunnable;Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;)V

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/rpc/RpcRunner;)Lcom/alipay/mobile/beehive/rpc/RpcTask;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->rpcTask:Lcom/alipay/mobile/beehive/rpc/RpcTask;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/beehive/rpc/RpcRunner;Lcom/alipay/mobile/beehive/rpc/RpcTask;)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->invokeRpc(Lcom/alipay/mobile/beehive/rpc/RpcTask;)V

    return-void
.end method

.method private buildRpcEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;Lcom/alipay/mobile/beehive/rpc/RpcTask;)Lcom/alipay/mobile/beehive/rpc/RpcEvent;
    .locals 2

    .prologue
    .line 207
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/beehive/rpc/RpcEvent;

    invoke-direct {v0, p4, p2, p3}, Lcom/alipay/mobile/beehive/rpc/RpcEvent;-><init>(Lcom/alipay/mobile/beehive/rpc/RpcTask;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 208
    iput-object p1, v0, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->status:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-object v0

    .line 211
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "RpcRunnber"

    invoke-interface {v0, v1, p3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkIsAnonymousClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    return v0
.end method

.method private checkIsNotStaticInnerClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;Lcom/alipay/mobile/beehive/rpc/RpcRunnable;Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;",
            "Lcom/alipay/mobile/beehive/rpc/RpcRunnable",
            "<*>;",
            "Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/alipay/mobile/beehive/rpc/RpcTask;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/rpc/RpcTask;-><init>()V

    .line 39
    iput-object p2, v0, Lcom/alipay/mobile/beehive/rpc/RpcTask;->runnable:Lcom/alipay/mobile/beehive/rpc/RpcRunnable;

    .line 40
    iput-object p3, v0, Lcom/alipay/mobile/beehive/rpc/RpcTask;->subscriber:Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;

    .line 42
    iput-object p1, v0, Lcom/alipay/mobile/beehive/rpc/RpcTask;->runConfig:Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;

    .line 43
    iput-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->rpcTask:Lcom/alipay/mobile/beehive/rpc/RpcTask;

    .line 44
    return-void
.end method

.method private invokeRpc(Lcom/alipay/mobile/beehive/rpc/RpcTask;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/beehive/rpc/RpcTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 124
    :try_start_0
    const-string/jumbo v0, "rpc_start"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4, p1}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->postRpcEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;Lcom/alipay/mobile/beehive/rpc/RpcTask;)V

    .line 125
    iget-object v0, p1, Lcom/alipay/mobile/beehive/rpc/RpcTask;->runnable:Lcom/alipay/mobile/beehive/rpc/RpcRunnable;

    iget-object v3, p1, Lcom/alipay/mobile/beehive/rpc/RpcTask;->params:[Ljava/lang/Object;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/beehive/rpc/RpcRunnable;->execute([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 139
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v0, v1, p1}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->onRpcFinish(Ljava/lang/Object;Ljava/lang/Exception;Lcom/alipay/mobile/beehive/rpc/RpcTask;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 144
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 128
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "RpcRunnber"

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    invoke-static {v0}, Lcom/alipay/mobile/beehive/rpc/RpcUtil;->isNetworkException(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alipay/mobile/beehive/rpc/RpcTask;->runConfig:Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;

    iget-boolean v1, v1, Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;->showNetError:Z

    if-nez v1, :cond_0

    .line 130
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 139
    :goto_1
    :try_start_3
    invoke-direct {p0, v2, v1, p1}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->onRpcFinish(Ljava/lang/Object;Ljava/lang/Exception;Lcom/alipay/mobile/beehive/rpc/RpcTask;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 143
    :goto_2
    throw v0

    .line 131
    :cond_0
    :try_start_4
    iget-object v1, p1, Lcom/alipay/mobile/beehive/rpc/RpcTask;->runConfig:Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;

    iget-boolean v1, v1, Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;->showWarn:Z

    if-nez v1, :cond_1

    .line 132
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 139
    :cond_1
    const/4 v1, 0x0

    :try_start_5
    invoke-direct {p0, v1, v0, p1}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->onRpcFinish(Ljava/lang/Object;Ljava/lang/Exception;Lcom/alipay/mobile/beehive/rpc/RpcTask;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 140
    :catch_1
    move-exception v0

    .line 141
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "RpcRunnber"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 134
    :catch_2
    move-exception v0

    .line 136
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "RpcRunnber"

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 139
    const/4 v1, 0x0

    :try_start_7
    invoke-direct {p0, v1, v0, p1}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->onRpcFinish(Ljava/lang/Object;Ljava/lang/Exception;Lcom/alipay/mobile/beehive/rpc/RpcTask;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 140
    :catch_3
    move-exception v0

    .line 141
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "RpcRunnber"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 140
    :catch_4
    move-exception v1

    .line 141
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "RpcRunnber"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 140
    :catch_5
    move-exception v0

    .line 141
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "RpcRunnber"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 137
    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method private onRpcFinish(Ljava/lang/Object;Ljava/lang/Exception;Lcom/alipay/mobile/beehive/rpc/RpcTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            "Lcom/alipay/mobile/beehive/rpc/RpcTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 147
    const-string/jumbo v0, "rpc_finish_start"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->postRpcEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;Lcom/alipay/mobile/beehive/rpc/RpcTask;)V

    .line 149
    if-eqz p2, :cond_0

    .line 150
    const-string/jumbo v0, "rpc_result_exception"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->postRpcEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;Lcom/alipay/mobile/beehive/rpc/RpcTask;)V

    .line 158
    :goto_0
    const-string/jumbo v0, "rpc_finish_end"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->postRpcEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;Lcom/alipay/mobile/beehive/rpc/RpcTask;)V

    .line 159
    return-void

    .line 152
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/beehive/rpc/RpcUtil;->isRpcSuccess(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p0, p1, p3}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->onRpcSuccess(Ljava/lang/Object;Lcom/alipay/mobile/beehive/rpc/RpcTask;)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->onRpcFail(Ljava/lang/Object;Lcom/alipay/mobile/beehive/rpc/RpcTask;)V

    goto :goto_0
.end method

.method private post(Lcom/alipay/mobile/beehive/rpc/RpcEvent;)V
    .locals 1

    .prologue
    .line 174
    if-eqz p1, :cond_0

    .line 175
    invoke-static {}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->getInstance()Lcom/alipay/mobile/beehive/eventbus/EventBusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->post(Ljava/lang/Object;)V

    .line 177
    :cond_0
    return-void
.end method

.method private postRpcEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;Lcom/alipay/mobile/beehive/rpc/RpcTask;)V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->buildRpcEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;Lcom/alipay/mobile/beehive/rpc/RpcTask;)Lcom/alipay/mobile/beehive/rpc/RpcEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->post(Lcom/alipay/mobile/beehive/rpc/RpcEvent;)V

    .line 171
    return-void
.end method

.method public static varargs run(Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;Lcom/alipay/mobile/beehive/rpc/RpcRunnable;Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;",
            "Lcom/alipay/mobile/beehive/rpc/RpcRunnable",
            "<*>;",
            "Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/alipay/mobile/beehive/rpc/RpcRunner;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;-><init>(Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;Lcom/alipay/mobile/beehive/rpc/RpcRunnable;Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;)V

    .line 56
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->start([Ljava/lang/Object;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected onRpcFail(Ljava/lang/Object;Lcom/alipay/mobile/beehive/rpc/RpcTask;)V
    .locals 2

    .prologue
    .line 166
    const-string/jumbo v0, "rpc_result_fail"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->buildRpcEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;Lcom/alipay/mobile/beehive/rpc/RpcTask;)Lcom/alipay/mobile/beehive/rpc/RpcEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->post(Lcom/alipay/mobile/beehive/rpc/RpcEvent;)V

    .line 167
    return-void
.end method

.method protected onRpcSuccess(Ljava/lang/Object;Lcom/alipay/mobile/beehive/rpc/RpcTask;)V
    .locals 2

    .prologue
    .line 162
    const-string/jumbo v0, "rpc_result_success"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->buildRpcEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;Lcom/alipay/mobile/beehive/rpc/RpcTask;)Lcom/alipay/mobile/beehive/rpc/RpcEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->post(Lcom/alipay/mobile/beehive/rpc/RpcEvent;)V

    .line 163
    return-void
.end method

.method public start(Lcom/alipay/mobile/beehive/rpc/RpcTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/beehive/rpc/RpcTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "task must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/beehive/rpc/RpcTask;->runnable:Lcom/alipay/mobile/beehive/rpc/RpcRunnable;

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "task.runnable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobile/beehive/rpc/RpcTask;->subscriber:Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;

    if-nez v0, :cond_2

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "task.subscriber must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/beehive/util/DebugUtil;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->isCheckRunnableClass:Z

    if-eqz v0, :cond_4

    .line 86
    iget-object v0, p1, Lcom/alipay/mobile/beehive/rpc/RpcTask;->runnable:Lcom/alipay/mobile/beehive/rpc/RpcRunnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->checkIsAnonymousClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "for avoid memory leak reason, runnable must not be anonymous Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_3
    iget-object v0, p1, Lcom/alipay/mobile/beehive/rpc/RpcTask;->runnable:Lcom/alipay/mobile/beehive/rpc/RpcRunnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->checkIsNotStaticInnerClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "for avoid memory leak reason, runnable must not be none static inner Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->getInstance()Lcom/alipay/mobile/beehive/eventbus/EventBusManager;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/beehive/rpc/RpcTask;->subscriber:Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->registerRaw(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->rpcTask:Lcom/alipay/mobile/beehive/rpc/RpcTask;

    if-eq v0, p1, :cond_5

    .line 100
    iput-object p1, p0, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->rpcTask:Lcom/alipay/mobile/beehive/rpc/RpcTask;

    .line 109
    :cond_5
    new-instance v0, Lcom/alipay/mobile/beehive/rpc/RpcRunner$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/rpc/RpcRunner$1;-><init>(Lcom/alipay/mobile/beehive/rpc/RpcRunner;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

.method public varargs start([Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->rpcTask:Lcom/alipay/mobile/beehive/rpc/RpcTask;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->rpcTask:Lcom/alipay/mobile/beehive/rpc/RpcTask;

    iput-object p1, v0, Lcom/alipay/mobile/beehive/rpc/RpcTask;->params:[Ljava/lang/Object;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->rpcTask:Lcom/alipay/mobile/beehive/rpc/RpcTask;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->start(Lcom/alipay/mobile/beehive/rpc/RpcTask;)V

    .line 67
    return-void
.end method
