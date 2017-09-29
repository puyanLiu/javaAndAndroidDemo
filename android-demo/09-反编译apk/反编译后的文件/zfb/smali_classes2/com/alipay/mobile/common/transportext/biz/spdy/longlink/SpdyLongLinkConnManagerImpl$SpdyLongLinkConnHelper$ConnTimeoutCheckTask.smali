.class Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnTimeoutCheckTask;
.super Ljava/lang/Object;
.source "SpdyLongLinkConnManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mConnFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnTimeoutCheckTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1149
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnTimeoutCheckTask;->mConnFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 1150
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1155
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnTimeoutCheckTask;->mConnFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnTimeoutCheckTask;->mConnFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1158
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
