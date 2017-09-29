.class Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;
.super Ljava/lang/Object;
.source "PhotoView.java"


# instance fields
.field private canDrag:Z

.field private dragListener:Lcom/alipay/mobile/beehive/photo/view/PhotoView$SimpleDragListener;

.field private lastX:F

.field private lastY:F

.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Lcom/alipay/mobile/beehive/photo/view/PhotoView$SimpleDragListener;)V
    .locals 1

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;->canDrag:Z

    .line 1282
    iput-object p2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;->dragListener:Lcom/alipay/mobile/beehive/photo/view/PhotoView$SimpleDragListener;

    .line 1283
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 1286
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$5(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->NONE:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$5(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->DRAG:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    if-eq v2, v3, :cond_1

    .line 1288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;->lastX:F

    .line 1289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;->lastY:F

    .line 1320
    :cond_0
    :goto_0
    return v0

    .line 1293
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;->dragListener:Lcom/alipay/mobile/beehive/photo/view/PhotoView$SimpleDragListener;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;->canDrag:Z

    if-eqz v2, :cond_0

    .line 1297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1299
    if-nez v2, :cond_3

    .line 1300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;->lastX:F

    .line 1301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;->lastY:F

    .line 1302
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;->dragListener:Lcom/alipay/mobile/beehive/photo/view/PhotoView$SimpleDragListener;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$SimpleDragListener;->onDragBegin()V

    :cond_2
    :goto_1
    move v0, v1

    .line 1320
    goto :goto_0

    .line 1303
    :cond_3
    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 1304
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;->canDrag:Z

    goto :goto_1

    .line 1305
    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 1306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;->lastX:F

    sub-float/2addr v2, v3

    .line 1307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;->lastY:F

    sub-float/2addr v3, v4

    .line 1308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;->lastX:F

    .line 1309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;->lastY:F

    .line 1310
    cmpl-float v4, v2, v5

    if-nez v4, :cond_5

    cmpl-float v4, v3, v5

    if-eqz v4, :cond_0

    .line 1313
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;->dragListener:Lcom/alipay/mobile/beehive/photo/view/PhotoView$SimpleDragListener;

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$SimpleDragListener;->onDrag(FF)V

    goto :goto_1

    .line 1314
    :cond_6
    if-ne v2, v1, :cond_2

    .line 1315
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;->dragListener:Lcom/alipay/mobile/beehive/photo/view/PhotoView$SimpleDragListener;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$SimpleDragListener;->onDragEnd()V

    .line 1316
    iput v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;->lastX:F

    .line 1317
    iput v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;->lastY:F

    .line 1318
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;->canDrag:Z

    goto :goto_1
.end method
