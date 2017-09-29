.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$TextColorFilter;
.super Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;
.source "DanmakuFilters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$BaseDanmakuFilter",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field public mWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;-><init>()V

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$TextColorFilter;->mWhiteList:Ljava/util/List;

    .line 209
    return-void
.end method

.method private addToWhiteList(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$TextColorFilter;->mWhiteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$TextColorFilter;->mWhiteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_0
    return-void
.end method


# virtual methods
.method public filter(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;IILcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;Z)Z
    .locals 2

    .prologue
    .line 222
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$TextColorFilter;->mWhiteList:Ljava/util/List;

    iget v1, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$TextColorFilter;->mWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 238
    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$TextColorFilter;->setData(Ljava/util/List;)V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$TextColorFilter;->reset()V

    .line 228
    if-eqz p1, :cond_0

    .line 229
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    :cond_0
    return-void

    .line 229
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 230
    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$TextColorFilter;->addToWhiteList(Ljava/lang/Integer;)V

    goto :goto_0
.end method
