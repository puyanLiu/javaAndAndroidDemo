.class Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$6;
.super Ljava/lang/Object;
.source "AmnetOperationManager.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/Transport$Result;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

.field final synthetic val$altering:Lcom/alipay/mobile/common/transportext/Transport$Altering;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;Lcom/alipay/mobile/common/transportext/Transport$Altering;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$6;->this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    iput-object p2, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$6;->val$altering:Lcom/alipay/mobile/common/transportext/Transport$Altering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Z)V
    .locals 3

    .prologue
    .line 232
    const-string/jumbo v1, "AmnetOperationManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyAppEvent. result=["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] status=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$6;->val$altering:Lcom/alipay/mobile/common/transportext/Transport$Altering;

    iget v2, v2, Lcom/alipay/mobile/common/transportext/Transport$Altering;->status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] infMajor=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$6;->val$altering:Lcom/alipay/mobile/common/transportext/Transport$Altering;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/Transport$Altering;->infMajor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]  infMinor=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$6;->val$altering:Lcom/alipay/mobile/common/transportext/Transport$Altering;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/Transport$Altering;->infMinor:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$6;->val$altering:Lcom/alipay/mobile/common/transportext/Transport$Altering;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/Transport$Altering;->infMinor:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void

    .line 232
    :cond_0
    const-string/jumbo v0, " no exist"

    goto :goto_0
.end method
