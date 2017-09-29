.class Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl$1;
.super Ljava/lang/Object;
.source "NotifyBellServiceImpl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl$1;->this$0:Lcom/alipay/mobile/base/notify/NotifyBellServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 124
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "NotifyBellServiceImpl"

    const-string/jumbo v2, "onCompletion"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 126
    return-void
.end method
