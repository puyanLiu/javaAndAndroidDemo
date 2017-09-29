.class Lcom/taobao/gcanvas/GCanvasViewMgr$5;
.super Ljava/lang/Object;
.source "GCanvasViewMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/taobao/gcanvas/GCanvasViewMgr;

.field final synthetic val$offsetX:I

.field final synthetic val$offsetY:I


# direct methods
.method constructor <init>(Lcom/taobao/gcanvas/GCanvasViewMgr;II)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$5;->this$0:Lcom/taobao/gcanvas/GCanvasViewMgr;

    iput p2, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$5;->val$offsetX:I

    iput p3, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$5;->val$offsetY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$5;->this$0:Lcom/taobao/gcanvas/GCanvasViewMgr;

    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvasViewMgr;->access$000(Lcom/taobao/gcanvas/GCanvasViewMgr;)Lcom/taobao/gcanvas/viewcontroller/ViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$5;->this$0:Lcom/taobao/gcanvas/GCanvasViewMgr;

    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvasViewMgr;->access$000(Lcom/taobao/gcanvas/GCanvasViewMgr;)Lcom/taobao/gcanvas/viewcontroller/ViewController;

    move-result-object v0

    iget v1, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$5;->val$offsetX:I

    iget v2, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$5;->val$offsetY:I

    invoke-virtual {v0, v1, v2}, Lcom/taobao/gcanvas/viewcontroller/ViewController;->offsetPosition(II)V

    .line 111
    :cond_0
    return-void
.end method
