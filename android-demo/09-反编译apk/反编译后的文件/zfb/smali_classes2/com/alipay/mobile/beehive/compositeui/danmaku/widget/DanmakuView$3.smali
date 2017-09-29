.class Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView$3;
.super Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;
.source "DanmakuView.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView$3;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;

    .line 289
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic parse()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView$3;->parse()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    move-result-object v0

    return-object v0
.end method

.method protected parse()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;
    .locals 1

    .prologue
    .line 293
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;-><init>()V

    return-object v0
.end method
