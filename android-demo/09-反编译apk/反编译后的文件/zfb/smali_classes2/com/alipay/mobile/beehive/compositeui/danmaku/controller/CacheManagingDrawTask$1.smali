.class Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$1;
.super Ljava/lang/Object;
.source "CacheManagingDrawTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$1;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$1;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mTaskListener:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;->onDanmakuConfigChanged()V

    .line 923
    return-void
.end method
