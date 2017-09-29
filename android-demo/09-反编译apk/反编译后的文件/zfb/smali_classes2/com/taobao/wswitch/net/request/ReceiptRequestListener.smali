.class Lcom/taobao/wswitch/net/request/ReceiptRequestListener;
.super Lmtopsdk/mtop/common/DefaultMtopCallback;
.source "ConfigReceiptRequest.java"


# instance fields
.field private receiptInfo:Lcom/taobao/wswitch/model/ReceiptInfo;


# direct methods
.method public constructor <init>(Lcom/taobao/wswitch/model/ReceiptInfo;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lmtopsdk/mtop/common/DefaultMtopCallback;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/taobao/wswitch/net/request/ReceiptRequestListener;->receiptInfo:Lcom/taobao/wswitch/model/ReceiptInfo;

    .line 73
    return-void
.end method


# virtual methods
.method public onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lmtopsdk/mtop/common/DefaultMtopCallback;->onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V

    .line 78
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    if-nez v0, :cond_1

    .line 79
    :cond_0
    const-string/jumbo v0, "ConfigContainer"

    const-string/jumbo v1, "invalid MtopFinishEvent or MtopResponse "

    invoke-static {v0, v1}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string/jumbo v0, "ConfigContainer"

    const-string/jumbo v1, "XcmdReceiptRequest onFinished"

    invoke-static {v0, v1}, Lcom/taobao/wswitch/util/LogUtil;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    const-string/jumbo v0, "ConfigContainer"

    const-string/jumbo v1, "xcmd detail receipt success!"

    invoke-static {v0, v1}, Lcom/taobao/wswitch/util/LogUtil;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_2
    const-string/jumbo v1, "ConfigContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "xcmd result receipt fail,detail:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/wswitch/util/LogUtil;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/taobao/wswitch/net/request/ReceiptRequestListener;->receiptInfo:Lcom/taobao/wswitch/model/ReceiptInfo;

    invoke-static {v0}, Lcom/taobao/wswitch/util/ReceiptUtil;->addReceipt(Lcom/taobao/wswitch/model/ReceiptInfo;)V

    goto :goto_0
.end method
