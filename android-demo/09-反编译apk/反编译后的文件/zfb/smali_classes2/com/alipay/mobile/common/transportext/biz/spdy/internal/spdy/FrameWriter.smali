.class public interface abstract Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;
.super Ljava/lang/Object;
.source "FrameWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract connectionHeader()V
.end method

.method public abstract data(ZI[B)V
.end method

.method public abstract data(ZI[BII)V
.end method

.method public abstract flush()V
.end method

.method public abstract goAway(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V
.end method

.method public abstract headers(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract noop()V
.end method

.method public abstract ping(ZII)V
.end method

.method public abstract rstStream(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V
.end method

.method public abstract settings(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;)V
.end method

.method public abstract synReply(ZILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract synStream(ZZIIIILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZIIII",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract tcpData([B)V
.end method

.method public abstract windowUpdate(II)V
.end method
