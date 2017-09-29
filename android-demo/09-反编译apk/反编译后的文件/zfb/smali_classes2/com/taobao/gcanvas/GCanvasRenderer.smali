.class public Lcom/taobao/gcanvas/GCanvasRenderer;
.super Ljava/lang/Object;
.source "GCanvasRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ASSETS_PATH_PREFIX:Ljava/lang/String; = "file:///android_asset/"

.field private static JPEG_BUFFER_SIZE:I


# instance fields
.field private final SIX_TASK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private mCaptureQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/gcanvas/GCanvasMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mContextID:Ljava/lang/String;

.field private mDoneList:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameCountBeforeSurfaceViewReady:J

.field private mIsFboSupported:Z

.field private mJpegBuffer:[B

.field private mLastRenderCommands:Ljava/lang/String;

.field private mLocalQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/taobao/gcanvas/GCanvasMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeEnvironmentInitialized:Z

.field private mRenderCommands:Ljava/lang/String;

.field private mSem:Ljava/util/concurrent/Semaphore;

.field private mSurfaceChanged:Z

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mTextures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/gcanvas/GCanvasTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mTodoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Lcom/taobao/gcanvas/GCanvasView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/taobao/gcanvas/GCanvasRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/taobao/gcanvas/GCanvasRenderer;->$assertionsDisabled:Z

    .line 69
    const/high16 v0, 0x400000

    sput v0, Lcom/taobao/gcanvas/GCanvasRenderer;->JPEG_BUFFER_SIZE:I

    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/taobao/gcanvas/GCanvasView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mLastRenderCommands:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mLocalQueue:Ljava/util/LinkedList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mTextures:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mCaptureQueue:Ljava/util/List;

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mFrameCountBeforeSurfaceViewReady:J

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mJpegBuffer:[B

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mIsFboSupported:Z

    .line 74
    iput-boolean v2, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mSurfaceChanged:Z

    .line 75
    iput-boolean v2, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mNativeEnvironmentInitialized:Z

    .line 76
    iput v2, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mSurfaceWidth:I

    .line 77
    iput v2, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mSurfaceHeight:I

    .line 80
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->SIX_TASK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 81
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mSem:Ljava/util/concurrent/Semaphore;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mTodoList:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mDoneList:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 88
    iput-object p1, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mView:Lcom/taobao/gcanvas/GCanvasView;

    .line 89
    const-string/jumbo v0, "gcanvas"

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mContextID:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mRenderCommands:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mContextID:Ljava/lang/String;

    sget v1, Lcom/taobao/gcanvas/GUtil;->mJsVersion:I

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GCanvasJNI;->newCanvas(Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/gcanvas/GCanvasRenderer;)Lcom/taobao/gcanvas/GCanvasView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mView:Lcom/taobao/gcanvas/GCanvasView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/gcanvas/GCanvasRenderer;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mDoneList:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/taobao/gcanvas/GCanvasRenderer;)Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mSem:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private checkError()V
    .locals 4

    .prologue
    .line 456
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 457
    if-eqz v0, :cond_0

    .line 459
    const-string/jumbo v1, "CANVAS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CanvasRenderer glError="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_0
    sget-boolean v1, Lcom/taobao/gcanvas/GCanvasRenderer;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 462
    :cond_1
    return-void
.end method

.method private flushQueue()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 240
    monitor-enter p0

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mLocalQueue:Ljava/util/LinkedList;

    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvas;->copyMessageQueue(Ljava/util/LinkedList;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    :cond_0
    return-void

    .line 245
    :cond_1
    monitor-exit p0

    .line 247
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mLocalQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 249
    invoke-direct {p0}, Lcom/taobao/gcanvas/GCanvasRenderer;->initializeNativeEnvironment()V

    .line 253
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mLocalQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mLocalQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/taobao/gcanvas/GCanvasMessage;

    .line 256
    iget-object v0, v1, Lcom/taobao/gcanvas/GCanvasMessage;->type:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    sget-object v2, Lcom/taobao/gcanvas/GCanvasMessage$Type;->LOAD:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    if-ne v0, v2, :cond_d

    .line 257
    invoke-static {}, Lcom/taobao/gcanvas/GCanvas;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_2

    move v2, v7

    .line 260
    :goto_1
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mTextures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mTextures:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GCanvasTexture;

    iget v0, v0, Lcom/taobao/gcanvas/GCanvasTexture;->id:I

    iget v3, v1, Lcom/taobao/gcanvas/GCanvasMessage;->textureID:I

    if-ne v0, v3, :cond_7

    .line 262
    iget v0, v1, Lcom/taobao/gcanvas/GCanvasMessage;->textureID:I

    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GCanvasRenderer;->unloadTexture(I)V

    .line 268
    :cond_3
    new-instance v3, Lcom/taobao/gcanvas/GCanvasTextureDimension;

    invoke-direct {v3}, Lcom/taobao/gcanvas/GCanvasTextureDimension;-><init>()V

    .line 271
    iget-object v0, v1, Lcom/taobao/gcanvas/GCanvasMessage;->url:Ljava/lang/String;

    const-string/jumbo v2, "data:image/jpeg;base64"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/taobao/gcanvas/GCanvasMessage;->url:Ljava/lang/String;

    const-string/jumbo v2, "data:image/png;base64"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 274
    :cond_4
    :try_start_1
    iget-object v0, v1, Lcom/taobao/gcanvas/GCanvasMessage;->url:Ljava/lang/String;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 275
    iget-object v2, v1, Lcom/taobao/gcanvas/GCanvasMessage;->url:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvasBase64;->decode([B)[B

    move-result-object v0

    .line 276
    const/4 v2, 0x0

    array-length v4, v0

    invoke-static {v0, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 277
    iget v2, v1, Lcom/taobao/gcanvas/GCanvasMessage;->textureID:I

    invoke-virtual {p0, v0, v2}, Lcom/taobao/gcanvas/GCanvasRenderer;->loadTexture(Landroid/graphics/Bitmap;I)V

    .line 278
    if-eqz v0, :cond_8

    .line 279
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v3, Lcom/taobao/gcanvas/GCanvasTextureDimension;->width:I

    .line 280
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, v3, Lcom/taobao/gcanvas/GCanvasTextureDimension;->height:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v8

    .line 291
    :goto_2
    iget-object v2, v1, Lcom/taobao/gcanvas/GCanvasMessage;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/gcanvas/GCanvas;->GetFullURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/taobao/gcanvas/GCanvasRenderer;->getAssetsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 295
    if-nez v0, :cond_5

    .line 297
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 298
    const-string/jumbo v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 299
    invoke-direct {p0, v2, v1, v3}, Lcom/taobao/gcanvas/GCanvasRenderer;->loadTurboPng(Ljava/lang/String;Lcom/taobao/gcanvas/GCanvasMessage;Lcom/taobao/gcanvas/GCanvasTextureDimension;)Z

    move-result v0

    .line 301
    const-string/jumbo v4, "CANVAS"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "CanvasRenderer m.url="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/taobao/gcanvas/GCanvasMessage;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  success:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    if-nez v0, :cond_9

    .line 303
    const-string/jumbo v4, "CANVAS"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[turbo] fail to loadTurboPng. path:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/gcanvas/GLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_5
    :goto_3
    if-nez v0, :cond_6

    .line 319
    :try_start_2
    invoke-direct {p0, v2}, Lcom/taobao/gcanvas/GCanvasRenderer;->readPathToStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 320
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 321
    iget v4, v1, Lcom/taobao/gcanvas/GCanvasMessage;->textureID:I

    invoke-virtual {p0, v2, v4}, Lcom/taobao/gcanvas/GCanvasRenderer;->loadTexture(Landroid/graphics/Bitmap;I)V

    .line 322
    if-eqz v2, :cond_6

    .line 323
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, v3, Lcom/taobao/gcanvas/GCanvasTextureDimension;->width:I

    .line 324
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v3, Lcom/taobao/gcanvas/GCanvasTextureDimension;->height:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v8

    .line 333
    :cond_6
    :goto_4
    if-ne v0, v8, :cond_2

    .line 334
    new-instance v0, Lcom/taobao/gcanvas/GCanvasTexture;

    iget-object v2, v1, Lcom/taobao/gcanvas/GCanvasMessage;->url:Ljava/lang/String;

    iget v4, v1, Lcom/taobao/gcanvas/GCanvasMessage;->textureID:I

    invoke-direct {v0, v2, v4}, Lcom/taobao/gcanvas/GCanvasTexture;-><init>(Ljava/lang/String;I)V

    .line 335
    iget-object v2, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mTextures:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 338
    iget v2, v3, Lcom/taobao/gcanvas/GCanvasTextureDimension;->width:I

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 339
    iget v2, v3, Lcom/taobao/gcanvas/GCanvasTextureDimension;->height:I

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 340
    const-string/jumbo v2, "CanvasRenderer png width ="

    iget v3, v3, Lcom/taobao/gcanvas/GCanvasTextureDimension;->width:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v1, v1, Lcom/taobao/gcanvas/GCanvasMessage;->resultContext:Lcom/taobao/gcanvas/GCanvasResult;

    invoke-virtual {v1, v0}, Lcom/taobao/gcanvas/GCanvasResult;->success(Lorg/json/JSONArray;)V

    goto/16 :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 260
    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    const-string/jumbo v2, "CANVAS"

    const-string/jumbo v4, "CanvasRenderer Base64 loadTexture error="

    invoke-static {v2, v4, v0}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    iget-object v2, v1, Lcom/taobao/gcanvas/GCanvasMessage;->resultContext:Lcom/taobao/gcanvas/GCanvasResult;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/taobao/gcanvas/GCanvasResult;->error(Ljava/lang/String;)V

    :cond_8
    move v0, v7

    goto/16 :goto_2

    .line 305
    :cond_9
    const-string/jumbo v4, "CANVAS"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[turbo] success in loadTurboPng. path:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/gcanvas/GLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 307
    :cond_a
    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string/jumbo v5, ".jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 308
    :cond_b
    invoke-direct {p0, v2, v1, v3}, Lcom/taobao/gcanvas/GCanvasRenderer;->loadTurboJpeg(Ljava/lang/String;Lcom/taobao/gcanvas/GCanvasMessage;Lcom/taobao/gcanvas/GCanvasTextureDimension;)Z

    move-result v0

    .line 309
    if-eqz v0, :cond_c

    .line 310
    const-string/jumbo v4, "CANVAS"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[turbo] success in loadTurboJpeg. path:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/gcanvas/GLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 312
    :cond_c
    const-string/jumbo v4, "CANVAS"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[turbo] fail to loadTurboJpeg. path:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/gcanvas/GLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 327
    :catch_1
    move-exception v2

    .line 328
    const-string/jumbo v4, "CANVAS"

    const-string/jumbo v5, "CanvasRenderer loadTexture error="

    invoke-static {v4, v5, v2}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    iget-object v4, v1, Lcom/taobao/gcanvas/GCanvasMessage;->resultContext:Lcom/taobao/gcanvas/GCanvasResult;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/taobao/gcanvas/GCanvasResult;->error(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 344
    :cond_d
    iget-object v0, v1, Lcom/taobao/gcanvas/GCanvasMessage;->type:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    sget-object v2, Lcom/taobao/gcanvas/GCanvasMessage$Type;->GET_IMAGEDATA:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    if-ne v0, v2, :cond_e

    .line 345
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v2, "GCanvasRender.java::GCanvasMessage.Type.GET_IMAGEDATA"

    invoke-static {v0, v2}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mContextID:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mRenderCommands:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/taobao/gcanvas/GCanvasJNI;->render(Lcom/taobao/gcanvas/GCanvasRenderer;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mContextID:Ljava/lang/String;

    iget v2, v1, Lcom/taobao/gcanvas/GCanvasMessage;->x:I

    iget v3, v1, Lcom/taobao/gcanvas/GCanvasMessage;->y:I

    iget v4, v1, Lcom/taobao/gcanvas/GCanvasMessage;->width:I

    iget v5, v1, Lcom/taobao/gcanvas/GCanvasMessage;->height:I

    invoke-static {v0, v2, v3, v4, v5}, Lcom/taobao/gcanvas/GCanvasJNI;->getImageData(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v0

    .line 351
    iget-object v1, v1, Lcom/taobao/gcanvas/GCanvasMessage;->resultContext:Lcom/taobao/gcanvas/GCanvasResult;

    invoke-virtual {v1, v0}, Lcom/taobao/gcanvas/GCanvasResult;->success(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 352
    :cond_e
    iget-object v0, v1, Lcom/taobao/gcanvas/GCanvasMessage;->type:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    sget-object v2, Lcom/taobao/gcanvas/GCanvasMessage$Type;->UNLOAD:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    if-ne v0, v2, :cond_11

    move v2, v7

    .line 354
    :goto_5
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mTextures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_f

    .line 355
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mTextures:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GCanvasTexture;

    iget v0, v0, Lcom/taobao/gcanvas/GCanvasTexture;->id:I

    iget v3, v1, Lcom/taobao/gcanvas/GCanvasMessage;->textureID:I

    if-ne v0, v3, :cond_10

    .line 356
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mTextures:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 360
    :cond_f
    iget v0, v1, Lcom/taobao/gcanvas/GCanvasMessage;->textureID:I

    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GCanvasRenderer;->unloadTexture(I)V

    goto/16 :goto_0

    .line 354
    :cond_10
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 361
    :cond_11
    iget-object v0, v1, Lcom/taobao/gcanvas/GCanvasMessage;->type:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    sget-object v2, Lcom/taobao/gcanvas/GCanvasMessage$Type;->RELOAD:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    if-ne v0, v2, :cond_17

    .line 362
    invoke-static {}, Lcom/taobao/gcanvas/GCanvas;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_2

    .line 366
    new-instance v2, Lcom/taobao/gcanvas/GCanvasTextureDimension;

    invoke-direct {v2}, Lcom/taobao/gcanvas/GCanvasTextureDimension;-><init>()V

    .line 368
    iget-object v0, v1, Lcom/taobao/gcanvas/GCanvasMessage;->url:Ljava/lang/String;

    const-string/jumbo v3, "data:image/jpeg;base64"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v1, Lcom/taobao/gcanvas/GCanvasMessage;->url:Ljava/lang/String;

    const-string/jumbo v3, "data:image/png;base64"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 371
    :cond_12
    :try_start_3
    iget-object v0, v1, Lcom/taobao/gcanvas/GCanvasMessage;->url:Ljava/lang/String;

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 372
    iget-object v3, v1, Lcom/taobao/gcanvas/GCanvasMessage;->url:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvasBase64;->decode([B)[B

    move-result-object v0

    .line 373
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 374
    iget v3, v1, Lcom/taobao/gcanvas/GCanvasMessage;->textureID:I

    invoke-virtual {p0, v0, v3}, Lcom/taobao/gcanvas/GCanvasRenderer;->loadTexture(Landroid/graphics/Bitmap;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move v0, v8

    .line 383
    :goto_6
    iget-object v3, v1, Lcom/taobao/gcanvas/GCanvasMessage;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/taobao/gcanvas/GCanvas;->GetFullURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/taobao/gcanvas/GCanvasRenderer;->getAssetsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 384
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 386
    const-string/jumbo v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 387
    invoke-direct {p0, v3, v1, v2}, Lcom/taobao/gcanvas/GCanvasRenderer;->loadTurboPng(Ljava/lang/String;Lcom/taobao/gcanvas/GCanvasMessage;Lcom/taobao/gcanvas/GCanvasTextureDimension;)Z

    move-result v0

    .line 392
    :cond_13
    :goto_7
    if-nez v0, :cond_2

    .line 394
    :try_start_4
    invoke-direct {p0, v3}, Lcom/taobao/gcanvas/GCanvasRenderer;->readPathToStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 395
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 396
    iget v1, v1, Lcom/taobao/gcanvas/GCanvasMessage;->textureID:I

    invoke-virtual {p0, v0, v1}, Lcom/taobao/gcanvas/GCanvasRenderer;->loadTexture(Landroid/graphics/Bitmap;I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 397
    :catch_2
    move-exception v0

    .line 398
    const-string/jumbo v1, "CANVAS"

    const-string/jumbo v2, "CanvasRenderer reloadTexture error="

    invoke-static {v1, v2, v0}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 377
    :catch_3
    move-exception v0

    .line 378
    const-string/jumbo v3, "CANVAS"

    const-string/jumbo v4, "Base64 loadTexture error="

    invoke-static {v3, v4, v0}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 379
    iget-object v3, v1, Lcom/taobao/gcanvas/GCanvasMessage;->resultContext:Lcom/taobao/gcanvas/GCanvasResult;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/taobao/gcanvas/GCanvasResult;->error(Ljava/lang/String;)V

    :cond_14
    move v0, v7

    goto :goto_6

    .line 388
    :cond_15
    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    const-string/jumbo v5, ".jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 389
    :cond_16
    invoke-direct {p0, v3, v1, v2}, Lcom/taobao/gcanvas/GCanvasRenderer;->loadTurboJpeg(Ljava/lang/String;Lcom/taobao/gcanvas/GCanvasMessage;Lcom/taobao/gcanvas/GCanvasTextureDimension;)Z

    move-result v0

    goto :goto_7

    .line 402
    :cond_17
    iget-object v0, v1, Lcom/taobao/gcanvas/GCanvasMessage;->type:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    sget-object v2, Lcom/taobao/gcanvas/GCanvasMessage$Type;->RENDER:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    if-ne v0, v2, :cond_1a

    .line 404
    const/4 v0, -0x1

    sget v2, Lcom/taobao/gcanvas/GUtil;->mCanvasRenderCmdLenLimit:I

    if-eq v0, v2, :cond_18

    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mRenderCommands:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, v1, Lcom/taobao/gcanvas/GCanvasMessage;->drawCommands:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lcom/taobao/gcanvas/GUtil;->mCanvasRenderCmdLenLimit:I

    if-ge v0, v2, :cond_19

    .line 406
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mRenderCommands:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/taobao/gcanvas/GCanvasMessage;->drawCommands:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mRenderCommands:Ljava/lang/String;

    .line 411
    :goto_8
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mCaptureQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mCaptureQueue:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/taobao/gcanvas/GCanvasMessage;

    .line 413
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mContextID:Ljava/lang/String;

    iget-object v1, v6, Lcom/taobao/gcanvas/GCanvasMessage;->resultContext:Lcom/taobao/gcanvas/GCanvasResult;

    invoke-virtual {v1}, Lcom/taobao/gcanvas/GCanvasResult;->getCallbackId()Ljava/lang/String;

    move-result-object v1

    iget v2, v6, Lcom/taobao/gcanvas/GCanvasMessage;->x:I

    iget v3, v6, Lcom/taobao/gcanvas/GCanvasMessage;->y:I

    iget v4, v6, Lcom/taobao/gcanvas/GCanvasMessage;->width:I

    iget v5, v6, Lcom/taobao/gcanvas/GCanvasMessage;->height:I

    iget-object v6, v6, Lcom/taobao/gcanvas/GCanvasMessage;->url:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/taobao/gcanvas/GCanvasJNI;->captureGLLayer(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mCaptureQueue:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_8

    .line 408
    :cond_19
    iget-object v0, v1, Lcom/taobao/gcanvas/GCanvasMessage;->drawCommands:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mRenderCommands:Ljava/lang/String;

    goto :goto_8

    .line 417
    :cond_1a
    iget-object v0, v1, Lcom/taobao/gcanvas/GCanvasMessage;->type:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    sget-object v2, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_ORTHO:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    if-ne v0, v2, :cond_1b

    .line 418
    const-string/jumbo v0, "CANVAS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CanvasRenderer setOrtho width="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/taobao/gcanvas/GCanvasMessage;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/taobao/gcanvas/GCanvasMessage;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mContextID:Ljava/lang/String;

    iget v2, v1, Lcom/taobao/gcanvas/GCanvasMessage;->width:I

    iget v1, v1, Lcom/taobao/gcanvas/GCanvasMessage;->height:I

    invoke-static {v0, v2, v1}, Lcom/taobao/gcanvas/GCanvasJNI;->setOrtho(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 420
    :cond_1b
    iget-object v0, v1, Lcom/taobao/gcanvas/GCanvasMessage;->type:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    sget-object v2, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_DEVICE_PIXEL_RATIO:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    if-ne v0, v2, :cond_1c

    .line 421
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v2, "GCanvasRender.java::GCanvasMessage.Type.SET_DEVICE_PIXEL_RATIO"

    invoke-static {v0, v2}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mContextID:Ljava/lang/String;

    iget-wide v1, v1, Lcom/taobao/gcanvas/GCanvasMessage;->devicePixelRatio:D

    invoke-static {v0, v1, v2}, Lcom/taobao/gcanvas/GCanvasJNI;->setDevicePixelRatio(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 424
    :cond_1c
    iget-object v0, v1, Lcom/taobao/gcanvas/GCanvasMessage;->type:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    sget-object v2, Lcom/taobao/gcanvas/GCanvasMessage$Type;->CAPTURE:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    if-ne v0, v2, :cond_1d

    .line 425
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v2, "CanvasRenderer capture"

    invoke-static {v0, v2}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mCaptureQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 427
    :cond_1d
    iget-object v0, v1, Lcom/taobao/gcanvas/GCanvasMessage;->type:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    sget-object v2, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_BACKGROUND:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    if-ne v0, v2, :cond_1e

    .line 428
    const-string/jumbo v0, "CANVAS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CanvasRenderer setBackground color="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/taobao/gcanvas/GCanvasMessage;->drawCommands:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :try_start_5
    iget-object v0, v1, Lcom/taobao/gcanvas/GCanvasMessage;->drawCommands:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 435
    iget-object v2, v1, Lcom/taobao/gcanvas/GCanvasMessage;->drawCommands:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 436
    iget-object v3, v1, Lcom/taobao/gcanvas/GCanvasMessage;->drawCommands:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 437
    iget-object v4, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mContextID:Ljava/lang/String;

    invoke-static {v4, v0, v2, v3}, Lcom/taobao/gcanvas/GCanvasJNI;->setBackgroundColor(Ljava/lang/String;III)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 438
    :catch_4
    move-exception v0

    .line 439
    const-string/jumbo v2, "CANVAS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Parsing background color: \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/taobao/gcanvas/GCanvasMessage;->drawCommands:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/taobao/gcanvas/GLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 441
    :cond_1e
    iget-object v0, v1, Lcom/taobao/gcanvas/GCanvasMessage;->type:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    sget-object v2, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_TYOFFSETFLAG:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    if-ne v0, v2, :cond_1f

    .line 442
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mContextID:Ljava/lang/String;

    iget-boolean v1, v1, Lcom/taobao/gcanvas/GCanvasMessage;->boolFlag:Z

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GCanvasJNI;->setTyOffsetFlag(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 443
    :cond_1f
    iget-object v0, v1, Lcom/taobao/gcanvas/GCanvasMessage;->type:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    sget-object v2, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_HI_QUALITY:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    if-ne v0, v2, :cond_20

    .line 444
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mContextID:Ljava/lang/String;

    iget-boolean v1, v1, Lcom/taobao/gcanvas/GCanvasMessage;->hiQualityFlag:Z

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GCanvasJNI;->setHiQuality(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 445
    :cond_20
    iget-object v0, v1, Lcom/taobao/gcanvas/GCanvasMessage;->type:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    sget-object v2, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_CONTEXT_TYPE:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    if-ne v0, v2, :cond_21

    .line 446
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mContextID:Ljava/lang/String;

    iget v1, v1, Lcom/taobao/gcanvas/GCanvasMessage;->x:I

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GCanvasJNI;->setContextType(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 447
    :cond_21
    iget-object v0, v1, Lcom/taobao/gcanvas/GCanvasMessage;->type:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    sget-object v2, Lcom/taobao/gcanvas/GCanvasMessage$Type;->SET_CLEAR_COLOR:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    if-ne v0, v2, :cond_2

    .line 448
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v2, "GCanvasRender.java::GCanvasMessage.Type.SET_CLEAR_COLOR"

    invoke-static {v0, v2}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mContextID:Ljava/lang/String;

    iget-object v1, v1, Lcom/taobao/gcanvas/GCanvasMessage;->drawCommands:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GCanvasJNI;->setClearColor(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getAssetsPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string/jumbo v0, "file:///android_asset/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-object p1

    :cond_0
    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private initializeNativeEnvironment()V
    .locals 3

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mSurfaceChanged:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mContextID:Ljava/lang/String;

    iget v1, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mSurfaceWidth:I

    iget v2, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mSurfaceHeight:I

    invoke-static {v0, v1, v2}, Lcom/taobao/gcanvas/GCanvasJNI;->surfaceChanged(Ljava/lang/String;II)V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mSurfaceChanged:Z

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mNativeEnvironmentInitialized:Z

    .line 236
    :cond_0
    return-void
.end method

.method private inputStreamToByte(Ljava/io/InputStream;)[B
    .locals 6

    .prologue
    const/16 v5, 0x1000

    const/4 v4, 0x0

    .line 120
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 122
    new-array v1, v5, [B

    .line 124
    :goto_0
    invoke-virtual {p1, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 125
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 128
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 129
    return-object v1
.end method

.method private isLocalFile(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 141
    const-string/jumbo v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 142
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeonSupport()Z
    .locals 1

    .prologue
    .line 134
    :try_start_0
    invoke-static {}, Lcom/taobao/gcanvas/GCanvasJNI;->isNeonSupport()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 136
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadTurboJpeg(Ljava/lang/String;Lcom/taobao/gcanvas/GCanvasMessage;Lcom/taobao/gcanvas/GCanvasTextureDimension;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Lcom/taobao/gcanvas/GCanvasRenderer;->isNeonSupport()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 209
    :goto_0
    return v0

    .line 171
    :cond_0
    invoke-static {}, Lcom/sun/jpeg/turbo/demo/Util;->a()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 175
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mJpegBuffer:[B

    if-nez v2, :cond_2

    .line 176
    sget v2, Lcom/taobao/gcanvas/GCanvasRenderer;->JPEG_BUFFER_SIZE:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mJpegBuffer:[B

    .line 179
    :cond_2
    iget-object v2, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mJpegBuffer:[B

    if-eqz v2, :cond_3

    .line 180
    invoke-direct {p0, p1}, Lcom/taobao/gcanvas/GCanvasRenderer;->readPathToStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mJpegBuffer:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/sun/jpeg/turbo/demo/Util;->nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 200
    :cond_3
    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v0, v1

    .line 184
    goto :goto_0

    .line 185
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    .line 187
    goto :goto_0

    .line 188
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ExceptionInInitializerError;->printStackTrace()V

    move v0, v1

    .line 190
    goto :goto_0

    .line 191
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    move v0, v1

    .line 193
    goto :goto_0

    .line 194
    :catch_4
    move-exception v0

    .line 195
    const-string/jumbo v2, "CANVAS"

    const-string/jumbo v3, "Cannot load the jpeg library"

    invoke-static {v2, v3}, Lcom/taobao/gcanvas/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 197
    goto :goto_0

    .line 202
    :cond_4
    iget v1, p2, Lcom/taobao/gcanvas/GCanvasMessage;->textureID:I

    invoke-virtual {p0, v0, v1}, Lcom/taobao/gcanvas/GCanvasRenderer;->loadTexture(Landroid/graphics/Bitmap;I)V

    .line 204
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p3, Lcom/taobao/gcanvas/GCanvasTextureDimension;->width:I

    .line 205
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p3, Lcom/taobao/gcanvas/GCanvasTextureDimension;->height:I

    .line 207
    const-string/jumbo v0, "CANVAS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Load jpeg, width:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p3, Lcom/taobao/gcanvas/GCanvasTextureDimension;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/taobao/gcanvas/GCanvasTextureDimension;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private loadTurboPng(Ljava/lang/String;Lcom/taobao/gcanvas/GCanvasMessage;Lcom/taobao/gcanvas/GCanvasTextureDimension;)Z
    .locals 4

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1}, Lcom/taobao/gcanvas/GCanvasRenderer;->isLocalFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mContextID:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v1}, Lcom/taobao/gcanvas/GCanvasView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget v2, p2, Lcom/taobao/gcanvas/GCanvasMessage;->textureID:I

    invoke-static {v0, v1, p1, v2, p3}, Lcom/taobao/gcanvas/GCanvasJNI;->addPngTexture(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILcom/taobao/gcanvas/GCanvasTextureDimension;)Z

    move-result v0

    .line 166
    :goto_0
    return v0

    .line 156
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/gcanvas/GCanvasRenderer;->readPathToStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 157
    invoke-direct {p0, v1}, Lcom/taobao/gcanvas/GCanvasRenderer;->inputStreamToByte(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 158
    iget-object v2, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mContextID:Ljava/lang/String;

    iget v3, p2, Lcom/taobao/gcanvas/GCanvasMessage;->textureID:I

    invoke-static {v2, v1, v3, p3}, Lcom/taobao/gcanvas/GCanvasJNI;->addPngTextureByStream(Ljava/lang/String;[BILcom/taobao/gcanvas/GCanvasTextureDimension;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private readPathToStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 105
    const-string/jumbo v0, "CANVAS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "read file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string/jumbo v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 110
    :cond_1
    const-string/jumbo v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    new-instance v0, Ljava/io/FileInputStream;

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-static {}, Lcom/taobao/gcanvas/GCanvas;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method private runSurfaceViewReady()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasView;->isSurfaceViewReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/taobao/gcanvas/GCanvasRenderer$1;

    invoke-direct {v1, p0}, Lcom/taobao/gcanvas/GCanvasRenderer$1;-><init>(Lcom/taobao/gcanvas/GCanvasRenderer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 223
    :cond_0
    return-void
.end method


# virtual methods
.method public bmpToTex(ILandroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 639
    packed-switch p1, :pswitch_data_0

    .line 659
    const/16 v0, 0xde1

    .line 661
    :goto_0
    invoke-static {v0, v1, p2, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 662
    return-void

    .line 641
    :pswitch_0
    const v0, 0x8515

    .line 642
    goto :goto_0

    .line 644
    :pswitch_1
    const v0, 0x8516

    .line 645
    goto :goto_0

    .line 647
    :pswitch_2
    const v0, 0x8517

    .line 648
    goto :goto_0

    .line 650
    :pswitch_3
    const v0, 0x8518

    .line 651
    goto :goto_0

    .line 653
    :pswitch_4
    const v0, 0x8519

    .line 654
    goto :goto_0

    .line 656
    :pswitch_5
    const v0, 0x851a

    .line 657
    goto :goto_0

    .line 639
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public dealTexture(Ljava/lang/String;III)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[GCanvasRender::dealTexture] begin... path="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", flipy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", flush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;)V

    .line 718
    if-ne v6, p4, :cond_1

    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mTodoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 719
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/gcanvas/GCanvasRenderer;->dealTextureSingle(Ljava/lang/String;II)V

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    new-instance v0, Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;-><init>(Lcom/taobao/gcanvas/GCanvasRenderer;Ljava/lang/String;II)V

    .line 724
    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mTodoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    if-eqz p4, :cond_0

    .line 730
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mTodoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 731
    new-instance v2, Lcom/taobao/gcanvas/GCanvasRenderer$MyAsyncTask;

    invoke-direct {v2, p0}, Lcom/taobao/gcanvas/GCanvasRenderer$MyAsyncTask;-><init>(Lcom/taobao/gcanvas/GCanvasRenderer;)V

    iget-object v3, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->SIX_TASK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v4, v6, [Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;

    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/taobao/gcanvas/GCanvasRenderer$MyAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mTodoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 735
    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mTodoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 738
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 739
    :try_start_0
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 740
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mDoneList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;

    .line 741
    iget v2, v0, Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;->mTarget:I

    iget-object v3, v0, Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2, v3}, Lcom/taobao/gcanvas/GCanvasRenderer;->bmpToTex(ILandroid/graphics/Bitmap;)V

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[GCanvasRender::dealTexture] end... path="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 744
    goto :goto_2

    .line 746
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public dealTextureSingle(Ljava/lang/String;II)V
    .locals 3

    .prologue
    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[GCanvasRender::dealTexture] path="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", flipy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;)V

    .line 668
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/taobao/gcanvas/GCanvasRenderer;->pathToBmp(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 669
    const/4 v1, 0x1

    if-ne v1, p3, :cond_0

    .line 670
    invoke-virtual {p0, v0}, Lcom/taobao/gcanvas/GCanvasRenderer;->flipPixelY(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 671
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/taobao/gcanvas/GCanvasRenderer;->bmpToTex(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :goto_0
    return-void

    .line 673
    :catch_0
    move-exception v0

    .line 674
    const-string/jumbo v1, "CANVAS"

    const-string/jumbo v2, "CanvasRenderer loadTexture error="

    invoke-static {v1, v2, v0}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public flipPixelY(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 623
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 624
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[GCanvasRender::convert] ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;)V

    .line 627
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 628
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 629
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 630
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 632
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 633
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v2, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 635
    return-object v7
.end method

.method public getContextID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mContextID:Ljava/lang/String;

    return-object v0
.end method

.method public getContextId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mContextID:Ljava/lang/String;

    return-object v0
.end method

.method public loadTexture(Landroid/graphics/Bitmap;I)V
    .locals 7

    .prologue
    const/16 v2, 0x2601

    const/4 v3, 0x1

    const/16 v6, 0xcf5

    const/16 v5, 0xde1

    const/4 v4, 0x0

    .line 551
    if-nez p1, :cond_0

    .line 552
    const-string/jumbo v0, "CANVAS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CanvasRenderer Aborting loadtexture "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :goto_0
    return-void

    .line 556
    :cond_0
    new-array v0, v3, [I

    .line 557
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 558
    aget v1, v0, v4

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 560
    const/16 v1, 0x2801

    invoke-static {v5, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 561
    const/16 v1, 0x2800

    invoke-static {v5, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 563
    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v5, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 564
    const/16 v1, 0x2803

    const v2, 0x812f

    invoke-static {v5, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 567
    invoke-static {v3}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 568
    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 569
    invoke-virtual {v1, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    .line 572
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_2

    .line 573
    const/4 v2, 0x4

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 578
    :cond_1
    :goto_1
    invoke-static {v5, v4, p1, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 579
    invoke-direct {p0}, Lcom/taobao/gcanvas/GCanvasRenderer;->checkError()V

    .line 582
    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 584
    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mContextID:Ljava/lang/String;

    aget v0, v0, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, p2, v0, v2, v3}, Lcom/taobao/gcanvas/GCanvasJNI;->addTexture(Ljava/lang/String;IIII)V

    .line 586
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 587
    const-string/jumbo v0, "CANVAS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CanvasRenderer Leaving loadtexture "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 574
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v2, v3, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_1

    .line 575
    :cond_3
    const/4 v2, 0x2

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    goto :goto_1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const-wide/16 v2, 0x1

    .line 467
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasView;->isPaused()Z

    move-result v0

    if-nez v0, :cond_3

    .line 468
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasView;->isSizeChanging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/taobao/gcanvas/GCanvasRenderer;->flushQueue()V

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mRenderCommands:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mRenderCommands:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 473
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mContextID:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mRenderCommands:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/taobao/gcanvas/GCanvasJNI;->render(Lcom/taobao/gcanvas/GCanvasRenderer;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-wide v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mFrameCountBeforeSurfaceViewReady:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mFrameCountBeforeSurfaceViewReady:J

    .line 478
    iget-wide v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mFrameCountBeforeSurfaceViewReady:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 479
    invoke-direct {p0}, Lcom/taobao/gcanvas/GCanvasRenderer;->runSurfaceViewReady()V

    .line 482
    :cond_1
    iget-boolean v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mIsFboSupported:Z

    if-nez v0, :cond_2

    .line 483
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mRenderCommands:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mLastRenderCommands:Ljava/lang/String;

    .line 500
    :cond_2
    :goto_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mRenderCommands:Ljava/lang/String;

    .line 502
    :cond_3
    return-void

    .line 485
    :cond_4
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mLastRenderCommands:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mLastRenderCommands:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mIsFboSupported:Z

    if-nez v0, :cond_5

    .line 486
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mContextID:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mLastRenderCommands:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/taobao/gcanvas/GCanvasJNI;->render(Lcom/taobao/gcanvas/GCanvasRenderer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_5
    iget-boolean v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mNativeEnvironmentInitialized:Z

    if-eqz v0, :cond_2

    .line 492
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mContextID:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mRenderCommands:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/taobao/gcanvas/GCanvasJNI;->render(Lcom/taobao/gcanvas/GCanvasRenderer;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-direct {p0}, Lcom/taobao/gcanvas/GCanvasRenderer;->runSurfaceViewReady()V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3

    .prologue
    .line 527
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mFrameCountBeforeSurfaceViewReady:J

    .line 528
    const-string/jumbo v0, "CANVAS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CanvasRenderer onSurfaceChanged. width:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " gl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mSurfaceChanged:Z

    .line 535
    iput p2, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mSurfaceWidth:I

    .line 536
    iput p3, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mSurfaceHeight:I

    .line 538
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mContextID:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvasJNI;->isFboSupport(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mIsFboSupported:Z

    .line 540
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mView:Lcom/taobao/gcanvas/GCanvasView;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasView;->postSizeChanged()V

    .line 541
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 507
    const-string/jumbo v0, "CANVAS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CanvasRenderer onSurfaceCreated. config:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " gl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 510
    invoke-virtual {v0, v6}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 511
    const/16 v1, 0xd52

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 512
    invoke-virtual {v0, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    .line 513
    const/16 v2, 0xd53

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 514
    invoke-virtual {v0, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    .line 515
    const/16 v3, 0xd54

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 516
    invoke-virtual {v0, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    .line 517
    const/16 v4, 0xd57

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 518
    invoke-virtual {v0, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    .line 519
    const/16 v5, 0xd56

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 520
    invoke-virtual {v0, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 522
    const-string/jumbo v5, "CANVAS"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "CanvasRenderer R="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " G="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " B="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " DEPETH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " STENCIL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 2

    .prologue
    .line 546
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "CanvasRenderer onSurfaceDestroyed"

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method public pathToBmp(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 616
    invoke-static {p1}, Lcom/taobao/gcanvas/GCanvas;->GetFullURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GCanvasRenderer;->getAssetsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 617
    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GCanvasRenderer;->readPathToStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 618
    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GCanvasRenderer;->inputStreamToByte(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 619
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public reloadTextures()V
    .locals 5

    .prologue
    .line 599
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "CanvasRenderer reloadtextures"

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mTextures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 601
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GCanvasTexture;

    .line 603
    new-instance v2, Lcom/taobao/gcanvas/GCanvasMessage;

    sget-object v3, Lcom/taobao/gcanvas/GCanvasMessage$Type;->RELOAD:Lcom/taobao/gcanvas/GCanvasMessage$Type;

    invoke-direct {v2, v3}, Lcom/taobao/gcanvas/GCanvasMessage;-><init>(Lcom/taobao/gcanvas/GCanvasMessage$Type;)V

    .line 604
    iget-object v3, v0, Lcom/taobao/gcanvas/GCanvasTexture;->url:Ljava/lang/String;

    iput-object v3, v2, Lcom/taobao/gcanvas/GCanvasMessage;->url:Ljava/lang/String;

    .line 605
    iget v0, v0, Lcom/taobao/gcanvas/GCanvasTexture;->id:I

    iput v0, v2, Lcom/taobao/gcanvas/GCanvasMessage;->textureID:I

    .line 606
    const-string/jumbo v0, "CANVAS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CanvasRenderer queueing reload texture "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/taobao/gcanvas/GCanvasMessage;->textureID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/taobao/gcanvas/GCanvasMessage;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mLocalQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 609
    :cond_0
    return-void
.end method

.method public unloadTexture(I)V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer;->mContextID:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/taobao/gcanvas/GCanvasJNI;->removeTexture(Ljava/lang/String;I)V

    .line 593
    const-string/jumbo v0, "CANVAS"

    const-string/jumbo v1, "CanvasRenderer unloadtexture"

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-direct {p0}, Lcom/taobao/gcanvas/GCanvasRenderer;->checkError()V

    .line 595
    return-void
.end method
