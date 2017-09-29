.class public Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Z

.field private final c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;->b:Z

    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;->a:Ljava/util/concurrent/BlockingQueue;

    .line 27
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 28
    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;->b:Z

    .line 83
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;->interrupt()V

    .line 84
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 32
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 35
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "NetworkDispatcher running"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "NetworkDispatcher got request "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :try_start_1
    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "NetworkDispatcher request canceled "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->onFinish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->onFail()V

    goto :goto_0

    .line 41
    :catch_1
    move-exception v0

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;->b:Z

    if-eqz v0, :cond_0

    .line 42
    return-void

    .line 56
    :cond_1
    :try_start_2
    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->canRetry()Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "NetworkDispatcher request "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 59
    const-string/jumbo v4, "out of time or out of retry count :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->getTryCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->onFail()V

    goto/16 :goto_0

    .line 63
    :cond_2
    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->sendMessage()Z

    move-result v1

    .line 64
    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "NetworkDispatcher retry "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->retry()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
