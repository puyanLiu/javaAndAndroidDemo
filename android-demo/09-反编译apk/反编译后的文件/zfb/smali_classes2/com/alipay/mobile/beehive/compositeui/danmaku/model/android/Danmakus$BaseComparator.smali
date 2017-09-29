.class Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$BaseComparator;
.super Ljava/lang/Object;
.source "Danmakus.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;",
        ">;"
    }
.end annotation


# instance fields
.field protected mDuplicateMergingEnable:Z

.field final synthetic this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;Z)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$BaseComparator;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$BaseComparator;->setDuplicateMergingEnabled(Z)V

    .line 315
    return-void
.end method


# virtual methods
.method public compare(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)I
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$BaseComparator;->mDuplicateMergingEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DanmakuUtils;->isDuplicate(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const/4 v0, 0x0

    .line 326
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DanmakuUtils;->compare(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    check-cast p2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$BaseComparator;->compare(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)I

    move-result v0

    return v0
.end method

.method public setDuplicateMergingEnabled(Z)V
    .locals 0

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$BaseComparator;->mDuplicateMergingEnable:Z

    .line 319
    return-void
.end method
