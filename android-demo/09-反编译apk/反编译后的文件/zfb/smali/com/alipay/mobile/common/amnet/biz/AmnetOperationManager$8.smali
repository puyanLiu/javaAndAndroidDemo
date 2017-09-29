.class Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$8;
.super Lcom/alipay/mobile/common/transportext/Transport$Asking;
.source "AmnetOperationManager.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

.field final synthetic val$askConnStateCallback:Lcom/alipay/mobile/common/amnet/api/model/AskConnStateCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;Lcom/alipay/mobile/common/amnet/api/model/AskConnStateCallback;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$8;->this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    iput-object p2, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$8;->val$askConnStateCallback:Lcom/alipay/mobile/common/amnet/api/model/AskConnStateCallback;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/Transport$Asking;-><init>()V

    return-void
.end method


# virtual methods
.method public answer(I)V
    .locals 3

    .prologue
    .line 280
    const-string/jumbo v0, "amnet_AmnetOperationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "askConnState callbak state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$8;->val$askConnStateCallback:Lcom/alipay/mobile/common/amnet/api/model/AskConnStateCallback;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/amnet/api/model/AskConnStateCallback;->callback(I)V

    .line 282
    return-void
.end method
