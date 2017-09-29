.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;
.super Ljava/lang/Object;
.source "SpecialDanmaku.java"


# instance fields
.field public beginTime:J

.field delatX:F

.field deltaY:F

.field public duration:J

.field public endTime:J

.field pBegin:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;

.field pEnd:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;

.field final synthetic this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBeginPoint()[F
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 54
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->pBegin:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;

    iget v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;->x:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->pBegin:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;

    iget v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;->y:F

    aput v2, v0, v1

    .line 53
    return-object v0
.end method

.method public getDistance()F
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->pEnd:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->pBegin:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;->getDistance(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;)F

    move-result v0

    return v0
.end method

.method public getEndPoint()[F
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 60
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->pEnd:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;

    iget v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;->x:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->pEnd:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;

    iget v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;->y:F

    aput v2, v0, v1

    .line 59
    return-object v0
.end method

.method public setPoints(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;)V
    .locals 2

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->pBegin:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;

    .line 43
    iput-object p2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->pEnd:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;

    .line 44
    iget v0, p2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;->x:F

    iget v1, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->delatX:F

    .line 45
    iget v0, p2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;->y:F

    iget v1, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->deltaY:F

    .line 46
    return-void
.end method
