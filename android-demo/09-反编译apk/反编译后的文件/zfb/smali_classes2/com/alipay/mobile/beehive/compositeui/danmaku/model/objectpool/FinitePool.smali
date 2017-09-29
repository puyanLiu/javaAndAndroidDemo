.class Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;
.super Ljava/lang/Object;
.source "FinitePool.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mInfinite:Z

.field private final mLimit:I

.field private final mManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/PoolableManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/PoolableManager",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mPoolCount:I

.field private mRoot:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/PoolableManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/PoolableManager",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;->mManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/PoolableManager;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;->mLimit:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;->mInfinite:Z

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/PoolableManager;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/PoolableManager",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-gtz p2, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The pool limit must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;->mManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/PoolableManager;

    .line 47
    iput p2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;->mLimit:I

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;->mInfinite:Z

    .line 49
    return-void
.end method


# virtual methods
.method public acquire()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;->mRoot:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;

    if-eqz v0, :cond_1

    .line 55
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;->mRoot:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;

    .line 56
    invoke-interface {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;->getNextPoolable()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;->mRoot:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;

    .line 57
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;->mPoolCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;->mPoolCount:I

    move-object v0, v1

    .line 62
    :goto_0
    if-eqz v0, :cond_0

    .line 63
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;->setNextPoolable(Ljava/lang/Object;)V

    .line 64
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;->setPooled(Z)V

    .line 65
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;->mManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/PoolableManager;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/PoolableManager;->onAcquired(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;)V

    .line 68
    :cond_0
    return-object v0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;->mManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/PoolableManager;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/PoolableManager;->newInstance()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;

    move-result-object v0

    goto :goto_0
.end method

.method public release(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-interface {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;->isPooled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;->mInfinite:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;->mPoolCount:I

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;->mLimit:I

    if-ge v0, v1, :cond_1

    .line 74
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;->mPoolCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;->mPoolCount:I

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;->mRoot:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;

    invoke-interface {p1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;->setNextPoolable(Ljava/lang/Object;)V

    .line 76
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;->setPooled(Z)V

    .line 77
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;->mRoot:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/FinitePool;->mManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/PoolableManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/PoolableManager;->onReleased(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[FinitePool] Element is already in pool: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0
.end method
