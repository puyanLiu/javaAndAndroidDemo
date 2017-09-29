.class Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$1;
.super Ljava/lang/Object;
.source "DrawHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$1;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$1;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->access$0(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;Z)V

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$1;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->access$1(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$1;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->access$1(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$Callback;->prepared()V

    .line 203
    :cond_0
    return-void
.end method
