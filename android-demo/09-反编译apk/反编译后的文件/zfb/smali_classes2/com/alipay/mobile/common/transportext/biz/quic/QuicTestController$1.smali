.class Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$1;
.super Ljava/lang/Object;
.source "QuicTestController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->goTest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->access$002(Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;Z)Z

    .line 147
    const/4 v0, 0x0

    return-object v0

    .line 144
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->access$002(Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;Z)Z

    throw v0
.end method
