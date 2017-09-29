.class Lcom/alipay/mobile/beehive/rpc/RpcSubscriber$1;
.super Ljava/lang/Object;
.source "RpcSubscriber.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;

.field private final synthetic val$event:Lcom/alipay/mobile/beehive/rpc/RpcEvent;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;Lcom/alipay/mobile/beehive/rpc/RpcEvent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber$1;->this$0:Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber$1;->val$event:Lcom/alipay/mobile/beehive/rpc/RpcEvent;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber$1;->this$0:Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;

    const-string/jumbo v1, "rpc_cancel"

    iget-object v2, p0, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber$1;->val$event:Lcom/alipay/mobile/beehive/rpc/RpcEvent;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;->access$0(Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;Ljava/lang/String;Lcom/alipay/mobile/beehive/rpc/RpcEvent;)V

    .line 77
    return-void
.end method
