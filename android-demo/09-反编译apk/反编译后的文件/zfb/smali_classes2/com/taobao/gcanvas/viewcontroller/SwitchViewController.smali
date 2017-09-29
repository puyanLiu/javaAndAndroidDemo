.class public Lcom/taobao/gcanvas/viewcontroller/SwitchViewController;
.super Lcom/taobao/gcanvas/viewcontroller/ViewController;
.source "SwitchViewController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/taobao/gcanvas/viewcontroller/ViewController;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Lcom/taobao/gcanvas/GCanvas;Landroid/app/Activity;Lcom/taobao/gcanvas/GCanvasWebView;Lcom/taobao/gcanvas/GCanvasView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-super {p0, p1, p2, p3, p4}, Lcom/taobao/gcanvas/viewcontroller/ViewController;->init(Lcom/taobao/gcanvas/GCanvas;Landroid/app/Activity;Lcom/taobao/gcanvas/GCanvasWebView;Lcom/taobao/gcanvas/GCanvasView;)V

    .line 16
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/SwitchViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/gcanvas/GCanvasView;->setZOrderOnTop(Z)V

    .line 18
    invoke-virtual {p0}, Lcom/taobao/gcanvas/viewcontroller/SwitchViewController;->attachViews()V

    .line 41
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/SwitchViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v0, v2}, Lcom/taobao/gcanvas/GCanvasView;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/SwitchViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    return-void
.end method

.method public uninit()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lcom/taobao/gcanvas/viewcontroller/ViewController;->uninit()V

    .line 52
    invoke-virtual {p0}, Lcom/taobao/gcanvas/viewcontroller/SwitchViewController;->dettachViews()V

    .line 54
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/SwitchViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/taobao/gcanvas/GCanvasView;->setVisibility(I)V

    .line 55
    return-void
.end method
