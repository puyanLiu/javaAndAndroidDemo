.class public Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;
.super Ljava/lang/Thread;
.source "ResourceUploadDispatcher.java"


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

.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Z

.field private final d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;",
            ">;",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;->c:Z

    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;->a:Ljava/util/concurrent/BlockingQueue;

    .line 31
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;->b:Ljava/util/concurrent/BlockingQueue;

    .line 32
    const-string/jumbo v0, "chatResourceUploadDispatcher"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;->setName(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 34
    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;->c:Z

    .line 93
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;->interrupt()V

    .line 94
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 38
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 40
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "ResourceUploadDispatcher running"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ResourceUploadDispatcher got request "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :try_start_1
    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ResourceUploadDispatcher request canceled "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->onFinish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    const-string/jumbo v4, "\u8d44\u6e90\u4e0a\u4f20 Exception\uff1a"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->onFail()V

    goto :goto_0

    .line 47
    :catch_1
    move-exception v0

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;->c:Z

    if-eqz v0, :cond_0

    .line 48
    return-void

    .line 60
    :cond_1
    :try_start_2
    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->canRetry()Z

    move-result v1

    if-nez v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "NetworkDispatcher request out of retry count "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->onFail()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 78
    :catch_2
    move-exception v1

    .line 79
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    const-string/jumbo v4, "\u8d44\u6e90\u4e0a\u4f20 \u5185\u5b58\u6ea2\u51fa\uff1a"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->onFail()V

    goto/16 :goto_0

    .line 66
    :cond_2
    :try_start_3
    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->uploadResource()Z

    move-result v1

    .line 67
    if-eqz v1, :cond_3

    .line 68
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 70
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ResourceUploadDispatcher retry "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->retry()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method
