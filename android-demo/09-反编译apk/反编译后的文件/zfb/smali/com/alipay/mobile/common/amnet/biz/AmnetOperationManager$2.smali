.class Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$2;
.super Ljava/lang/Object;
.source "AmnetOperationManager.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/Transport$Result;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

.field final synthetic val$amnetLoggerListener:Lcom/alipay/mobile/common/amnet/biz/inner/AmnetLoggerListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;Lcom/alipay/mobile/common/amnet/biz/inner/AmnetLoggerListener;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$2;->this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    iput-object p2, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$2;->val$amnetLoggerListener:Lcom/alipay/mobile/common/amnet/biz/inner/AmnetLoggerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Z)V
    .locals 3

    .prologue
    .line 143
    if-eqz p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$2;->val$amnetLoggerListener:Lcom/alipay/mobile/common/amnet/biz/inner/AmnetLoggerListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetLoggerListener;->listened:Z

    .line 146
    :cond_0
    const-string/jumbo v0, "AmnetOperationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "register  AmnetLoggerListener result=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method
