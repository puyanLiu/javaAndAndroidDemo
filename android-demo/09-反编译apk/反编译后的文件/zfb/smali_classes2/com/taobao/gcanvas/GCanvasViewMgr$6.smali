.class Lcom/taobao/gcanvas/GCanvasViewMgr$6;
.super Ljava/lang/Object;
.source "GCanvasViewMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/taobao/gcanvas/GCanvasViewMgr;

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$sem:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/taobao/gcanvas/GCanvasViewMgr;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$6;->this$0:Lcom/taobao/gcanvas/GCanvasViewMgr;

    iput-object p2, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$6;->val$runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$6;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$6;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 122
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$6;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 123
    return-void
.end method
