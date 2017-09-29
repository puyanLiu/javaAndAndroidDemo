.class Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$6;
.super Ljava/lang/Object;
.source "EnhancedVideoPlayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$6;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$6;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$6;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$1(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$3(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;Lcom/alipay/mobile/beehive/service/PhotoInfo;)V

    .line 415
    return-void
.end method
