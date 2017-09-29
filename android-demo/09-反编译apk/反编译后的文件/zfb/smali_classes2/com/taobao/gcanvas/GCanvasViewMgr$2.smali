.class Lcom/taobao/gcanvas/GCanvasViewMgr$2;
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
    .line 71
    iput-object p1, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$2;->this$0:Lcom/taobao/gcanvas/GCanvasViewMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasViewMgr$2;->this$0:Lcom/taobao/gcanvas/GCanvasViewMgr;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasViewMgr;->uninitViews()V

    .line 75
    return-void
.end method
