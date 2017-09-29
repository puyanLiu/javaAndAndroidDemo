.class public Lcom/taobao/gcanvas/viewcontroller/FloatViewController;
.super Lcom/taobao/gcanvas/viewcontroller/ViewController;
.source "FloatViewController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/taobao/gcanvas/viewcontroller/ViewController;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public init(Lcom/taobao/gcanvas/GCanvas;Landroid/app/Activity;Lcom/taobao/gcanvas/GCanvasWebView;Lcom/taobao/gcanvas/GCanvasView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-super {p0, p1, p2, p3, p4}, Lcom/taobao/gcanvas/viewcontroller/ViewController;->init(Lcom/taobao/gcanvas/GCanvas;Landroid/app/Activity;Lcom/taobao/gcanvas/GCanvasWebView;Lcom/taobao/gcanvas/GCanvasView;)V

    .line 21
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "enter, update view for view mode, FLOAT_HYBRID_MODE"

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/FloatViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/gcanvas/GCanvasView;->setZOrderOnTop(Z)V

    .line 25
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/FloatViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 27
    const-string/jumbo v0, "transparent"

    invoke-virtual {p1, v0}, Lcom/taobao/gcanvas/GCanvas;->postSetClearColorMessage(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/taobao/gcanvas/viewcontroller/FloatViewController;->attachViews()V

    .line 31
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/FloatViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/FloatViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v0, v2}, Lcom/taobao/gcanvas/GCanvasView;->setVisibility(I)V

    .line 34
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "leave, update view for view mode, FLOAT_HYBRID_MODE"

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public uninit()V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Lcom/taobao/gcanvas/viewcontroller/ViewController;->uninit()V

    .line 41
    invoke-virtual {p0}, Lcom/taobao/gcanvas/viewcontroller/FloatViewController;->dettachViews()V

    .line 43
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/FloatViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/gcanvas/GCanvasView;->setZOrderOnTop(Z)V

    .line 44
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/FloatViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 45
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/FloatViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/taobao/gcanvas/GCanvasView;->setVisibility(I)V

    .line 46
    return-void
.end method
