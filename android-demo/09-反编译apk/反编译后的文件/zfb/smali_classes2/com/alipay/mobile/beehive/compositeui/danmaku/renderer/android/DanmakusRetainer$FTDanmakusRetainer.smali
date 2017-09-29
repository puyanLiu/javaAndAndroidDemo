.class Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;
.super Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;
.source "DanmakusRetainer.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;)V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;)V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkVerticalEdge(ZLcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;FLcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)F
    .locals 2

    .prologue
    .line 285
    iget v0, p2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintHeight:F

    add-float/2addr v0, p4

    invoke-interface {p3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 286
    const/4 p4, 0x0

    .line 287
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;->clear()V

    .line 289
    :cond_0
    return p4
.end method
