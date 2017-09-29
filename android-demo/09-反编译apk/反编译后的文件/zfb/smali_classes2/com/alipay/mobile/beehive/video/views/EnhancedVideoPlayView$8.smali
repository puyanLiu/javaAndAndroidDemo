.class Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$8;
.super Ljava/lang/Object;
.source "EnhancedVideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

.field private final synthetic val$isOriVideo:Z

.field private final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;ZI)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$8;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    iput-boolean p2, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$8;->val$isOriVideo:Z

    iput p3, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$8;->val$state:I

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$8;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    iget-boolean v1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$8;->val$isOriVideo:Z

    iget v2, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$8;->val$state:I

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$14(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;ZI)V

    .line 487
    return-void
.end method
