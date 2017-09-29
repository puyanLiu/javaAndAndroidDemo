.class public Lcom/taobao/gcanvas/GCanvas;
.super Ljava/lang/Object;
.source "GCanvas.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DEFAULT_VIEW_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

.field private static final MAX_MESSAGE_QUEUE_SIZE:I = 0x200

.field protected static final URL_PARAMETER_VIEW_MODE:Ljava/lang/String; = "_gcanvas_view_mode_"

.field private static mDefaultViewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;

.field private static offsetHeight:I

.field private static offsetWidth:I

.field private static offsetX:I

.field private static offsetY:I

.field private static theCanvas:Lcom/taobao/gcanvas/GCanvas;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBaseUrl:Ljava/lang/String;

.field private mCanvasIsEnabled:Z

.field private mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

.field private mDropMessageCount:J

.field public mForceTransparentTime:I

.field private mMessageQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/taobao/gcanvas/GCanvasMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mViewMgr:Lcom/taobao/gcanvas/GCanvasViewMgr;

.field protected mViewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;

.field private mWebView:Lcom/taobao/gcanvas/GCanvasWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    const-class v0, Lcom/taobao/gcanvas/GCanvas;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/taobao/gcanvas/GCanvas;->$assertionsDisabled:Z

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/gcanvas/GCanvas;->theCanvas:Lcom/taobao/gcanvas/GCanvas;

    .line 73
    sput v1, Lcom/taobao/gcanvas/GCanvas;->offsetX:I

    sput v1, Lcom/taobao/gcanvas/GCanvas;->offsetY:I

    sput v1, Lcom/taobao/gcanvas/GCanvas;->offsetWidth:I

    .line 74
    sput v1, Lcom/taobao/gcanvas/GCanvas;->offsetHeight:I

    .line 82
    sget-object v0, Lcom/taobao/gcanvas/GCanvas$ViewMode;->HYBRID_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    .line 83
    sput-object v0, Lcom/taobao/gcanvas/GCanvas;->DEFAULT_VIEW_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    sput-object v0, Lcom/taobao/gcanvas/GCanvas;->mDefaultViewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    return-void

    :cond_0
    move v0, v1

    .line 58
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/gcanvas/GCanvas;->mDropMessageCount:J

    .line 68
    iput-boolean v2, p0, Lcom/taobao/gcanvas/GCanvas;->mCanvasIsEnabled:Z

    .line 75
    iput v2, p0, Lcom/taobao/gcanvas/GCanvas;->mForceTransparentTime:I

    .line 84
    sget-object v0, Lcom/taobao/gcanvas/GCanvas;->mDefaultViewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mViewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    .line 164
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "GCanvas constructor BEGIN"

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/taobao/gcanvas/GUtil;->printMemoryInfo(Landroid/content/Context;)V

    .line 168
    sget-boolean v0, Lcom/taobao/gcanvas/GCanvasJNI;->GCanvaslibEnable:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lcom/taobao/gcanvas/GCanvas;->setFontFamilies()V

    .line 172
    :cond_0
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "GCanvas constructor END"

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/taobao/gcanvas/GUtil;->printMemoryInfo(Landroid/content/Context;)V

    .line 174
    return-void
.end method

.method public static GetFullURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 762
    const-string/jumbo v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 766
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/taobao/gcanvas/GCanvas;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/taobao/gcanvas/GCanvas;)Lcom/taobao/gcanvas/GCanvasWebView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/gcanvas/GCanvas;)Lcom/taobao/gcanvas/GCanvasView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    return-object v0
.end method

