.class public Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;
.super Ljava/lang/Object;
.source "PingRecord.java"


# instance fields
.field public ping:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;

.field public pingTime:J

.field public responsed:Z

.field public sendPingThreadFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;->responsed:Z

    .line 22
    return-void
.end method
