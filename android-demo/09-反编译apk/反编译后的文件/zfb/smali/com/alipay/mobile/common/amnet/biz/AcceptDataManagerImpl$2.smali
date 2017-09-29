.class Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$2;
.super Ljava/lang/Object;
.source "AcceptDataManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;

.field final synthetic val$acceptedData:Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$2;->this$0:Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;

    iput-object p2, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$2;->val$acceptedData:Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$2;->this$0:Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->access$000(Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;)Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$2;->val$acceptedData:Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;

    iget-byte v1, v1, Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;->channel:B

    invoke-static {v1}, Lcom/alipay/mobile/common/amnet/api/model/ChannelType;->isRpc(B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#rpc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$2;->val$acceptedData:Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;

    iget-byte v1, v1, Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;->channel:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$2;->this$0:Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;

    iget-object v1, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$2;->val$acceptedData:Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->access$100(Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V

    .line 110
    return-void

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$2;->val$acceptedData:Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;

    iget-byte v1, v1, Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;->channel:B

    invoke-static {v1}, Lcom/alipay/mobile/common/amnet/api/model/ChannelType;->isSync(B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#sync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
