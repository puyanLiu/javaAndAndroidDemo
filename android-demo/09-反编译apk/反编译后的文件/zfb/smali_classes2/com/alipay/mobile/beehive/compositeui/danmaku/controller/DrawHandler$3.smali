.class Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$3;
.super Ljava/lang/Object;
.source "DrawHandler.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

.field private final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$3;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$3;->val$runnable:Ljava/lang/Runnable;

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDanmakuAdd(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$3;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 544
    return-void
.end method

.method public onDanmakuConfigChanged()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$3;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->access$2(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$3;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->access$6(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$3;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 551
    :cond_0
    return-void
.end method

.method public ready()V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$3;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->access$11(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;)V

    .line 538
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$3;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 539
    return-void
.end method