.method public static copyMessageQueue(Ljava/util/LinkedList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/taobao/gcanvas/GCanvasMessage;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 771
    sget-object v0, Lcom/taobao/gcanvas/GCanvas;->theCanvas:Lcom/taobao/gcanvas/GCanvas;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/gcanvas/GCanvas;->theCanvas:Lcom/taobao/gcanvas/GCanvas;

    iget-object v0, v0, Lcom/taobao/gcanvas/GCanvas;->mMessageQueue:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_1

    .line 772
    :cond_0
    const/4 v0, 0x0

    .line 780
    :goto_0
    return v0

    .line 776
    :cond_1
    :goto_1
    sget-object v0, Lcom/taobao/gcanvas/GCanvas;->theCanvas:Lcom/taobao/gcanvas/GCanvas;

    iget-object v0, v0, Lcom/taobao/gcanvas/GCanvas;->mMessageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GCanvasMessage;

    if-eqz v0, :cond_2

    .line 777
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 780
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static dispatchKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 731
    sget-object v0, Lcom/taobao/gcanvas/GCanvas;->theCanvas:Lcom/taobao/gcanvas/GCanvas;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/gcanvas/GCanvas;->theCanvas:Lcom/taobao/gcanvas/GCanvas;

    iget-object v0, v0, Lcom/taobao/gcanvas/GCanvas;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    if-nez v0, :cond_1

    .line 732
    :cond_0
    const/4 v0, 0x0

    .line 734
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/taobao/gcanvas/GCanvas;->theCanvas:Lcom/taobao/gcanvas/GCanvas;

    iget-object v0, v0, Lcom/taobao/gcanvas/GCanvas;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public static dispatchKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 739
    sget-object v0, Lcom/taobao/gcanvas/GCanvas;->theCanvas:Lcom/taobao/gcanvas/GCanvas;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/gcanvas/GCanvas;->theCanvas:Lcom/taobao/gcanvas/GCanvas;

    iget-object v0, v0, Lcom/taobao/gcanvas/GCanvas;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    if-nez v0, :cond_1

    .line 740
    :cond_0
    const/4 v0, 0x0

    .line 742
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/taobao/gcanvas/GCanvas;->theCanvas:Lcom/taobao/gcanvas/GCanvas;

    iget-object v0, v0, Lcom/taobao/gcanvas/GCanvas;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public static dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 720
    sget-object v0, Lcom/taobao/gcanvas/GCanvas;->theCanvas:Lcom/taobao/gcanvas/GCanvas;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/gcanvas/GCanvas;->theCanvas:Lcom/taobao/gcanvas/GCanvas;

    iget-object v0, v0, Lcom/taobao/gcanvas/GCanvas;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    if-nez v0, :cond_1

    .line 721
    :cond_0
    const/4 v0, 0x0

    .line 727
    :goto_0
    return v0

    .line 723
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sget v2, Lcom/taobao/gcanvas/GCanvas;->offsetY:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 724
    sget-object v0, Lcom/taobao/gcanvas/GCanvas;->theCanvas:Lcom/taobao/gcanvas/GCanvas;

    iget-object v0, v0, Lcom/taobao/gcanvas/GCanvas;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 727
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 747
    const/4 v0, 0x0

    .line 748
    sget-object v1, Lcom/taobao/gcanvas/GCanvas;->theCanvas:Lcom/taobao/gcanvas/GCanvas;

    if-eqz v1, :cond_0

    .line 749
    sget-object v0, Lcom/taobao/gcanvas/GCanvas;->theCanvas:Lcom/taobao/gcanvas/GCanvas;

    iget-object v0, v0, Lcom/taobao/gcanvas/GCanvas;->mActivity:Landroid/app/Activity;

    .line 751
    :cond_0
    return-object v0
.end method

.method public static getBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 755
    sget-object v0, Lcom/taobao/gcanvas/GCanvas;->theCanvas:Lcom/taobao/gcanvas/GCanvas;

    if-eqz v0, :cond_0

    .line 756
    sget-object v0, Lcom/taobao/gcanvas/GCanvas;->theCanvas:Lcom/taobao/gcanvas/GCanvas;

    iget-object v0, v0, Lcom/taobao/gcanvas/GCanvas;->mBaseUrl:Ljava/lang/String;

    .line 758
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultViewMode()Lcom/taobao/gcanvas/GCanvas$ViewMode;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/taobao/gcanvas/GCanvas;->mDefaultViewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    return-object v0
.end method

.method private static getPicBASE64(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 814
    const-string/jumbo v0, ""

    .line 817
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 818
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    .line 819
    array-length v3, v2

    const v4, 0x19000

    if-ge v3, v4, :cond_0

    .line 820
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(I)V

    .line 822
    :cond_0
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 823
    const/16 v3, 0x8

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 824
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static initActivity(Landroid/app/Activity;Landroid/view/View;Lcom/taobao/gcanvas/GCanvasWebView;)V
    .locals 0

    .prologue
    .line 115
    invoke-static {p0, p2}, Lcom/taobao/gcanvas/GCanvas;->initGCanvasActivity(Landroid/app/Activity;Lcom/taobao/gcanvas/GCanvasWebView;)V

    .line 116
    return-void
.end method

.method public static initGCanvasActivity(Landroid/app/Activity;Lcom/taobao/gcanvas/GCanvasWebView;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "initGCanvasActivity start, activity:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;)V

    .line 124
    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/taobao/gcanvas/GCanvasWebView;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " GCanvas/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/taobao/gcanvas/GUtil;->getReleaseVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p1, v0}, Lcom/taobao/gcanvas/GCanvasWebView;->setUserAgentString(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 136
    const-string/jumbo v1, "initGCanvasActivity:Handle first black screen of SurfaceView"

    invoke-static {v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;)V

    .line 137
    check-cast v0, Landroid/view/ViewGroup;

    .line 138
    new-instance v1, Landroid/view/SurfaceView;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 139
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 140
    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 144
    :cond_0
    return-void
.end method

.method public static initResources(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 147
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "Come to setPreCompilePathForShader."

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "shader"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvasJNI;->setPreCompilePath(Ljava/lang/String;)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "shader"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvasJNI;->setPreCompilePath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static initUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    sput-object p0, Lcom/taobao/gcanvas/GUtil;->preUrl:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    move v0, v1

    .line 186
    :goto_0
    return v0

    .line 180
    :cond_0
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 182
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    .line 183
    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v2, 0x20000

    if-ge v0, v2, :cond_1

    move v0, v1

    .line 184
    goto :goto_0

    .line 186
    :cond_1
    invoke-static {}, Lcom/taobao/gcanvas/GCanvas;->getDefaultViewMode()Lcom/taobao/gcanvas/GCanvas$ViewMode;

    move-result-object v0

    sget-object v2, Lcom/taobao/gcanvas/GCanvas$ViewMode;->NONE_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    if-eq v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static sendPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "POST to server, url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " filePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " filename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " game="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    const-string/jumbo v1, ""

    .line 843
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 845
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 847
    const-string/jumbo v2, "accept"

    const-string/jumbo v4, "*/*"

    invoke-virtual {v0, v2, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string/jumbo v2, "connection"

    const-string/jumbo v4, "Keep-Alive"

    invoke-virtual {v0, v2, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const-string/jumbo v2, "user-agent"

    const-string/jumbo v4, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)"

    invoke-virtual {v0, v2, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string/jumbo v2, "Content-Type"

    const-string/jumbo v4, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v2, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 854
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 856
    new-instance v4, Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "name="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "utf-8"

    invoke-static {p2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "&game="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "utf-8"

    invoke-static {p3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "&data="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/taobao/gcanvas/GCanvas;->getPicBASE64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "utf-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 861
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 863
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 866
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 867
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "/n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    goto :goto_0

    .line 869
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 879
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 885
    :cond_1
    :goto_1
    return-object v0

    .line 870
    :catch_0
    move-exception v0

    move-object v2, v3

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 871
    :goto_2
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Exception when sending POST request:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 876
    if-eqz v3, :cond_2

    .line 877
    :try_start_5
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 879
    :cond_2
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 882
    :catch_1
    move-exception v1

    goto :goto_1

    .line 875
    :catchall_0
    move-exception v0

    move-object v4, v3

    .line 876
    :goto_3
    if-eqz v4, :cond_3

    .line 877
    :try_start_6
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 879
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 882
    :cond_4
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_4

    .line 875
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    goto :goto_3

    .line 870
    :catch_3
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v3, v4

    goto :goto_2

    .line 882
    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public static setDefaultViewMode(Lcom/taobao/gcanvas/GCanvas$ViewMode;)Z
    .locals 3

    .prologue
    .line 88
    sget-object v0, Lcom/taobao/gcanvas/GCanvas$ViewMode;->SWITCH_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    if-ne p0, v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 90
    sget-object v0, Lcom/taobao/gcanvas/GCanvas$ViewMode;->NONE_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    sput-object v0, Lcom/taobao/gcanvas/GCanvas;->mDefaultViewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    .line 91
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    .line 94
    :cond_0
    sput-object p0, Lcom/taobao/gcanvas/GCanvas;->mDefaultViewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    .line 95
    const-string/jumbo v0, "CANVAS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set default view mode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/taobao/gcanvas/GCanvas;->DEFAULT_VIEW_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static setFontFamilies()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 785
    new-instance v0, Lcom/taobao/gcanvas/GFontConfigParser;

    invoke-direct {v0}, Lcom/taobao/gcanvas/GFontConfigParser;-><init>()V

    .line 786
    invoke-virtual {v0}, Lcom/taobao/gcanvas/GFontConfigParser;->getFallbackFont()Ljava/lang/String;

    move-result-object v1

    .line 787
    invoke-virtual {v0}, Lcom/taobao/gcanvas/GFontConfigParser;->getSystemFontLocation()Ljava/lang/String;

    move-result-object v2

    .line 788
    invoke-static {v1, v2}, Lcom/taobao/gcanvas/GCanvasJNI;->setFallbackFont(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    invoke-virtual {v0}, Lcom/taobao/gcanvas/GFontConfigParser;->getFontFamilies()Ljava/util/HashMap;

    move-result-object v4

    .line 791
    if-eqz v4, :cond_2

    .line 792
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 793
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 794
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 795
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 796
    new-array v7, v6, [Ljava/lang/String;

    move v2, v3

    .line 797
    :goto_1
    if-ge v2, v6, :cond_0

    .line 798
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v7, v2

    .line 797
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 801
    :cond_0
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 802
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 803
    new-array v8, v6, [Ljava/lang/String;

    move v2, v3

    .line 804
    :goto_2
    if-ge v2, v6, :cond_1

    .line 805
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v8, v2

    .line 804
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 808
    :cond_1
    invoke-static {v7, v8}, Lcom/taobao/gcanvas/GCanvasJNI;->addFontFamily([Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 811
    :cond_2
    return-void
.end method

.method public static uninitActivity(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 161
    return-void
.end method


# virtual methods
.method public addMessage(Lcom/taobao/gcanvas/GCanvasMessage;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 248
    if-nez p1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p1, Lcom/taobao/gcanvas/GCanvasMessage;->type:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    sget-object v1, Lcom/taobao/gcanvas/GCanvasMessage$Type;->RENDER:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    if-ne v0, v1, :cond_4

    .line 252
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mMessageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    const/16 v1, 0x200

    if-le v0, v1, :cond_3

    .line 254
    iget-wide v0, p0, Lcom/taobao/gcanvas/GCanvas;->mDropMessageCount:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 255
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "drop render messages because the queue is full."

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_2
    iget-wide v0, p0, Lcom/taobao/gcanvas/GCanvas;->mDropMessageCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/taobao/gcanvas/GCanvas;->mDropMessageCount:J

    goto :goto_0

    .line 261
    :cond_3
    iget-wide v0, p0, Lcom/taobao/gcanvas/GCanvas;->mDropMessageCount:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    .line 262
    const-string/jumbo v0, "CANVAS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "the queue returns to normal, and the count of dropped messages is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/taobao/gcanvas/GCanvas;->mDropMessageCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iput-wide v4, p0, Lcom/taobao/gcanvas/GCanvas;->mDropMessageCount:J

    .line 268
    :cond_4
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mMessageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 269
    sget v0, Lcom/taobao/gcanvas/GUtil;->JS_RENDERMODE_WHEN_DIRTY:I

    sget v1, Lcom/taobao/gcanvas/GUtil;->preRenderMode:I

    if-ne v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasView;->requestRender()V

    goto :goto_0
.end method

.method disableCanvas()V
    .locals 2

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/taobao/gcanvas/GCanvas;->isEnabledCanvas()Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    :goto_0
    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mViewMgr:Lcom/taobao/gcanvas/GCanvasViewMgr;

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mViewMgr:Lcom/taobao/gcanvas/GCanvasViewMgr;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasViewMgr;->uninit()V

    .line 634
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mViewMgr:Lcom/taobao/gcanvas/GCanvasViewMgr;

    .line 637
    :cond_1
    invoke-static {}, Lcom/taobao/gcanvas/GCanvasJNI;->release()V

    .line 639
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mMessageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 641
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/gcanvas/GCanvas;->mCanvasIsEnabled:Z

    .line 642
    sget v0, Lcom/taobao/gcanvas/GUtil;->mEnableCanvasCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/taobao/gcanvas/GUtil;->mEnableCanvasCount:I

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[GCanvas::disableCanvas] GUtil.mEnableCanvasCount=>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/taobao/gcanvas/GUtil;->mEnableCanvasCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method enableCanvas()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 674
    invoke-virtual {p0}, Lcom/taobao/gcanvas/GCanvas;->isEnabledCanvas()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    :goto_0
    return v0

    .line 675
    :cond_0
    sget v1, Lcom/taobao/gcanvas/GUtil;->mEnableCanvasCount:I

    if-lez v1, :cond_1

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[GCanvas::enableCanvas] count enable multi canvas, current has "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/taobao/gcanvas/GUtil;->mEnableCanvasCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " canvas enabled."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/gcanvas/GLog;->w(Ljava/lang/String;)V

    .line 677
    const/4 v0, 0x0

    goto :goto_0

    .line 680
    :cond_1
    const-string/jumbo v1, "CANVAS"

    const-string/jumbo v2, "enableCanvas() BEGIN"

    invoke-static {v1, v2}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvas;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/taobao/gcanvas/GUtil;->printMemoryInfo(Landroid/content/Context;)V

    .line 683
    iput-boolean v0, p0, Lcom/taobao/gcanvas/GCanvas;->mCanvasIsEnabled:Z

    .line 684
    sget v1, Lcom/taobao/gcanvas/GUtil;->mEnableCanvasCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/taobao/gcanvas/GUtil;->mEnableCanvasCount:I

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[GCanvas::enableCanvas] GUtil.mEnableCanvasCount=>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/taobao/gcanvas/GUtil;->mEnableCanvasCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p0}, Lcom/taobao/gcanvas/GCanvas;->updateBaseUrl()V

    .line 689
    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvas;->mMessageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 690
    new-instance v1, Lcom/taobao/gcanvas/GCanvasView;

    iget-object v2, p0, Lcom/taobao/gcanvas/GCanvas;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/taobao/gcanvas/GCanvasView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taobao/gcanvas/GCanvas;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    .line 691
    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvas;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    const-string/jumbo v2, "gcanvas"

    invoke-virtual {v1, v2}, Lcom/taobao/gcanvas/GCanvasView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 693
    const-string/jumbo v1, "CANVAS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "view mode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/taobao/gcanvas/GCanvas;->mViewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    new-instance v1, Lcom/taobao/gcanvas/GCanvasViewMgr;

    iget-object v2, p0, Lcom/taobao/gcanvas/GCanvas;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/taobao/gcanvas/GCanvas;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    iget-object v4, p0, Lcom/taobao/gcanvas/GCanvas;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/taobao/gcanvas/GCanvasViewMgr;-><init>(Lcom/taobao/gcanvas/GCanvas;Landroid/app/Activity;Lcom/taobao/gcanvas/GCanvasWebView;Lcom/taobao/gcanvas/GCanvasView;)V

    iput-object v1, p0, Lcom/taobao/gcanvas/GCanvas;->mViewMgr:Lcom/taobao/gcanvas/GCanvasViewMgr;

    .line 695
    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvas;->mViewMgr:Lcom/taobao/gcanvas/GCanvasViewMgr;

    iget-object v2, p0, Lcom/taobao/gcanvas/GCanvas;->mViewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    invoke-virtual {v1, v2}, Lcom/taobao/gcanvas/GCanvasViewMgr;->init(Lcom/taobao/gcanvas/GCanvas$ViewMode;)V

    .line 697
    const-string/jumbo v1, "CANVAS"

    const-string/jumbo v2, "enableCanvas() END"

    invoke-static {v1, v2}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvas;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/taobao/gcanvas/GUtil;->printMemoryInfo(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lcom/taobao/gcanvas/GCanvasResult;)Z
    .locals 11

    .prologue
    .line 278
    const/4 v3, 0x1

    .line 280
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mMessageQueue:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_1

    .line 281
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "GCanvas messageQueue is NULL in execute."

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p3}, Lcom/taobao/gcanvas/GCanvasResult;->success()V

    .line 283
    const/4 v0, 0x1

    .line 626
    :cond_0
    :goto_0
    return v0

    .line 287
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/gcanvas/GCanvas;->isEnabledCanvas()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 288
    const-string/jumbo v0, "CANVAS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "gcanvas is not enabled, and ignore the action:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p3}, Lcom/taobao/gcanvas/GCanvasResult;->success()V

    .line 290
    const/4 v0, 0x1

    goto :goto_0

    .line 295
    :cond_2
    :try_start_0
    const-string/jumbo v0, "render"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 296
    new-instance v0, Lcom/taobao/gcanvas/GCanvasMessage;

    sget-object v1, Lcom/taobao/gcanvas/GCanvasMessage$Type;->RENDER:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    invoke-direct {v0, v1}, Lcom/taobao/gcanvas/GCanvasMessage;-><init>(Lcom/taobao/gcanvas/GCanvasMessage$Type;)V

    .line 298
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/gcanvas/GCanvasMessage;->drawCommands:Ljava/lang/String;

    .line 299
    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GCanvas;->addMessage(Lcom/taobao/gcanvas/GCanvasMessage;)V

    .line 301
    iget v0, p0, Lcom/taobao/gcanvas/GCanvas;->mForceTransparentTime:I

    if-lez v0, :cond_3

    .line 302
    iget v0, p0, Lcom/taobao/gcanvas/GCanvas;->mForceTransparentTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/taobao/gcanvas/GCanvas;->mForceTransparentTime:I

    .line 303
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v0, v3

    .line 617
    :goto_1
    if-eqz p3, :cond_0

    .line 618
    if-eqz v0, :cond_2c

    .line 619
    invoke-virtual {p3}, Lcom/taobao/gcanvas/GCanvasResult;->success()V

    goto :goto_0

    .line 306
    :cond_4
    :try_start_1
    const-string/jumbo v0, "setBackgroundColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 307
    new-instance v0, Lcom/taobao/gcanvas/GCanvasMessage;

    sget-object v1, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_BACKGROUND:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    invoke-direct {v0, v1}, Lcom/taobao/gcanvas/GCanvasMessage;-><init>(Lcom/taobao/gcanvas/GCanvasMessage$Type;)V

    .line 309
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/gcanvas/GCanvasMessage;->drawCommands:Ljava/lang/String;

    .line 310
    const-string/jumbo v1, "CANVAS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "GCanvas queueing set background color "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/taobao/gcanvas/GCanvasMessage;->drawCommands:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GCanvas;->addMessage(Lcom/taobao/gcanvas/GCanvasMessage;)V

    move v0, v3

    .line 314
    goto :goto_1

    :cond_5
    const-string/jumbo v0, "setPosition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 315
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    sput v0, Lcom/taobao/gcanvas/GCanvas;->offsetX:I

    .line 316
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    sput v0, Lcom/taobao/gcanvas/GCanvas;->offsetY:I

    .line 317
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    sput v0, Lcom/taobao/gcanvas/GCanvas;->offsetWidth:I

    .line 318
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    sput v0, Lcom/taobao/gcanvas/GCanvas;->offsetHeight:I

    .line 319
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    sget v1, Lcom/taobao/gcanvas/GCanvas;->offsetX:I

    sget v2, Lcom/taobao/gcanvas/GCanvas;->offsetY:I

    sget v4, Lcom/taobao/gcanvas/GCanvas;->offsetWidth:I

    sget v5, Lcom/taobao/gcanvas/GCanvas;->offsetHeight:I

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/taobao/gcanvas/GCanvasView;->savePosition(IIII)V

    .line 320
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mViewMgr:Lcom/taobao/gcanvas/GCanvasViewMgr;

    sget v1, Lcom/taobao/gcanvas/GCanvas;->offsetX:I

    sget v2, Lcom/taobao/gcanvas/GCanvas;->offsetY:I

    sget v4, Lcom/taobao/gcanvas/GCanvas;->offsetWidth:I

    sget v5, Lcom/taobao/gcanvas/GCanvas;->offsetHeight:I

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/taobao/gcanvas/GCanvasViewMgr;->setPosition(IIII)V

    move v0, v3

    goto :goto_1

    .line 322
    :cond_6
    const-string/jumbo v0, "offsetPosition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 323
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    sput v0, Lcom/taobao/gcanvas/GCanvas;->offsetX:I

    .line 324
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    sput v0, Lcom/taobao/gcanvas/GCanvas;->offsetY:I

    .line 325
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mViewMgr:Lcom/taobao/gcanvas/GCanvasViewMgr;

    sget v1, Lcom/taobao/gcanvas/GCanvas;->offsetX:I

    sget v2, Lcom/taobao/gcanvas/GCanvas;->offsetY:I

    invoke-virtual {v0, v1, v2}, Lcom/taobao/gcanvas/GCanvasViewMgr;->offsetPosition(II)V

    move v0, v3

    goto/16 :goto_1

    .line 326
    :cond_7
    const-string/jumbo v0, "loadTexture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 327
    new-instance v0, Lcom/taobao/gcanvas/GCanvasMessage;

    sget-object v1, Lcom/taobao/gcanvas/GCanvasMessage$Type;->LOAD:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    invoke-direct {v0, v1}, Lcom/taobao/gcanvas/GCanvasMessage;-><init>(Lcom/taobao/gcanvas/GCanvasMessage$Type;)V

    .line 328
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/gcanvas/GCanvasMessage;->url:Ljava/lang/String;

    .line 329
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/taobao/gcanvas/GCanvasMessage;->textureID:I

    .line 330
    sget-boolean v1, Lcom/taobao/gcanvas/GCanvas;->$assertionsDisabled:Z

    if-nez v1, :cond_8

    if-nez p3, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 604
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 605
    const-string/jumbo v0, ""

    .line 607
    :try_start_2
    const-string/jumbo v2, ","

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 611
    :goto_2
    const-string/jumbo v2, "CANVAS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unexpected error parsing execute parameters for action "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/taobao/gcanvas/GLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 614
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 331
    :cond_8
    :try_start_3
    iput-object p3, v0, Lcom/taobao/gcanvas/GCanvasMessage;->resultContext:Lcom/taobao/gcanvas/GCanvasResult;

    .line 332
    const/4 p3, 0x0

    .line 333
    const-string/jumbo v1, "CANVAS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "GCanvas queueing load texture "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/taobao/gcanvas/GCanvasMessage;->textureID:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/taobao/gcanvas/GCanvasMessage;->url:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GCanvas;->addMessage(Lcom/taobao/gcanvas/GCanvasMessage;)V

    move v0, v3

    .line 337
    goto/16 :goto_1

    :cond_9
    const-string/jumbo v0, "unloadTexture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 338
    new-instance v0, Lcom/taobao/gcanvas/GCanvasMessage;

    sget-object v1, Lcom/taobao/gcanvas/GCanvasMessage$Type;->UNLOAD:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    invoke-direct {v0, v1}, Lcom/taobao/gcanvas/GCanvasMessage;-><init>(Lcom/taobao/gcanvas/GCanvasMessage$Type;)V

    .line 340
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/taobao/gcanvas/GCanvasMessage;->textureID:I

    .line 341
    const-string/jumbo v1, "CANVAS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "GCanvas queueing unload texture "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/taobao/gcanvas/GCanvasMessage;->textureID:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GCanvas;->addMessage(Lcom/taobao/gcanvas/GCanvasMessage;)V

    move v0, v3

    .line 345
    goto/16 :goto_1

    :cond_a
    const-string/jumbo v0, "getImageData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 346
    new-instance v0, Lcom/taobao/gcanvas/GCanvasMessage;

    sget-object v1, Lcom/taobao/gcanvas/GCanvasMessage$Type;->GET_IMAGEDATA:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    invoke-direct {v0, v1}, Lcom/taobao/gcanvas/GCanvasMessage;-><init>(Lcom/taobao/gcanvas/GCanvasMessage$Type;)V

    .line 348
    sget-boolean v1, Lcom/taobao/gcanvas/GCanvas;->$assertionsDisabled:Z

    if-nez v1, :cond_b

    if-nez p3, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 349
    :cond_b
    iput-object p3, v0, Lcom/taobao/gcanvas/GCanvasMessage;->resultContext:Lcom/taobao/gcanvas/GCanvasResult;

    .line 350
    const/4 p3, 0x0

    .line 351
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/taobao/gcanvas/GCanvasMessage;->x:I

    .line 352
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/taobao/gcanvas/GCanvasMessage;->y:I

    .line 353
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/taobao/gcanvas/GCanvasMessage;->width:I

    .line 354
    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/taobao/gcanvas/GCanvasMessage;->height:I

    .line 355
    const-string/jumbo v1, "CANVAS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "GCanvas.java::exectue getImageData xy="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/taobao/gcanvas/GCanvasMessage;->x:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/taobao/gcanvas/GCanvasMessage;->y:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "; wh="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/taobao/gcanvas/GCanvasMessage;->width:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/taobao/gcanvas/GCanvasMessage;->height:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GCanvas;->addMessage(Lcom/taobao/gcanvas/GCanvasMessage;)V

    move v0, v3

    .line 358
    goto/16 :goto_1

    :cond_c
    const-string/jumbo v0, "setOrtho"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 359
    new-instance v0, Lcom/taobao/gcanvas/GCanvasMessage;

    sget-object v1, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_ORTHO:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    invoke-direct {v0, v1}, Lcom/taobao/gcanvas/GCanvasMessage;-><init>(Lcom/taobao/gcanvas/GCanvasMessage$Type;)V

    .line 361
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    .line 362
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 363
    iput v1, v0, Lcom/taobao/gcanvas/GCanvasMessage;->width:I

    .line 364
    iput v2, v0, Lcom/taobao/gcanvas/GCanvasMessage;->height:I

    .line 365
    const-string/jumbo v1, "CANVAS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "GCanvas queueing setOrtho, width="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/taobao/gcanvas/GCanvasMessage;->width:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", height="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/taobao/gcanvas/GCanvasMessage;->height:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GCanvas;->addMessage(Lcom/taobao/gcanvas/GCanvasMessage;)V

    move v0, v3

    .line 368
    goto/16 :goto_1

    :cond_d
    const-string/jumbo v0, "setDevicePixelRatio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 369
    new-instance v0, Lcom/taobao/gcanvas/GCanvasMessage;

    sget-object v1, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_DEVICE_PIXEL_RATIO:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    invoke-direct {v0, v1}, Lcom/taobao/gcanvas/GCanvasMessage;-><init>(Lcom/taobao/gcanvas/GCanvasMessage$Type;)V

    .line 371
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    .line 372
    iput-wide v1, v0, Lcom/taobao/gcanvas/GCanvasMessage;->devicePixelRatio:D

    .line 373
    const-string/jumbo v4, "CANVAS"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "device_pixel_ratio = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GCanvas;->addMessage(Lcom/taobao/gcanvas/GCanvasMessage;)V

    move v0, v3

    .line 375
    goto/16 :goto_1

    :cond_e
    const-string/jumbo v0, "setTyOffsetFlag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 376
    new-instance v0, Lcom/taobao/gcanvas/GCanvasMessage;

    sget-object v1, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_TYOFFSETFLAG:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    invoke-direct {v0, v1}, Lcom/taobao/gcanvas/GCanvasMessage;-><init>(Lcom/taobao/gcanvas/GCanvasMessage$Type;)V

    .line 378
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/taobao/gcanvas/GCanvasMessage;->boolFlag:Z

    .line 379
    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GCanvas;->addMessage(Lcom/taobao/gcanvas/GCanvasMessage;)V

    move v0, v3

    .line 380
    goto/16 :goto_1

    :cond_f
    const-string/jumbo v0, "setHiQuality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 381
    new-instance v0, Lcom/taobao/gcanvas/GCanvasMessage;

    sget-object v1, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_HI_QUALITY:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    invoke-direct {v0, v1}, Lcom/taobao/gcanvas/GCanvasMessage;-><init>(Lcom/taobao/gcanvas/GCanvasMessage$Type;)V

    .line 383
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/taobao/gcanvas/GCanvasMessage;->hiQualityFlag:Z

    .line 384
    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GCanvas;->addMessage(Lcom/taobao/gcanvas/GCanvasMessage;)V

    move v0, v3

    .line 386
    goto/16 :goto_1

    :cond_10
    const-string/jumbo v0, "capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    const/4 v1, 0x0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 393
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_11

    .line 396
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_11

    .line 398
    const-string/jumbo v0, "Could not create directory"

    invoke-virtual {p3, v0}, Lcom/taobao/gcanvas/GCanvasResult;->error(Ljava/lang/String;)V

    .line 399
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 403
    :cond_11
    new-instance v1, Lcom/taobao/gcanvas/GCanvasMessage;

    sget-object v2, Lcom/taobao/gcanvas/GCanvasMessage$Type;->CAPTURE:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    invoke-direct {v1, v2}, Lcom/taobao/gcanvas/GCanvasMessage;-><init>(Lcom/taobao/gcanvas/GCanvasMessage$Type;)V

    .line 405
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Lorg/json/JSONArray;->optInt(II)I

    move-result v2

    iput v2, v1, Lcom/taobao/gcanvas/GCanvasMessage;->x:I

    .line 406
    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Lorg/json/JSONArray;->optInt(II)I

    move-result v2

    iput v2, v1, Lcom/taobao/gcanvas/GCanvasMessage;->y:I

    .line 407
    const/4 v2, 0x2

    const/4 v4, -0x1

    invoke-virtual {p2, v2, v4}, Lorg/json/JSONArray;->optInt(II)I

    move-result v2

    iput v2, v1, Lcom/taobao/gcanvas/GCanvasMessage;->width:I

    .line 408
    const/4 v2, 0x3

    const/4 v4, -0x1

    invoke-virtual {p2, v2, v4}, Lorg/json/JSONArray;->optInt(II)I

    move-result v2

    iput v2, v1, Lcom/taobao/gcanvas/GCanvasMessage;->height:I

    .line 409
    iput-object v0, v1, Lcom/taobao/gcanvas/GCanvasMessage;->url:Ljava/lang/String;

    .line 411
    if-eqz p3, :cond_12

    .line 413
    iput-object p3, v1, Lcom/taobao/gcanvas/GCanvasMessage;->resultContext:Lcom/taobao/gcanvas/GCanvasResult;

    .line 414
    :cond_12
    invoke-virtual {p0, v1}, Lcom/taobao/gcanvas/GCanvas;->addMessage(Lcom/taobao/gcanvas/GCanvasMessage;)V

    move v0, v3

    .line 415
    goto/16 :goto_1

    :cond_13
    const-string/jumbo v0, "testCheck"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 416
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONArray;->optInt(II)I

    move-result v0

    .line 417
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONArray;->optInt(II)I

    move-result v1

    .line 418
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 419
    const/4 v4, 0x3

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONArray;->optInt(II)I

    move-result v6

    .line 420
    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v4

    .line 421
    const/4 v5, 0x5

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 422
    const/4 v7, 0x6

    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 423
    const/4 v8, 0x7

    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 424
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "GCanvas testCheck: width="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", height="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", fileName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", tc_index="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", upload="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", game="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v9, "_"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "/autotest/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 434
    if-eqz v4, :cond_14

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v7, v0, v5}, Lcom/taobao/gcanvas/GCanvas;->sendPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 440
    :cond_14
    const-string/jumbo v4, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 444
    const/4 v2, 0x0

    .line 446
    :try_start_4
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 447
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    .line 450
    const/4 v1, 0x0

    .line 451
    const/4 v0, 0x0

    move v5, v1

    move-object v1, v4

    .line 454
    :goto_3
    const/4 v4, -0x1

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v9

    if-eq v4, v9, :cond_2d

    .line 455
    const/4 v4, -0x1

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v10

    if-ne v4, v10, :cond_15

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "diff size:localFile["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "] is small then expect!!!"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 471
    :goto_4
    sub-int v0, v5, v0

    div-int v1, v0, v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 472
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 473
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v0, v4

    .line 477
    :goto_5
    :try_start_6
    const-string/jumbo v2, ""

    if-ne v2, v0, :cond_17

    .line 482
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/taobao/gcanvas/GCanvasResult;->success(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 487
    :goto_6
    const/4 p3, 0x0

    move v0, v3

    .line 490
    goto/16 :goto_1

    .line 463
    :cond_15
    if-eq v9, v10, :cond_16

    .line 464
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "diff data:byte["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "] expect \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\', but is \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v1

    .line 466
    add-int/lit8 v0, v0, 0x1

    .line 469
    :cond_16
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_3

    .line 475
    :catch_1
    move-exception v0

    move v1, v2

    :goto_7
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 484
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    invoke-virtual {p3, v0}, Lcom/taobao/gcanvas/GCanvasResult;->error(Ljava/lang/String;)V

    goto :goto_6

    .line 490
    :cond_18
    const-string/jumbo v0, "showGCanvas"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 492
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    .line 493
    if-eqz v0, :cond_19

    .line 494
    const-string/jumbo v0, "showshow"

    const-string/jumbo v1, "showGCanvas true"

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/taobao/gcanvas/GCanvas$1;

    invoke-direct {v1, p0}, Lcom/taobao/gcanvas/GCanvas$1;-><init>(Lcom/taobao/gcanvas/GCanvas;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    move v0, v3

    goto/16 :goto_1

    .line 508
    :cond_19
    const-string/jumbo v0, "showshow"

    const-string/jumbo v1, "showGCanvas false"

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/taobao/gcanvas/GCanvas$2;

    invoke-direct {v1, p0}, Lcom/taobao/gcanvas/GCanvas$2;-><init>(Lcom/taobao/gcanvas/GCanvas;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    move v0, v3

    .line 524
    goto/16 :goto_1

    :cond_1a
    const-string/jumbo v0, "setViewMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 525
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvasHelper;->parseViewModeString(Ljava/lang/String;)Lcom/taobao/gcanvas/GCanvas$ViewMode;

    move-result-object v0

    .line 528
    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvas;->mViewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    if-eq v1, v0, :cond_1b

    .line 529
    const-string/jumbo v1, "CANVAS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "change the view mode from "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/taobao/gcanvas/GCanvas;->mViewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 532
    :try_start_9
    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mViewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    .line 533
    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvas;->mViewMgr:Lcom/taobao/gcanvas/GCanvasViewMgr;

    invoke-virtual {v1, v0}, Lcom/taobao/gcanvas/GCanvasViewMgr;->changeMode(Lcom/taobao/gcanvas/GCanvas$ViewMode;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    move v0, v3

    .line 536
    goto/16 :goto_1

    .line 534
    :catch_2
    move-exception v0

    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1b
    move v0, v3

    .line 539
    goto/16 :goto_1

    :cond_1c
    const-string/jumbo v0, "canvasWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 540
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 541
    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvas;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 543
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p3, v0}, Lcom/taobao/gcanvas/GCanvasResult;->success(I)V

    .line 544
    const/4 p3, 0x0

    move v0, v3

    .line 545
    goto/16 :goto_1

    :cond_1d
    const-string/jumbo v0, "canvasHeight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 546
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 547
    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvas;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 549
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 550
    iget-object v2, p0, Lcom/taobao/gcanvas/GCanvas;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 552
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    invoke-virtual {p3, v0}, Lcom/taobao/gcanvas/GCanvasResult;->success(I)V

    .line 553
    const/4 p3, 0x0

    move v0, v3

    .line 554
    goto/16 :goto_1

    .line 555
    :cond_1e
    const-string/jumbo v0, "beforeDisable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 556
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mViewMgr:Lcom/taobao/gcanvas/GCanvasViewMgr;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasViewMgr;->preUninit()V

    move v0, v3

    goto/16 :goto_1

    .line 558
    :cond_1f
    const-string/jumbo v0, "enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 559
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_20

    .line 560
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    sput v0, Lcom/taobao/gcanvas/GUtil;->preRenderMode:I

    .line 562
    :cond_20
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_21

    .line 563
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    sput v0, Lcom/taobao/gcanvas/GUtil;->hybridLayerType:I

    .line 565
    :cond_21
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_22

    .line 566
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/taobao/gcanvas/GUtil;->supportScroll:Z

    .line 568
    :cond_22
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_23

    .line 569
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/taobao/gcanvas/GUtil;->newCanvasMode:Z

    .line 571
    :cond_23
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_24

    .line 572
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/gcanvas/GUtil;->clearColor:Ljava/lang/String;

    .line 575
    :cond_24
    invoke-virtual {p0}, Lcom/taobao/gcanvas/GCanvas;->enableCanvas()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 576
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_25

    .line 577
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasView;->getRenderer()Lcom/taobao/gcanvas/GCanvasRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasRenderer;->getContextId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/taobao/gcanvas/GUtil;->clearColor:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GCanvasJNI;->setClearColor(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_25
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_2b

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    if-ne v0, v1, :cond_2b

    .line 580
    const-string/jumbo v0, "gcanvas"

    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvasJNI;->getAllParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-virtual {p3, v0}, Lcom/taobao/gcanvas/GCanvasResult;->success(Ljava/lang/String;)V

    .line 582
    const/4 p3, 0x0

    move v0, v3

    .line 583
    goto/16 :goto_1

    .line 585
    :cond_26
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 588
    :cond_27
    const-string/jumbo v0, "disable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 589
    invoke-virtual {p0}, Lcom/taobao/gcanvas/GCanvas;->disableCanvas()V

    move v0, v3

    goto/16 :goto_1

    .line 590
    :cond_28
    const-string/jumbo v0, "setLogLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 591
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-static {v0}, Lcom/taobao/gcanvas/GLog;->setLevel(Ljava/lang/String;)V

    move v0, v3

    .line 593
    goto/16 :goto_1

    :cond_29
    const-string/jumbo v0, "setContextType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 595
    new-instance v0, Lcom/taobao/gcanvas/GCanvasMessage;

    sget-object v1, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_CONTEXT_TYPE:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    invoke-direct {v0, v1}, Lcom/taobao/gcanvas/GCanvasMessage;-><init>(Lcom/taobao/gcanvas/GCanvasMessage$Type;)V

    .line 597
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/taobao/gcanvas/GCanvasMessage;->x:I

    .line 598
    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GCanvas;->addMessage(Lcom/taobao/gcanvas/GCanvasMessage;)V

    move v0, v3

    .line 600
    goto/16 :goto_1

    .line 601
    :cond_2a
    const-string/jumbo v0, "CANVAS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "GCanvas unknown execute action "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :cond_2b
    move v0, v3

    .line 615
    goto/16 :goto_1

    .line 622
    :cond_2c
    invoke-virtual {p3}, Lcom/taobao/gcanvas/GCanvasResult;->error()V

    goto/16 :goto_0

    :catch_3
    move-exception v2

    goto/16 :goto_2

    .line 475
    :catch_4
    move-exception v0

    goto/16 :goto_7

    :cond_2d
    move-object v4, v1

    goto/16 :goto_4
.end method

.method public getWebView()Lcom/taobao/gcanvas/GCanvasWebView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/taobao/gcanvas/GCanvasWebView;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 192
    const-string/jumbo v0, "CANVAS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[GCanvas::initialize] initialize... activity_context:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    instance-of v2, p1, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string/jumbo v0, "CANVAS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[GCanvas::initialize] initialize... GUtil.preInitActivity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/taobao/gcanvas/GUtil;->preInitActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mMessageQueue:Ljava/util/concurrent/BlockingQueue;

    .line 196
    sput-object p0, Lcom/taobao/gcanvas/GCanvas;->theCanvas:Lcom/taobao/gcanvas/GCanvas;

    .line 198
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 199
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/taobao/gcanvas/GCanvas;->mActivity:Landroid/app/Activity;

    .line 203
    :goto_0
    iput-object p2, p0, Lcom/taobao/gcanvas/GCanvas;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    .line 206
    return-void

    .line 201
    :cond_0
    sget-object v0, Lcom/taobao/gcanvas/GUtil;->preInitActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mActivity:Landroid/app/Activity;

    goto :goto_0
.end method

.method isEnabledCanvas()Z
    .locals 1

    .prologue
    .line 704
    iget-boolean v0, p0, Lcom/taobao/gcanvas/GCanvas;->mCanvasIsEnabled:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    if-nez v0, :cond_0

    .line 891
    const/4 v0, 0x1

    .line 894
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasView;->isPaused()Z

    move-result v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "GCanvas onDestroy"

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/taobao/gcanvas/GCanvas;->disableCanvas()V

    .line 213
    iput-object v2, p0, Lcom/taobao/gcanvas/GCanvas;->mMessageQueue:Ljava/util/concurrent/BlockingQueue;

    .line 214
    iput-object v2, p0, Lcom/taobao/gcanvas/GCanvas;->mActivity:Landroid/app/Activity;

    .line 215
    iput-object v2, p0, Lcom/taobao/gcanvas/GCanvas;->mWebView:Lcom/taobao/gcanvas/GCanvasWebView;

    .line 216
    iput-object v2, p0, Lcom/taobao/gcanvas/GCanvas;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    .line 217
    sput-object v2, Lcom/taobao/gcanvas/GCanvas;->theCanvas:Lcom/taobao/gcanvas/GCanvas;

    .line 218
    sput-object v2, Lcom/taobao/gcanvas/GUtil;->preInitActivity:Landroid/app/Activity;

    .line 219
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 3

    .prologue
    .line 708
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mViewMgr:Lcom/taobao/gcanvas/GCanvasViewMgr;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/taobao/gcanvas/GUtil;->supportScroll:Z

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mViewMgr:Lcom/taobao/gcanvas/GCanvasViewMgr;

    sub-int v1, p3, p1

    sub-int v2, p4, p2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/gcanvas/GCanvasViewMgr;->offsetPosition(II)V

    .line 711
    :cond_0
    return-void
.end method

.method parseURL(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[parseURL] url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;)V

    .line 223
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 224
    if-lez v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mBaseUrl:Ljava/lang/String;

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Base URL is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvas;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;)V

    .line 229
    const-string/jumbo v0, "_gcanvas_view_mode_="

    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[parseURL] indexStart:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;)V

    .line 232
    if-lez v1, :cond_0

    .line 233
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v2, v1, v0

    .line 234
    const-string/jumbo v0, "&"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 235
    const-string/jumbo v0, "#"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 236
    if-lez v0, :cond_3

    if-ge v0, v1, :cond_3

    .line 239
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[parseURL] indexStop:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;)V

    .line 240
    if-lez v0, :cond_2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 241
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[parseURL] mode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;)V

    .line 242
    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvasHelper;->parseViewModeString(Ljava/lang/String;)Lcom/taobao/gcanvas/GCanvas$ViewMode;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mViewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[parseURL] read view mode from url, mode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvas;->mViewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;)V

    .line 245
    :cond_0
    return-void

    .line 224
    :cond_1
    const-string/jumbo v0, ""

    goto/16 :goto_0

    .line 240
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public postSetClearColorMessage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 714
    new-instance v0, Lcom/taobao/gcanvas/GCanvasMessage;

    sget-object v1, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_CLEAR_COLOR:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    invoke-direct {v0, v1}, Lcom/taobao/gcanvas/GCanvasMessage;-><init>(Lcom/taobao/gcanvas/GCanvasMessage$Type;)V

    .line 715
    iput-object p1, v0, Lcom/taobao/gcanvas/GCanvasMessage;->drawCommands:Ljava/lang/String;

    .line 716
    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GCanvas;->addMessage(Lcom/taobao/gcanvas/GCanvasMessage;)V

    .line 717
    return-void
.end method

.method public setGCanvasView(I)V
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas;->mCanvasView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v0, p1}, Lcom/taobao/gcanvas/GCanvasView;->setVisibility(I)V

    .line 901
    return-void
.end method

.method updateBaseUrl()V
    .locals 3

    .prologue
    .line 651
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 652
    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvas;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/taobao/gcanvas/GCanvas$3;

    invoke-direct {v2, p0, v0}, Lcom/taobao/gcanvas/GCanvas$3;-><init>(Lcom/taobao/gcanvas/GCanvas;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 665
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :goto_0
    return-void

    .line 666
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
