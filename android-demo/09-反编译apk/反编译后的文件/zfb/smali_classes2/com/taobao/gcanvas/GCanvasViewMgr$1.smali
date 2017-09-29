.class Lcom/taobao/gcanvas/GCanvasViewMgr$1;
.super Ljava/lang/Object;
.source "GCanvasViewMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/taobao/gcanvas/GCanvasViewMgr;

.field final synthetic val$viewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;


# direct methods
.method constructor <init>(Lcom/taobao/gcanvas/GCanvasViewMgr;Lcom/taobao/gcanvas/GCanvas$ViewMode;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$1;->this$0:Lcom/taobao/gcanvas/GCanvasViewMgr;

    iput-object p2, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$1;->val$viewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$1;->this$0:Lcom/taobao/gcanvas/GCanvasViewMgr;

    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$1;->val$viewMode:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    invoke-virtual {v0, v1}, Lcom/taobao/gcanvas/GCanvasViewMgr;->initViews(Lcom/taobao/gcanvas/GCanvas$ViewMode;)V

    .line 66
    return-void
.end method
