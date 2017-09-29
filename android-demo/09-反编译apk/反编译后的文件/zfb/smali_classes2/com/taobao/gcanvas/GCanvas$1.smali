.class Lcom/taobao/gcanvas/GCanvas$1;
.super Ljava/lang/Object;
.source "GCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/taobao/gcanvas/GCanvas;


# direct methods
.method constructor <init>(Lcom/taobao/gcanvas/GCanvas;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/taobao/gcanvas/GCanvas$1;->this$0:Lcom/taobao/gcanvas/GCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas$1;->this$0:Lcom/taobao/gcanvas/GCanvas;

    iget-object v0, v0, Lcom/taobao/gcanvas/GCanvas;->mViewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    sget-object v1, Lcom/taobao/gcanvas/GCanvas$ViewMode;->SWITCH_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    if-ne v0, v1, :cond_0

    .line 501
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas$1;->this$0:Lcom/taobao/gcanvas/GCanvas;

    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvas;->access$000(Lcom/taobao/gcanvas/GCanvas;)Lcom/taobao/gcanvas/GCanvasWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas$1;->this$0:Lcom/taobao/gcanvas/GCanvas;

    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvas;->access$100(Lcom/taobao/gcanvas/GCanvas;)Lcom/taobao/gcanvas/GCanvasView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/gcanvas/GCanvasView;->setVisibility(I)V

    .line 504
    return-void
.end method
