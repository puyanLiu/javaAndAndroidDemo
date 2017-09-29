.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$UserIdFilter;
.super Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$UserFilter;
.source "DanmakuFilters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$UserFilter",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$UserFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;IILcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;Z)Z
    .locals 2

    .prologue
    .line 288
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$UserIdFilter;->mBlackList:Ljava/util/List;

    iget v1, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
