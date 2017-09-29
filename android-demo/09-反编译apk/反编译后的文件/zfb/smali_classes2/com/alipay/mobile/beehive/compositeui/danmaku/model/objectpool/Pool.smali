.class public interface abstract Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool;
.super Ljava/lang/Object;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract acquire()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract release(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
