.class public interface abstract Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManager;
.super Ljava/lang/Object;
.source "SpdyLongLinkConnManager.java"


# static fields
.field public static final IO_TYPE_INPUT:I = 0x0

.field public static final IO_TYPE_OUTPUT:I = 0x1


# virtual methods
.method public abstract asynConnect()V
.end method

.method public abstract attch(Landroid/content/Context;)V
.end method

.method public abstract closeConnection()V
.end method

.method public abstract connect()Z
.end method

.method public abstract getConnection()Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;
.end method

.method public abstract isNetworkActive()Z
.end method

.method public abstract justPing()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract notifyNetworkActive(I)V
.end method

.method public abstract notifyPingResponse(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;)V
.end method

.method public abstract resetPingStartTime()V
.end method

.method public abstract startPing()V
.end method
