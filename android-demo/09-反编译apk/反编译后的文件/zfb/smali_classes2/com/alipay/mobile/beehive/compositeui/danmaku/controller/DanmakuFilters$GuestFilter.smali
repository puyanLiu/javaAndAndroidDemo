.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$GuestFilter;
.super Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;
.source "DanmakuFilters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$BaseDanmakuFilter",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mBlock:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;-><init>()V

    .line 315
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$GuestFilter;->mBlock:Ljava/lang/Boolean;

    .line 313
    return-void
.end method


# virtual methods
.method public filter(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;IILcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;Z)Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$GuestFilter;->mBlock:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 323
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isGuest:Z

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$GuestFilter;->mBlock:Ljava/lang/Boolean;

    .line 334
    return-void
.end method

.method public setData(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$GuestFilter;->mBlock:Ljava/lang/Boolean;

    .line 329
    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$GuestFilter;->setData(Ljava/lang/Boolean;)V

    return-void
.end method
