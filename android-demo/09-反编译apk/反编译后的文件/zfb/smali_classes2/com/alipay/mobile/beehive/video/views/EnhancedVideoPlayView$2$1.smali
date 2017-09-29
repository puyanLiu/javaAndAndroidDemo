.class Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$2$1;
.super Ljava/lang/Object;
.source "EnhancedVideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$2$1;->this$1:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$2;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$2$1;->this$1:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$2;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$2;->access$0(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$2;)Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$10(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    return-void
.end method
