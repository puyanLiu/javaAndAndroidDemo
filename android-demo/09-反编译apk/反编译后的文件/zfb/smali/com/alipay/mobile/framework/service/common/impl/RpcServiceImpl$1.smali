.class Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl$1;
.super Ljava/lang/Object;
.source "RpcServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->access$000(Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;)Lcom/alipay/mobile/common/rpc/RpcFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->setScene(Ljava/lang/String;)V

    .line 104
    return-void
.end method
