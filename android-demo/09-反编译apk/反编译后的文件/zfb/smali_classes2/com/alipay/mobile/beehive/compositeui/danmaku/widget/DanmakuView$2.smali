.class Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView$2;
.super Ljava/lang/Object;
.source "DanmakuView.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$Callback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public prepared()V
    .locals 3

    .prologue
    .line 273
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "prepare finished."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public updateTimer(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;)V
    .locals 0

    .prologue
    .line 279
    return-void
.end method
