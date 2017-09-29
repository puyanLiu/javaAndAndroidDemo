.class public Lcom/taobao/gcanvas/GCanvasViewMgr;
.super Ljava/lang/Object;
.source "GCanvasViewMgr.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCanvas:Lcom/taobao/gcanvas/GCanvas;

.field private mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

.field private mViewController:Lcom/taobao/gcanvas/viewcontroller/ViewController;

.field private mViewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;

.field private mWebView:Lcom/taobao/gcanvas/GCanvasWebView;


# direct methods
.method public constructor <init>(Lcom/taobao/gcanvas/GCanvas;Landroid/app/Activity;Lcom/taobao/gcanvas/GCanvasWebView;Lcom/taobao/gcanvas/GCanvasView;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/taobao/gcanvas/GCanvasViewMgr;->mCanvas:Lcom/taobao/gcanvas/GCanvas;

    .line 24
    iput-object p2, p0, Lcom/taobao/gcanvas/GCanvasViewMgr;->mActivity:Landroid/app/Activity;

    .line 25
    iput-object p3, p0, Lcom/taobao/gcanvas/GCanvasViewMgr;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    .line 26
    iput-object p4, p0, Lcom/taobao/gcanvas/GCanvasViewMgr;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    .line 27
    sget-object v0, Lcom/taobao/gcanvas/GCanvas$ViewMode;->NONE_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasViewMgr;->mViewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/gcanvas/GCanvasViewMgr;)Lcom/taobao/gcanvas/viewcontroller/ViewController;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasViewMgr;->mViewController:Lcom/taobao/gcanvas/viewcontroller/ViewController;

    return-object v0
.end method


# virtual methods
.method public changeMode(Lcom/taobao/gcanvas/GCanvas$ViewMode;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasViewMgr;->mViewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    if-ne v0, p1, :cond_0

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/gcanvas/GCanvasViewMgr;->uninit()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/taobao/gcanvas/GCanvasViewMgr;->init(Lcom/taobao/gcanvas/GCanvas$ViewMode;)V

    goto :goto_0
.end method

.method public init(Lcom/taobao/gcanvas/GCanvas$ViewMode;)V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/taobao/gcanvas/GCanvasViewMgr$1;

    invoke-direct {v0, p0, p1}, Lcom/taobao/gcanvas/GCanvasViewMgr$1;-><init>(Lcom/taobao/gcanvas/GCanvasViewMgr;Lcom/taobao/gcanvas/GCanvas$ViewMode;)V

    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GCanvasViewMgr;->runOnUIThreadAndWait(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method public initViews(Lcom/taobao/gcanvas/GCanvas$ViewMode;)V
    .locals 5

    .prologue
    .line 31
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasViewMgr;->mViewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    if-ne v0, p1, :cond_0

    .line 44
    :goto_0
    return-void

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/taobao/gcanvas/GCanvasViewMgr;->mViewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    .line 36
    const-string/jumbo v0, "CANVAS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "init views,  mode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/gcanvas/GCanvasViewMgr;->mViewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasViewMgr;->mViewController:Lcom/taobao/gcanvas/viewcontroller/ViewController;

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasViewMgr;->mViewController:Lcom/taobao/gcanvas/viewcontroller/ViewController;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/viewcontroller/ViewController;->uninit()V

    .line 42
    :cond_1
    invoke-static {p1}, Lcom/taobao/gcanvas/viewcontroller/ViewController;->getController(Lcom/taobao/gcanvas/GCanvas$ViewMode;)Lcom/taobao/gcanvas/viewcontroller/ViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasViewMgr;->mViewController:Lcom/taobao/gcanvas/viewcontroller/ViewController;

    .line 43
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasViewMgr;->mViewController:Lcom/taobao/gcanvas/viewcontroller/ViewController;

    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvasViewMgr;->mCanvas:Lcom/taobao/gcanvas/GCanvas;

    iget-object v2, p0, Lcom/taobao/gcanvas/GCanvasViewMgr;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/taobao/gcanvas/GCanvasViewMgr;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    iget-object v4, p0, Lcom/taobao/gcanvas/GCanvasViewMgr;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/gcanvas/viewcontroller/ViewController;->init(Lcom/taobao/gcanvas/GCanvas;Landroid/app/Activity;Lcom/taobao/gcanvas/GCanvasWebView;Lcom/taobao/gcanvas/GCanvasView;)V

    goto :goto_0
.end method

.method public offsetPosition(II)V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/taobao/gcanvas/GCanvasViewMgr$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/gcanvas/GCanvasViewMgr$5;-><init>(Lcom/taobao/gcanvas/GCanvasViewMgr;II)V

    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GCanvasViewMgr;->runOnUIThreadAndWait(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public preUninit()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/taobao/gcanvas/GCanvasViewMgr$3;

    invoke-direct {v0, p0}, Lcom/taobao/gcanvas/GCanvasViewMgr$3;-><init>(Lcom/taobao/gcanvas/GCanvasViewMgr;)V

    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GCanvasViewMgr;->runOnUIThreadAndWait(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method runOnUIThreadAndWait(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 116
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 117
    new-instance v1, Lcom/taobao/gcanvas/GCanvasViewMgr$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/taobao/gcanvas/GCanvasViewMgr$6;-><init>(Lcom/taobao/gcanvas/GCanvasViewMgr;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    .line 126
    iget-object v2, p0, Lcom/taobao/gcanvas/GCanvasViewMgr;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 128
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPosition(IIII)V
    .locals 6

    .prologue
    .line 89
    new-instance v0, Lcom/taobao/gcanvas/GCanvasViewMgr$4;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/gcanvas/GCanvasViewMgr$4;-><init>(Lcom/taobao/gcanvas/GCanvasViewMgr;IIII)V

    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GCanvasViewMgr;->runOnUIThreadAndWait(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method public uninit()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/taobao/gcanvas/GCanvasViewMgr$2;

    invoke-direct {v0, p0}, Lcom/taobao/gcanvas/GCanvasViewMgr$2;-><init>(Lcom/taobao/gcanvas/GCanvasViewMgr;)V

    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GCanvasViewMgr;->runOnUIThreadAndWait(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method public uninitViews()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasViewMgr;->mViewController:Lcom/taobao/gcanvas/viewcontroller/ViewController;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasViewMgr;->mViewController:Lcom/taobao/gcanvas/viewcontroller/ViewController;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/viewcontroller/ViewController;->uninit()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasViewMgr;->mViewController:Lcom/taobao/gcanvas/viewcontroller/ViewController;

    .line 51
    :cond_0
    return-void
.end method
