.class Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$3;
.super Ljava/lang/Object;
.source "AmnetOperationManager.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/Transport$Result;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

.field final synthetic val$amnetResult:Lcom/alipay/mobile/common/amnet/api/AmnetResult;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;Lcom/alipay/mobile/common/amnet/api/AmnetResult;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$3;->this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    iput-object p2, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$3;->val$amnetResult:Lcom/alipay/mobile/common/amnet/api/AmnetResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Z)V
    .locals 3

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$3;->this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->access$002(Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;Z)Z

    .line 158
    invoke-static {}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver;->start()V

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$3;->val$amnetResult:Lcom/alipay/mobile/common/amnet/api/AmnetResult;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/amnet/api/AmnetResult;->notifyResult(Z)V

    .line 163
    const-string/jumbo v0, "AmnetOperationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Connection result=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$3;->this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->access$002(Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;Z)Z

    goto :goto_0
.end method
