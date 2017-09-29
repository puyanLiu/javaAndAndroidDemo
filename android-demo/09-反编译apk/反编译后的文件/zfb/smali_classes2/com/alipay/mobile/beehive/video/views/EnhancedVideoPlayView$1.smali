.class Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$1;
.super Ljava/lang/Object;
.source "EnhancedVideoPlayView.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$OnPlayCompletionListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$1;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$1;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$8(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)V

    .line 126
    return-void
.end method
