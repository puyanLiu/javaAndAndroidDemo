.class public Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;
.super Ljava/lang/Object;
.source "ChatMsgSender.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SocialSdk_Sdk"

.field private static i:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;


# instance fields
.field a:Landroid/os/Handler;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;",
            ">;"
        }
    .end annotation
.end field

.field private f:[Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;

.field private g:Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;

.field private final h:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->b:Ljava/util/Set;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->c:Ljava/util/Set;

    .line 34
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 39
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 50
    iput v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->h:I

    .line 52
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/g;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/g;-><init>(Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->a:Landroid/os/Handler;

    .line 64
    new-array v0, v2, [Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->f:[Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;)V
    .locals 5

    .prologue
    .line 196
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->c:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "ChatMsgSender handleRetryRequest"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "ChatMsgSender handleRetryRequest \u6709\u6570\u636e\uff0c\u5f00\u59cb\u5904\u7406"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;

    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->onFinish()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->add(Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;
    .locals 2

    .prologue
    .line 68
    const-class v1, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->i:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;-><init>()V

    .line 70
    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->i:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->start()V

    .line 72
    :cond_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->i:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public add(Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;)V
    .locals 4

    .prologue
    .line 92
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ChatMsgSender \u6dfb\u52a0\u53d1\u9001\u6d88\u606f:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-interface {p1, p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->setMsgSender(Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;)Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;

    .line 95
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->b:Ljava/util/Set;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-interface {p1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->isDirectSend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 103
    :goto_0
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 177
    :cond_0
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/i;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/chat/processer/i;-><init>(Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->cancelAll(Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender$RequestFilter;)V

    goto :goto_0
.end method

.method public cancelAll(Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender$RequestFilter;)V
    .locals 4

    .prologue
    .line 146
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->b:Ljava/util/Set;

    monitor-enter v1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    monitor-exit v1

    return-void

    .line 147
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;

    .line 148
    invoke-interface {p1, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender$RequestFilter;->apply(Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public cancelAll(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot cancelAll with a null tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/h;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/chat/processer/h;-><init>(Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->cancelAll(Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender$RequestFilter;)V

    .line 169
    return-void
.end method

.method public finish(Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;)V
    .locals 5

    .prologue
    .line 111
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->b:Ljava/util/Set;

    monitor-enter v1

    .line 112
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ChatMsgSender finish request "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 111
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public retry(Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;)V
    .locals 5

    .prologue
    .line 186
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->c:Ljava/util/Set;

    monitor-enter v1

    .line 187
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ChatMsgSender \u6dfb\u52a0\u8fdb\u91cd\u8bd5\u961f\u5217 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->stop()V

    .line 77
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "ChatMsgSender start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/util/concurrent/LinkedBlockingQueue;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->g:Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->g:Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;->start()V

    .line 81
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->f:[Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 89
    return-void

    .line 82
    :cond_0
    new-instance v1, Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    .line 83
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->f:[Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;

    aput-object v1, v2, v0

    .line 84
    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;->start()V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 121
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "ChatMsgSender stop "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->f:[Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->g:Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->g:Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/ResourceUploadDispatcher;->quit()V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 130
    return-void

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->f:[Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->f:[Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/chat/processer/NetworkDispatcher;->quit()V

    .line 122
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
