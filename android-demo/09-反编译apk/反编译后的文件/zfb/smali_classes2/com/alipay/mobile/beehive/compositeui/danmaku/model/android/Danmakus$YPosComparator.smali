.class Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$YPosComparator;
.super Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$BaseComparator;
.source "Danmakus.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;Z)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$YPosComparator;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    .line 346
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$BaseComparator;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;Z)V

    .line 347
    return-void
.end method


# virtual methods
.method public compare(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)I
    .locals 2

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$YPosComparator;->mDuplicateMergingEnable:Z

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DanmakuUtils;->isDuplicate(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    const/4 v0, 0x0

    .line 358
    :cond_0
    :goto_0
    return v0

    .line 354
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getTop()F

    move-result v0

    invoke-virtual {p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getTop()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    .line 355
    if-nez v0, :cond_0

    .line 358
    invoke-static {p1, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DanmakuUtils;->compare(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)I

    move-result v0

    goto :goto_0
.end method
