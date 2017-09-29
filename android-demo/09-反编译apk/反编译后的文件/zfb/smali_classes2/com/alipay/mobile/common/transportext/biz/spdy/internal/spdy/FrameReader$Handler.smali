.class public interface abstract Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;
.super Ljava/lang/Object;
.source "FrameReader.java"


# virtual methods
.method public abstract data(ZILjava/io/InputStream;I)V
.end method

.method public abstract goAway(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V
.end method

.method public abstract headers(ZZIIILjava/util/List;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/HeadersMode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZIII",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/HeadersMode;",
            ")V"
        }
    .end annotation
.end method

.method public abstract noop()V
.end method

.method public abstract ping(ZII)V
.end method

.method public abstract preReadSynReplyHeaders(I)V
.end method

.method public abstract priority(II)V
.end method

.method public abstract rstStream(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V
.end method

.method public abstract settings(ZLcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;)V
.end method

.method public abstract tcpData(Ljava/io/InputStream;I)V
.end method

.method public abstract windowUpdate(IIZ)V
.end method
