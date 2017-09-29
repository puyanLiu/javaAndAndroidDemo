.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pools;
.super Ljava/lang/Object;
.source "Pools.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static finitePool(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/PoolableManager;I)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable",
            "<TT;>;>(",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/PoolableManager",
            "<TT;>;I)",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/PoolableManager;I)V

    return-object v0
.end method

.method public static simplePool(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/PoolableManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable",
            "<TT;>;>(",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/PoolableManager",
            "<TT;>;)",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/PoolableManager;)V

    return-object v0
.end method

.method public static synchronizedPool(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable",
            "<TT;>;>(",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool",
            "<TT;>;)",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/SynchronizedPool;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/SynchronizedPool;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool;)V

    return-object v0
.end method

.method public static synchronizedPool(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool;Ljava/lang/Object;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable",
            "<TT;>;>(",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/SynchronizedPool;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/SynchronizedPool;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool;Ljava/lang/Object;)V

    return-object v0
.end method
