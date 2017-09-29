.class Lcom/alipay/mobile/beehive/rpc/RpcRunner$1;
.super Ljava/lang/Object;
.source "RpcRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/rpc/RpcRunner;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/rpc/RpcRunner;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/rpc/RpcRunner$1;->this$0:Lcom/alipay/mobile/beehive/rpc/RpcRunner;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcRunner$1;->this$0:Lcom/alipay/mobile/beehive/rpc/RpcRunner;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/rpc/RpcRunner$1;->this$0:Lcom/alipay/mobile/beehive/rpc/RpcRunner;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->access$0(Lcom/alipay/mobile/beehive/rpc/RpcRunner;)Lcom/alipay/mobile/beehive/rpc/RpcTask;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/rpc/RpcRunner;->access$1(Lcom/alipay/mobile/beehive/rpc/RpcRunner;Lcom/alipay/mobile/beehive/rpc/RpcTask;)V

    .line 113
    return-void
.end method
