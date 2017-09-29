.class public abstract Lcom/alipay/mobile/common/transportext/mnet/Client;
.super Ljava/lang/Object;
.source "Client.java"


# instance fields
.field private handle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "mnet"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/mnet/Client;->handle:J

    return-void
.end method


# virtual methods
.method protected abstract asyncErrorMemory(JLjava/lang/String;)V
.end method

.method protected abstract asyncErrorSystem(JILjava/lang/String;)V
.end method

.method public native close()I
.end method

.method public final closed()Z
    .locals 4

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/mnet/Client;->handle:J

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

.method protected final errorMemory(JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/mnet/Client;->asyncErrorMemory(JLjava/lang/String;)V

    .line 48
    return-void
.end method

.method protected final errorSystem(JILjava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/mnet/Client;->asyncErrorSystem(JILjava/lang/String;)V

    .line 42
    return-void
.end method

.method public final identification()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/mnet/Client;->handle:J

    return-wide v0
.end method
