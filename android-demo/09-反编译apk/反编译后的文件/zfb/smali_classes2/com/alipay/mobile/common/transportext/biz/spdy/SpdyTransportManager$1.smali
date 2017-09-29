.class Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager$1;
.super Ljava/lang/Object;
.source "SpdyTransportManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;

.field final synthetic val$androidSpdyHttpClient:Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;

    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager$1;->val$androidSpdyHttpClient:Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;->access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager$1;->val$androidSpdyHttpClient:Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->getBgExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->asynPreConnect(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 59
    return-void
.end method
