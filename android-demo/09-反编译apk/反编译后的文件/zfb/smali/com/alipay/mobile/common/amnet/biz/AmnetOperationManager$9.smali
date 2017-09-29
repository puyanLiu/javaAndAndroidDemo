.class Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$9;
.super Ljava/lang/Object;
.source "AmnetOperationManager.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/Transport$Result;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

.field final synthetic val$askConnStateCallback:Lcom/alipay/mobile/common/amnet/api/model/AskConnStateCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;Lcom/alipay/mobile/common/amnet/api/model/AskConnStateCallback;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$9;->this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    iput-object p2, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$9;->val$askConnStateCallback:Lcom/alipay/mobile/common/amnet/api/model/AskConnStateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Z)V
    .locals 2

    .prologue
    .line 289
    if-nez p1, :cond_0

    .line 290
    const-string/jumbo v0, "amnet_AmnetOperationManager"

    const-string/jumbo v1, "askConnState callbak fail"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$9;->val$askConnStateCallback:Lcom/alipay/mobile/common/amnet/api/model/AskConnStateCallback;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/amnet/api/model/AskConnStateCallback;->callback(I)V

    .line 293
    :cond_0
    return-void
.end method
