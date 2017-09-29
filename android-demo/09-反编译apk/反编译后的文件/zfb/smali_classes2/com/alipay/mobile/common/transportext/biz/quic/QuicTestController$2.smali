.class Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$2;
.super Ljava/util/TimerTask;
.source "QuicTestController.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$2;->this$0:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$2;->this$0:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->access$100(Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$2;->this$0:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->access$100(Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$2;->this$0:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->access$100(Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 176
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "futureTask cancel."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method
