.class Lcom/taobao/gcanvas/GCanvasRenderer$1;
.super Ljava/lang/Object;
.source "GCanvasRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/taobao/gcanvas/GCanvasRenderer;


# direct methods
.method constructor <init>(Lcom/taobao/gcanvas/GCanvasRenderer;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/taobao/gcanvas/GCanvasRenderer$1;->this$0:Lcom/taobao/gcanvas/GCanvasRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasRenderer$1;->this$0:Lcom/taobao/gcanvas/GCanvasRenderer;

    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvasRenderer;->access$000(Lcom/taobao/gcanvas/GCanvasRenderer;)Lcom/taobao/gcanvas/GCanvasView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasView;->onSurfaceViewReady()V

    .line 220
    return-void
.end method
