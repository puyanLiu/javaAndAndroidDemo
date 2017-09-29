.class public Lcom/taobao/gcanvas/GCanvasRenderer$MyAsyncTask;
.super Landroid/os/AsyncTask;
.source "GCanvasRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/gcanvas/GCanvasRenderer;


# direct methods
.method public constructor <init>(Lcom/taobao/gcanvas/GCanvasRenderer;)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Lcom/taobao/gcanvas/GCanvasRenderer$MyAsyncTask;->this$0:Lcom/taobao/gcanvas/GCanvasRenderer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 696
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[AsyncTask_exec] Path="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;->mTarget:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;)V

    .line 700
    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvasRenderer$MyAsyncTask;->this$0:Lcom/taobao/gcanvas/GCanvasRenderer;

    iget-object v2, v0, Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/gcanvas/GCanvasRenderer;->pathToBmp(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;->mBmp:Landroid/graphics/Bitmap;

    .line 701
    const/4 v1, 0x1

    iget v2, v0, Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;->mFlipy:I

    if-ne v1, v2, :cond_0

    .line 702
    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvasRenderer$MyAsyncTask;->this$0:Lcom/taobao/gcanvas/GCanvasRenderer;

    iget-object v2, v0, Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/taobao/gcanvas/GCanvasRenderer;->flipPixelY(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;->mBmp:Landroid/graphics/Bitmap;

    .line 703
    :cond_0
    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvasRenderer$MyAsyncTask;->this$0:Lcom/taobao/gcanvas/GCanvasRenderer;

    invoke-static {v1}, Lcom/taobao/gcanvas/GCanvasRenderer;->access$100(Lcom/taobao/gcanvas/GCanvasRenderer;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 704
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer$MyAsyncTask;->this$0:Lcom/taobao/gcanvas/GCanvasRenderer;

    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvasRenderer;->access$200(Lcom/taobao/gcanvas/GCanvasRenderer;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 705
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 691
    check-cast p1, [Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;

    invoke-virtual {p0, p1}, Lcom/taobao/gcanvas/GCanvasRenderer$MyAsyncTask;->doInBackground([Lcom/taobao/gcanvas/GCanvasRenderer$AsyncTaskParam;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
