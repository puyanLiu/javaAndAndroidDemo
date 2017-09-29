.class Lcom/taobao/gcanvas/GCanvasViewMgr$4;
.super Ljava/lang/Object;
.source "GCanvasViewMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/taobao/gcanvas/GCanvasViewMgr;

.field final synthetic val$height:I

.field final synthetic val$offsetX:I

.field final synthetic val$offsetY:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/taobao/gcanvas/GCanvasViewMgr;IIII)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$4;->this$0:Lcom/taobao/gcanvas/GCanvasViewMgr;

    iput p2, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$4;->val$offsetX:I

    iput p3, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$4;->val$offsetY:I

    iput p4, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$4;->val$width:I

    iput p5, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$4;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$4;->this$0:Lcom/taobao/gcanvas/GCanvasViewMgr;

    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvasViewMgr;->access$000(Lcom/taobao/gcanvas/GCanvasViewMgr;)Lcom/taobao/gcanvas/viewcontroller/ViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    const-string/jumbo v0, "CANVAS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setPosition, offsetX:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$4;->val$offsetX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", offsetY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$4;->val$offsetY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$4;->val$width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$4;->val$height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$4;->this$0:Lcom/taobao/gcanvas/GCanvasViewMgr;

    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvasViewMgr;->access$000(Lcom/taobao/gcanvas/GCanvasViewMgr;)Lcom/taobao/gcanvas/viewcontroller/ViewController;

    move-result-object v0

    iget v1, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$4;->val$offsetX:I

    iget v2, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$4;->val$offsetY:I

    iget v3, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$4;->val$width:I

    iget v4, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$4;->val$height:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/gcanvas/viewcontroller/ViewController;->setPosition(IIII)V

    .line 98
    :cond_0
    return-void
.end method
