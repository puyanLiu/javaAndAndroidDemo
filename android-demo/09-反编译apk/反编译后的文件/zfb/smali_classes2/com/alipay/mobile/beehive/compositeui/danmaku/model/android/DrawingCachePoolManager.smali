.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCachePoolManager;
.super Ljava/lang/Object;
.source "DrawingCachePoolManager.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/PoolableManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/PoolableManager",
        "<",
        "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic newInstance()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCachePoolManager;->newInstance()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;

    move-result-object v0

    return-object v0
.end method

.method public onAcquired(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;)V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public bridge synthetic onAcquired(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCachePoolManager;->onAcquired(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;)V

    return-void
.end method

.method public onReleased(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;)V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public bridge synthetic onReleased(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCachePoolManager;->onReleased(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;)V

    return-void
.end method
