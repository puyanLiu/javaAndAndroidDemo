.class public abstract Lcom/alipay/mobile/common/transportext/mnet/Plan;
.super Ljava/lang/Object;
.source "Plan.java"


# instance fields
.field private handle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "mnet"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/mnet/Plan;->handle:J

    return-void
.end method


# virtual methods
.method protected abstract asyncTimeOut(J)V
.end method

.method public native close()I
.end method

.method public final closed()Z
    .locals 4

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/mnet/Plan;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final identification()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/mnet/Plan;->handle:J

    return-wide v0
.end method

.method public native open(JZ)I
.end method

.method public native start(J)I
.end method

.method public native stop()I
.end method

.method protected final timeOut(J)V
    .locals 0

    .prologue
    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/transportext/mnet/Plan;->asyncTimeOut(J)V

    .line 64
    return-void
.end method
