.class public Lcom/taobao/gcanvas/viewcontroller/HybridViewController;
.super Lcom/taobao/gcanvas/viewcontroller/ViewController;
.source "HybridViewController.java"


# instance fields
.field private mSavedWebViewLayerType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/taobao/gcanvas/viewcontroller/ViewController;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Lcom/taobao/gcanvas/GCanvas;Landroid/app/Activity;Lcom/taobao/gcanvas/GCanvasWebView;Lcom/taobao/gcanvas/GCanvasView;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Lcom/taobao/gcanvas/viewcontroller/ViewController;->init(Lcom/taobao/gcanvas/GCanvas;Landroid/app/Activity;Lcom/taobao/gcanvas/GCanvasWebView;Lcom/taobao/gcanvas/GCanvasView;)V

    .line 24
    const-string/jumbo v0, "enter, update view for view mode, HYBRID_MODE"

    invoke-static {v0}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/HybridViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 28
    const/4 v0, 0x1

    iput v0, p1, Lcom/taobao/gcanvas/GCanvas;->mForceTransparentTime:I

    .line 30
    sget v0, Lcom/taobao/gcanvas/GUtil;->hybridLayerType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[HybridViewController::init] GUtil.hybridLayerType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/taobao/gcanvas/GUtil;->hybridLayerType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mWebView.getLayerType()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/gcanvas/viewcontroller/HybridViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v1}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayerType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/HybridViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    iput v0, p0, Lcom/taobao/gcanvas/viewcontroller/HybridViewController;->mSavedWebViewLayerType:I

    .line 37
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/HybridViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/taobao/gcanvas/GUtil;->hybridLayerType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/gcanvas/viewcontroller/HybridViewController;->attachViews()V

    .line 42
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/HybridViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 43
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/HybridViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/HybridViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v0, v3}, Lcom/taobao/gcanvas/GCanvasView;->setVisibility(I)V

    .line 46
    const-string/jumbo v0, "leave, update view for view mode, HYBRID_MODE"

    invoke-static {v0}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public preUninit()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 70
    invoke-super {p0}, Lcom/taobao/gcanvas/viewcontroller/ViewController;->preUninit()V

    .line 72
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/HybridViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 73
    sget v0, Lcom/taobao/gcanvas/GUtil;->hybridLayerType:I

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/HybridViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/taobao/gcanvas/viewcontroller/HybridViewController;->mSavedWebViewLayerType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/HybridViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v0, v3}, Lcom/taobao/gcanvas/GCanvasView;->setBackgroundColor(I)V

    .line 78
    return-void
.end method

.method public uninit()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 53
    invoke-super {p0}, Lcom/taobao/gcanvas/viewcontroller/ViewController;->uninit()V

    .line 55
    invoke-virtual {p0}, Lcom/taobao/gcanvas/viewcontroller/HybridViewController;->dettachViews()V

    .line 57
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/HybridViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 58
    sget v0, Lcom/taobao/gcanvas/GUtil;->hybridLayerType:I

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/HybridViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/taobao/gcanvas/viewcontroller/HybridViewController;->mSavedWebViewLayerType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/HybridViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/taobao/gcanvas/GCanvasView;->setVisibility(I)V

    .line 65
    return-void
.end method
