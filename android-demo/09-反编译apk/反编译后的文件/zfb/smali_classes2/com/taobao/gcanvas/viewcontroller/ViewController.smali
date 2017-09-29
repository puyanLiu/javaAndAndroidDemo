.class public abstract Lcom/taobao/gcanvas/viewcontroller/ViewController;
.super Ljava/lang/Object;
.source "ViewController.java"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mCanvasRootViewGroup:Landroid/view/ViewGroup;

.field protected mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

.field protected mGCanvas:Lcom/taobao/gcanvas/GCanvas;

.field private mSavedWebViewVisibility:I

.field protected mWebView:Lcom/taobao/gcanvas/GCanvasWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getController(Lcom/taobao/gcanvas/GCanvas$ViewMode;)Lcom/taobao/gcanvas/viewcontroller/ViewController;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/taobao/gcanvas/viewcontroller/ViewController$1;->$SwitchMap$com$taobao$gcanvas$GCanvas$ViewMode:[I

    invoke-virtual {p0}, Lcom/taobao/gcanvas/GCanvas$ViewMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 37
    new-instance v0, Lcom/taobao/gcanvas/viewcontroller/CanvasViewController;

    invoke-direct {v0}, Lcom/taobao/gcanvas/viewcontroller/CanvasViewController;-><init>()V

    :goto_0
    return-object v0

    .line 27
    :pswitch_0
    new-instance v0, Lcom/taobao/gcanvas/viewcontroller/HybridViewController;

    invoke-direct {v0}, Lcom/taobao/gcanvas/viewcontroller/HybridViewController;-><init>()V

    goto :goto_0

    .line 30
    :pswitch_1
    new-instance v0, Lcom/taobao/gcanvas/viewcontroller/SwitchViewController;

    invoke-direct {v0}, Lcom/taobao/gcanvas/viewcontroller/SwitchViewController;-><init>()V

    goto :goto_0

    .line 33
    :pswitch_2
    new-instance v0, Lcom/taobao/gcanvas/viewcontroller/FloatViewController;

    invoke-direct {v0}, Lcom/taobao/gcanvas/viewcontroller/FloatViewController;-><init>()V

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method attachViews()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 59
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mCanvasRootViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mCanvasRootViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/viewcontroller/ViewController;->dettachView(Landroid/view/View;)V

    .line 61
    iput-object v1, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mCanvasRootViewGroup:Landroid/view/ViewGroup;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mSavedWebViewVisibility:I

    .line 65
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 72
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 74
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mCanvasRootViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mCanvasRootViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 76
    :goto_0
    if-eqz v0, :cond_2

    instance-of v6, v0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    check-cast v0, Landroid/view/ViewGroup;

    .line 80
    :goto_1
    iget-object v1, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v1}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/gcanvas/viewcontroller/ViewController;->dettachView(Landroid/view/View;)V

    .line 81
    iget-object v1, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {p0, v1}, Lcom/taobao/gcanvas/viewcontroller/ViewController;->dettachView(Landroid/view/View;)V

    .line 83
    iget-object v1, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v1}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v1, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v2, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 89
    if-eqz v0, :cond_3

    .line 90
    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    :goto_2
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "CanvasView add View."

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iput-object v2, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mCanvasRootViewGroup:Landroid/view/ViewGroup;

    .line 101
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 76
    goto :goto_1

    .line 92
    :cond_3
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "webview has no parent which type is ViewGroup. Attach to the actitity."

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_2
.end method

.method dettachView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 56
    :cond_0
    return-void
.end method

.method dettachViews()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mCanvasRootViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mCanvasRootViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 109
    iget-object v1, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v1}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/gcanvas/viewcontroller/ViewController;->dettachView(Landroid/view/View;)V

    .line 110
    iget-object v1, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {p0, v1}, Lcom/taobao/gcanvas/viewcontroller/ViewController;->dettachView(Landroid/view/View;)V

    .line 111
    iget-object v1, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mCanvasRootViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/taobao/gcanvas/viewcontroller/ViewController;->dettachView(Landroid/view/View;)V

    .line 113
    iget-object v1, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mCanvasRootViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 115
    if-eqz v0, :cond_1

    .line 116
    iget-object v2, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v2}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    :goto_1
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mSavedWebViewVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mCanvasRootViewGroup:Landroid/view/ViewGroup;

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v1}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public init(Lcom/taobao/gcanvas/GCanvas;Landroid/app/Activity;Lcom/taobao/gcanvas/GCanvasWebView;Lcom/taobao/gcanvas/GCanvasView;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mGCanvas:Lcom/taobao/gcanvas/GCanvas;

    .line 43
    iput-object p2, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mActivity:Landroid/app/Activity;

    .line 44
    iput-object p3, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    .line 45
    iput-object p4, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    .line 46
    return-void
.end method

.method public offsetPosition(II)V
    .locals 5

    .prologue
    .line 135
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 137
    if-eqz v0, :cond_0

    .line 138
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, p1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, p2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, p1

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 140
    iget-object v1, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v1, v0}, Lcom/taobao/gcanvas/GCanvasView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    :cond_0
    return-void
.end method

.method public preUninit()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public setPosition(IIII)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasView;->canSetParas()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/taobao/gcanvas/viewcontroller/ViewController;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/gcanvas/GCanvasView;->setPosition(IIII)V

    .line 131
    :cond_0
    return-void
.end method

.method public uninit()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
