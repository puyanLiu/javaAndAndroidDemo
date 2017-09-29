.class public Lcom/taobao/gcanvas/viewcontroller/CanvasViewController;
.super Lcom/taobao/gcanvas/viewcontroller/ViewController;
.source "CanvasViewController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/taobao/gcanvas/viewcontroller/ViewController;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public init(Lcom/taobao/gcanvas/GCanvas;Landroid/app/Activity;Lcom/taobao/gcanvas/GCanvasWebView;Lcom/taobao/gcanvas/GCanvasView;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 20
    invoke-super {p0, p1, p2, p3, p4}, Lcom/taobao/gcanvas/viewcontroller/ViewController;->init(Lcom/taobao/gcanvas/GCanvas;Landroid/app/Activity;Lcom/taobao/gcanvas/GCanvasWebView;Lcom/taobao/gcanvas/GCanvasView;)V

    .line 22
    sget-boolean v0, Lcom/taobao/gcanvas/GUtil;->newCanvasMode:Z

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/CanvasViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 26
    if-eqz v0, :cond_0

    .line 27
    iget-object v1, p0, Lcom/taobao/gcanvas/viewcontroller/CanvasViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    sget-object v2, Lcom/taobao/gcanvas/GUtil;->clearColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/taobao/gcanvas/GCanvasView;->setBackgroundColor(I)V

    .line 28
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 31
    iget-object v2, p0, Lcom/taobao/gcanvas/viewcontroller/CanvasViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/CanvasViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v0, v4}, Lcom/taobao/gcanvas/GCanvasView;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/CanvasViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 42
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/gcanvas/viewcontroller/CanvasViewController;->attachViews()V

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/gcanvas/viewcontroller/CanvasViewController;->attachViews()V

    goto :goto_0
.end method

.method public uninit()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Lcom/taobao/gcanvas/viewcontroller/ViewController;->uninit()V

    .line 48
    sget-boolean v0, Lcom/taobao/gcanvas/GUtil;->newCanvasMode:Z

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/CanvasViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 50
    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/taobao/gcanvas/viewcontroller/CanvasViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/CanvasViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/taobao/gcanvas/GCanvasView;->setVisibility(I)V

    .line 62
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/gcanvas/viewcontroller/CanvasViewController;->dettachViews()V

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/gcanvas/viewcontroller/CanvasViewController;->dettachViews()V

    goto :goto_0
.end method
