.class Lcom/taobao/gcanvas/GCanvasViewMgr$3;
.super Ljava/lang/Object;
.source "GCanvasViewMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/taobao/gcanvas/GCanvasViewMgr;


# direct methods
.method constructor <init>(Lcom/taobao/gcanvas/GCanvasViewMgr;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$3;->this$0:Lcom/taobao/gcanvas/GCanvasViewMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$3;->this$0:Lcom/taobao/gcanvas/GCanvasViewMgr;

    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvasViewMgr;->access$000(Lcom/taobao/gcanvas/GCanvasViewMgr;)Lcom/taobao/gcanvas/viewcontroller/ViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/gcanvas/viewcontroller/ViewController;->preUninit()V

    .line 84
    return-void
.end method
