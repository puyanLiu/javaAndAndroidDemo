.class Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private currX:I

.field private currY:I

.field private scroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;II)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 1331
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1332
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PhotoView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "fling velX "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " velY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    sget-object v1, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->FLING:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    invoke-static {p1, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$4(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;)V

    .line 1334
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;->scroller:Landroid/widget/OverScroller;

    .line 1336
    invoke-static {p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$1(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    .line 1337
    invoke-static {p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$1(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    .line 1340
    invoke-static {p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$1(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 1341
    invoke-static {p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$1(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 1342
    invoke-static {p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$0(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_0

    .line 1344
    invoke-static {p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$0(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)I

    move-result v5

    float-to-int v3, v3

    sub-int/2addr v5, v3

    move v6, v0

    .line 1350
    :goto_0
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 1351
    const/high16 v7, 0x41c80000    # 25.0f

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v7

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v3, v7

    .line 1352
    invoke-static {p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$2(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)I

    move-result v7

    add-int/2addr v3, v7

    int-to-float v3, v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_1

    .line 1354
    invoke-static {p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$2(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)I

    move-result v3

    float-to-int v4, v4

    sub-int v7, v3, v4

    move v8, v0

    .line 1359
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;->scroller:Landroid/widget/OverScroller;

    move v3, p2

    move v4, p3

    move v10, v9

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1361
    iput v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;->currX:I

    .line 1362
    iput v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;->currY:I

    .line 1363
    return-void

    :cond_0
    move v6, v1

    move v5, v1

    .line 1346
    goto :goto_0

    :cond_1
    move v8, v2

    move v7, v2

    .line 1356
    goto :goto_1
.end method


# virtual methods
.method public cancelFling()V
    .locals 3

    .prologue
    .line 1366
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    const-string/jumbo v2, "cancelFling"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;->scroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    sget-object v1, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->NONE:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$4(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;)V

    .line 1369
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;->scroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1371
    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;->scroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1376
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$5(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->FLING:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    if-ne v0, v1, :cond_1

    .line 1377
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    sget-object v1, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->NONE:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$4(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;)V

    .line 1379
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;->scroller:Landroid/widget/OverScroller;

    .line 1392
    :goto_0
    return-void

    .line 1383
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    .line 1384
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    .line 1385
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;->currX:I

    sub-int v2, v0, v2

    .line 1386
    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;->currY:I

    sub-int v3, v1, v3

    .line 1387
    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;->currX:I

    .line 1388
    iput v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;->currY:I

    .line 1389
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "fling px "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " py "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    int-to-float v1, v2

    int-to-float v2, v3

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$7(Lcom/alipay/mobile/beehive/photo/view/PhotoView;FF)V

    .line 1391
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0, p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$12(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
