.class public interface abstract Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/PoolableManager;
.super Ljava/lang/Object;
.source "PoolableManager.java"


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
.method public abstract newInstance()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract onAcquired(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onReleased(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
