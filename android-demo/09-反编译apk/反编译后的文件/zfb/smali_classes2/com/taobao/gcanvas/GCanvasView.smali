.class public Lcom/taobao/gcanvas/GCanvasView;
.super Landroid/opengl/GLSurfaceView;
.source "GCanvasView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static CHANGING_TIMEOUT:J


# instance fields
.field public mHeight:I

.field private mIsPaused:Z

.field private mIsSurfaceChanging:Z

.field private mIsSurfaceViewReady:Z

.field private mLastChangingTime:J

.field public mOffsetX:I

.field public mOffsetY:I

.field private mParentHeight:I

.field private mParentWidth:I

.field private mRenderer:Lcom/taobao/gcanvas/GCanvasRenderer;

.field public mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-wide/16 v0, 0x1f4

    sput-wide v0, Lcom/taobao/gcanvas/GCanvasView;->CHANGING_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/16 v1, 0x8

    const/4 v7, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 41
    iput-boolean v7, p0, Lcom/taobao/gcanvas/GCanvasView;->mIsSurfaceChanging:Z

    .line 42
    iput-boolean v7, p0, Lcom/taobao/gcanvas/GCanvasView;->mIsSurfaceViewReady:Z

    .line 43
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/taobao/gcanvas/GCanvasView;->mLastChangingTime:J

    .line 47
    iput-boolean v7, p0, Lcom/taobao/gcanvas/GCanvasView;->mIsPaused:Z

    .line 48
    iput v7, p0, Lcom/taobao/gcanvas/GCanvasView;->mParentWidth:I

    .line 49
    iput v7, p0, Lcom/taobao/gcanvas/GCanvasView;->mParentHeight:I

    .line 50
    iput v7, p0, Lcom/taobao/gcanvas/GCanvasView;->mOffsetX:I

    .line 51
    iput v7, p0, Lcom/taobao/gcanvas/GCanvasView;->mOffsetY:I

    .line 52
    iput v7, p0, Lcom/taobao/gcanvas/GCanvasView;->mWidth:I

    .line 53
    iput v7, p0, Lcom/taobao/gcanvas/GCanvasView;->mHeight:I

    .line 58
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GCanvasView;->setEGLContextClientVersion(I)V

    .line 60
    invoke-virtual {p0}, Lcom/taobao/gcanvas/GCanvasView;->postSizeChanging()V

    .line 62
    const/16 v5, 0x18

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/gcanvas/GCanvasView;->setEGLConfigChooser(IIIIII)V

    .line 63
    new-instance v0, Lcom/taobao/gcanvas/GCanvasRenderer;

    invoke-direct {v0, p0}, Lcom/taobao/gcanvas/GCanvasRenderer;-><init>(Lcom/taobao/gcanvas/GCanvasView;)V

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasView;->mRenderer:Lcom/taobao/gcanvas/GCanvasRenderer;

    .line 64
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasView;->mRenderer:Lcom/taobao/gcanvas/GCanvasRenderer;

    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GCanvasView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 65
    sget v0, Lcom/taobao/gcanvas/GUtil;->JS_RENDERMODE_WHEN_DIRTY:I

    sget v1, Lcom/taobao/gcanvas/GUtil;->preRenderMode:I

    if-ne v0, v1, :cond_1

    .line 66
    const-string/jumbo v0, " RENDERMODE= JS_RENDERMODE_WHEN_DIRTY"

    invoke-static {v0}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, v7}, Lcom/taobao/gcanvas/GCanvasView;->setRenderMode(I)V

    .line 72
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 73
    invoke-virtual {p0, v8}, Lcom/taobao/gcanvas/GCanvasView;->setPreserveEGLContextOnPause(Z)V

    .line 75
    :cond_0
    invoke-virtual {p0, v8}, Lcom/taobao/gcanvas/GCanvasView;->setFocusableInTouchMode(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/taobao/gcanvas/GCanvasView;->requestFocus()Z

    .line 77
    return-void

    .line 69
    :cond_1
    const-string/jumbo v0, " RENDERMODE= RENDERMODE_CONTINUOUSLY"

    invoke-static {v0}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, v8}, Lcom/taobao/gcanvas/GCanvasView;->setRenderMode(I)V

    goto :goto_0
