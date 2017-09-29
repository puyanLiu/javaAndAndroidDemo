.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Danmaku;
.super Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;
.source "Danmaku.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;-><init>()V

    .line 24
    invoke-static {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->fillText(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getBottom()F
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getLeft()F
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getRectAtTime(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;J)[F
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRight()F
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getTop()F
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public layout(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;FF)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
