.class Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$TimeComparator;
.super Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$BaseComparator;
.source "Danmakus.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;Z)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$TimeComparator;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    .line 334
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$BaseComparator;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;Z)V

    .line 335
    return-void
.end method


# virtual methods
.method public compare(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)I
    .locals 1

    .prologue
    .line 339
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus$BaseComparator;->compare(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)I

    move-result v0

    return v0
.end method
