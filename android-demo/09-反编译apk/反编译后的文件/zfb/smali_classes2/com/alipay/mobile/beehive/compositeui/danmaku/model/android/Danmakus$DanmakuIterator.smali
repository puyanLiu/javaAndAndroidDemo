.class Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;
.super Ljava/lang/Object;
.source "Danmakus.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;


# instance fields
.field private it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;",
            ">;"
        }
    .end annotation
.end field

.field private mIteratorUsed:Z

.field final synthetic this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;->setDatas(Ljava/util/Collection;)V

    .line 267
    return-void
.end method


# virtual methods
.method public declared-synchronized hasNext()Z
    .locals 1

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;->it:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized next()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;
    .locals 1

    .prologue
    .line 290
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;->mIteratorUsed:Z

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;->it:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove()V
    .locals 1

    .prologue
    .line 301
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;->mIteratorUsed:Z

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;->it:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :cond_0
    monitor-exit p0

    return-void

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;->mIteratorUsed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;->it:Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 278
    :goto_0
    monitor-exit p0

    return-void

    .line 273
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;->mData:Ljava/util/Collection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->access$0(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;)I

    move-result v0

    if-lez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;->mData:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;->it:Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 276
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;->it:Ljava/util/Iterator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setDatas(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;->mData:Ljava/util/Collection;

    if-eq v0, p1, :cond_0

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;->mIteratorUsed:Z

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;->it:Ljava/util/Iterator;

    .line 285
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$DanmakuIterator;->mData:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    monitor-exit p0

    return-void

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
