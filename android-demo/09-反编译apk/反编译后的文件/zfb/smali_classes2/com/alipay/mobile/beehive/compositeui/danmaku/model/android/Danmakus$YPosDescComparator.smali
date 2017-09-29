.class Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$YPosDescComparator;
.super Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$BaseComparator;
.source "Danmakus.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;Z)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$YPosDescComparator;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    .line 365
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$BaseComparator;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;Z)V

    .line 366
    return-void
.end method


# virtual methods
.method public compare(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)I
    .locals 2

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$YPosDescComparator;->mDuplicateMergingEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DanmakuUtils;->isDuplicate(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    const/4 v0, 0x0

    .line 374
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getTop()F

    move-result v0

    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getTop()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    goto :goto_0
.end method
