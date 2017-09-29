.class Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$PingThreadFactory;
.super Ljava/lang/Object;
.source "SpdyLongLinkConnManagerImpl.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)V
    .locals 0

    .prologue
    .line 724
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$PingThreadFactory;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .prologue
    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 729
    const-string/jumbo v1, "spdy_ping_schedule_thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$PingThreadFactory;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$700(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$PingThreadFactory;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$700(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getActiveCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v1
.end method
