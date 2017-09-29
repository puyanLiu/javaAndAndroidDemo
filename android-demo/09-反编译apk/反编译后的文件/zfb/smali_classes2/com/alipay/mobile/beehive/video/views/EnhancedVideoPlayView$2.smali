.class Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$2;
.super Ljava/lang/Object;
.source "EnhancedVideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$2;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$2;)Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$2;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$2;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$9(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$2;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$10(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$2;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$11(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;Z)V

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$2;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$12(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$2$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$2$1;-><init>(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$2;)V

    .line 200
    const-wide/16 v2, 0x1388

    .line 194
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 202
    :cond_0
    return-void
.end method
