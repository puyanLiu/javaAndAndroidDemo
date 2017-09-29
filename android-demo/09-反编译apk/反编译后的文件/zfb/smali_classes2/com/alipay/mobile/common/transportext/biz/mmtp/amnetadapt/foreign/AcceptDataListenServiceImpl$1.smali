.class Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/foreign/AcceptDataListenServiceImpl$1;
.super Ljava/lang/Object;
.source "AcceptDataListenServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/foreign/AcceptDataListenServiceImpl;

.field final synthetic val$acceptedData:Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/foreign/AcceptDataListenServiceImpl;Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/foreign/AcceptDataListenServiceImpl$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/foreign/AcceptDataListenServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/foreign/AcceptDataListenServiceImpl$1;->val$acceptedData:Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/foreign/AcceptDataListenServiceImpl$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/foreign/AcceptDataListenServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/foreign/AcceptDataListenServiceImpl;->getAcceptDataManager()Lcom/alipay/mobile/common/amnet/api/AcceptDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/foreign/AcceptDataListenServiceImpl$1;->val$acceptedData:Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/amnet/api/AcceptDataManager;->notifyAcceptedData(Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V

    .line 42
    return-void
.end method
