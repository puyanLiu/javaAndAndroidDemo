.class Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor$2;
.super Ljava/lang/Object;
.source "ResultActionProcessor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic val$action:Lcom/alipay/mobile/beehive/rpc/model/ResultAction;

.field private final synthetic val$rr:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Lcom/alipay/mobile/beehive/rpc/model/ResultAction;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor$2;->val$rr:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor$2;->val$action:Lcom/alipay/mobile/beehive/rpc/model/ResultAction;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor$2;->val$rr:Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor$2;->val$action:Lcom/alipay/mobile/beehive/rpc/model/ResultAction;

    const-string/jumbo v2, "subClick"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor;->access$0(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Lcom/alipay/mobile/beehive/rpc/model/ResultAction;Ljava/lang/String;)V

    .line 183
    return-void
.end method