.end method


# virtual methods
.method public canSetParas()Z
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/taobao/gcanvas/GCanvasView;->mParentWidth:I

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, 0x1

    .line 261
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public execScripts(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public getRenderer()Lcom/taobao/gcanvas/GCanvasRenderer;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasView;->mRenderer:Lcom/taobao/gcanvas/GCanvasRenderer;

    return-object v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/taobao/gcanvas/GCanvasView;->mIsPaused:Z

    return v0
.end method

.method public isSizeChanging()Z
    .locals 4

    .prologue
    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/gcanvas/GCanvasView;->mIsSurfaceChanging:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/taobao/gcanvas/GCanvasView;->mLastChangingTime:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/taobao/gcanvas/GCanvasView;->CHANGING_TIMEOUT:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/gcanvas/GCanvasView;->mIsSurfaceChanging:Z

    .line 217
    :cond_0
    iget-boolean v0, p0, Lcom/taobao/gcanvas/GCanvasView;->mIsSurfaceChanging:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSurfaceViewReady()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/taobao/gcanvas/GCanvasView;->mIsSurfaceViewReady:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    invoke-static {p1, p2}, Lcom/taobao/gcanvas/GCanvas;->dispatchKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    monitor-exit p0

    .line 85
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    invoke-static {p1, p2}, Lcom/taobao/gcanvas/GCanvas;->dispatchKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    monitor-exit p0

    .line 96
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .prologue
    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->onSizeChanged(IIII)V

    .line 227
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/gcanvas/GCanvasView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 233
    const-string/jumbo v1, "CANVAS"

    const-string/jumbo v2, "onSizeChanged start"

    invoke-static {v1, v2}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/taobao/gcanvas/GCanvasView;->mParentWidth:I

    .line 236
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/taobao/gcanvas/GCanvasView;->mParentHeight:I

    .line 238
    iget v0, p0, Lcom/taobao/gcanvas/GCanvasView;->mWidth:I

    if-eqz v0, :cond_0

    .line 239
    iget v0, p0, Lcom/taobao/gcanvas/GCanvasView;->mOffsetX:I

    iget v1, p0, Lcom/taobao/gcanvas/GCanvasView;->mOffsetY:I

    iget v2, p0, Lcom/taobao/gcanvas/GCanvasView;->mWidth:I

    iget v3, p0, Lcom/taobao/gcanvas/GCanvasView;->mHeight:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/taobao/gcanvas/GCanvasView;->setPosition(IIII)V

    goto :goto_0
.end method

.method public onSurfaceViewInit()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 165
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "CanvasView Background, Color.WHITE"

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v0, "/res/gcanvaslogo.jpg"

    .line 170
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/taobao/gcanvas/GUtil;->preUrl:Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/taobao/gcanvas/GUtil;->preUrl:Ljava/lang/String;

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    const-string/jumbo v2, "file://"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 172
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 175
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 176
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 177
    const/16 v3, 0x10

    if-ge v1, v3, :cond_0

    .line 178
    invoke-virtual {p0, v2}, Lcom/taobao/gcanvas/GCanvasView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    :goto_0
    iput-boolean v6, p0, Lcom/taobao/gcanvas/GCanvasView;->mIsSurfaceViewReady:Z

    .line 192
    return-void

    .line 180
    :cond_0
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/taobao/gcanvas/GCanvasView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    const-string/jumbo v1, "CANVAS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IOException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/gcanvas/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/taobao/gcanvas/GUtil;->clearColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GCanvasView;->setBackgroundColor(I)V

    goto :goto_0

    .line 187
    :catch_1
    move-exception v1

    const-string/jumbo v1, "CANVAS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IndexOutOfBoundsException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/gcanvas/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/taobao/gcanvas/GUtil;->clearColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GCanvasView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onSurfaceViewReady()V
    .locals 2

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/taobao/gcanvas/GCanvasView;->mIsSurfaceViewReady:Z

    if-nez v0, :cond_0

    .line 157
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "CanvasView Background, TRANSPARENT"

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GCanvasView;->setBackgroundColor(I)V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/gcanvas/GCanvasView;->mIsSurfaceViewReady:Z

    .line 162
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    invoke-static {p1}, Lcom/taobao/gcanvas/GCanvas;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasView;->mRenderer:Lcom/taobao/gcanvas/GCanvasRenderer;

    .line 108
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    const/4 v0, 0x1

    return v0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public postSizeChanged()V
    .locals 1

    .prologue
    .line 206
    monitor-enter p0

    .line 207
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/taobao/gcanvas/GCanvasView;->mIsSurfaceChanging:Z

    .line 208
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public postSizeChanging()V
    .locals 2

    .prologue
    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/gcanvas/GCanvasView;->mLastChangingTime:J

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/gcanvas/GCanvasView;->mIsSurfaceChanging:Z

    .line 202
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public savePosition(IIII)V
    .locals 2

    .prologue
    .line 246
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "save position start"

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iput p1, p0, Lcom/taobao/gcanvas/GCanvasView;->mOffsetX:I

    .line 249
    iput p2, p0, Lcom/taobao/gcanvas/GCanvasView;->mOffsetY:I

    .line 250
    iput p3, p0, Lcom/taobao/gcanvas/GCanvasView;->mWidth:I

    .line 251
    iput p4, p0, Lcom/taobao/gcanvas/GCanvasView;->mHeight:I

    .line 253
    return-void
.end method

.method public setPosition(IIII)V
    .locals 5

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/taobao/gcanvas/GCanvasView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 273
    invoke-virtual {p0}, Lcom/taobao/gcanvas/GCanvasView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 275
    if-eqz v1, :cond_3

    .line 276
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int/2addr v2, p1

    sub-int/2addr v2, p3

    .line 277
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    sub-int/2addr v0, p2

    sub-int/2addr v0, p4

    .line 280
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-ne p1, v3, :cond_0

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-ne v2, v3, :cond_0

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-ne p2, v3, :cond_0

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq v0, v3, :cond_3

    .line 284
    :cond_0
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    if-ne p3, v3, :cond_1

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    if-eq p4, v3, :cond_2

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/gcanvas/GCanvasView;->postSizeChanging()V

    .line 289
    :cond_2
    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 290
    invoke-virtual {p0, v1}, Lcom/taobao/gcanvas/GCanvasView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    :cond_3
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .prologue
    .line 129
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "CanvasView surfaceChanged"

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 131
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 114
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "CanvasView surfaceCreated"

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/taobao/gcanvas/GCanvasView;->onSurfaceViewInit()V

    .line 117
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 118
    iget-boolean v0, p0, Lcom/taobao/gcanvas/GCanvasView;->mIsPaused:Z

    if-eqz v0, :cond_1

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/gcanvas/GCanvasView;->mIsPaused:Z

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasView;->mRenderer:Lcom/taobao/gcanvas/GCanvasRenderer;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasRenderer;->reloadTextures()V

    .line 123
    :cond_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 125
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 136
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "CanvasView surfaceDestroyed"

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/gcanvas/GCanvasView;->mIsPaused:Z

    .line 138
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 139
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasView;->mRenderer:Lcom/taobao/gcanvas/GCanvasRenderer;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasView;->mRenderer:Lcom/taobao/gcanvas/GCanvasRenderer;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasRenderer;->getContextId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvasJNI;->contextLost(Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void
.end method
