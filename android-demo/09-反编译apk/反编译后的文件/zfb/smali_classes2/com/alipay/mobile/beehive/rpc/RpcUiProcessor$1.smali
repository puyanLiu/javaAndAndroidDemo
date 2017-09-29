.class Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor$1;
.super Ljava/lang/Object;
.source "RpcUiProcessor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;

.field private final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor$1;->this$0:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor$1;->val$r:Ljava/lang/Runnable;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 160
    return-void
.end method
