.class Lcom/taobao/gcanvas/GCanvas$3;
.super Ljava/lang/Object;
.source "GCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/taobao/gcanvas/GCanvas;

.field final synthetic val$sem:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/taobao/gcanvas/GCanvas;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lcom/taobao/gcanvas/GCanvas$3;->this$0:Lcom/taobao/gcanvas/GCanvas;

    iput-object p2, p0, Lcom/taobao/gcanvas/GCanvas$3;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 655
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas$3;->this$0:Lcom/taobao/gcanvas/GCanvas;

    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvas;->access$000(Lcom/taobao/gcanvas/GCanvas;)Lcom/taobao/gcanvas/GCanvasWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 656
    const-string/jumbo v1, "about:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas$3;->this$0:Lcom/taobao/gcanvas/GCanvas;

    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvas;->access$000(Lcom/taobao/gcanvas/GCanvas;)Lcom/taobao/gcanvas/GCanvasWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvasWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 657
    :cond_0
    const-string/jumbo v1, "CANVAS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Original URL:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/taobao/gcanvas/GCanvas$3;->this$0:Lcom/taobao/gcanvas/GCanvas;

    invoke-static {v3}, Lcom/taobao/gcanvas/GCanvas;->access$000(Lcom/taobao/gcanvas/GCanvas;)Lcom/taobao/gcanvas/GCanvasWebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/gcanvas/GCanvasWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string/jumbo v1, "CANVAS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "URL:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/taobao/gcanvas/GCanvas$3;->this$0:Lcom/taobao/gcanvas/GCanvas;

    invoke-static {v3}, Lcom/taobao/gcanvas/GCanvas;->access$000(Lcom/taobao/gcanvas/GCanvas;)Lcom/taobao/gcanvas/GCanvasWebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/gcanvas/GCanvasWebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object v1, p0, Lcom/taobao/gcanvas/GCanvas$3;->this$0:Lcom/taobao/gcanvas/GCanvas;

    invoke-virtual {v1, v0}, Lcom/taobao/gcanvas/GCanvas;->parseURL(Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvas$3;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 661
    return-void
.end method
