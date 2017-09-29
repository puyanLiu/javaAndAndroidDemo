.class Lcom/alipay/mobile/beehive/rpc/RpcSubscriber$2;
.super Ljava/lang/Object;
.source "RpcSubscriber.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;

.field private final synthetic val$event:Lcom/alipay/mobile/beehive/rpc/RpcEvent;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;Lcom/alipay/mobile/beehive/rpc/RpcEvent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber$2;->this$0:Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber$2;->val$event:Lcom/alipay/mobile/beehive/rpc/RpcEvent;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber$2;->this$0:Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber$2;->val$event:Lcom/alipay/mobile/beehive/rpc/RpcEvent;

    iget-object v1, v1, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->rpcTask:Lcom/alipay/mobile/beehive/rpc/RpcTask;

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->access$1(Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;Lcom/alipay/mobile/beehive/rpc/RpcTask;)V

    .line 90
    return-void
.end method
