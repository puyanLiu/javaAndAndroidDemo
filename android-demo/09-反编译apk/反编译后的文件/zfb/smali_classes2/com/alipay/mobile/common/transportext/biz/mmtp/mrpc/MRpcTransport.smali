.class public Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcTransport;
.super Ljava/lang/Object;
.source "MRpcTransport.java"


# instance fields
.field private mMRpcRequest:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;

.field private mRpcStream:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private setStreamTimeout(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;)V
    .locals 3

    .prologue
    .line 59
    iget v0, p1, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;->readTimeout:I

    .line 60
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->getInstance()Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->getConnectionState()I

    move-result v1

    .line 61
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v1, v0

    .line 71
    :goto_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "Operation-Type"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->isSupportAmnetResend(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    add-int/lit16 v1, v1, 0x1388

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcTransport;->mRpcStream:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->setTimeout(I)V

    .line 76
    return-void

    .line 65
    :pswitch_1
    iget v1, p1, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;->connTimeout:I

    iget v2, p1, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;->sslTimeout:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    move v1, v0

    .line 66
    goto :goto_0

    .line 69
    :pswitch_2
    iget v1, p1, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;->sslTimeout:I

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public execute(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;)Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcTransport;->sendRequest(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;)V

    .line 80
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcTransport;->getResponse()Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;

    move-result-object v0

    return-object v0
.end method

.method public getMRpcConneciton()Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->getInstance()Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;
    .locals 4

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcTransport;->getMRpcConneciton()Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->getLimitPrompt()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 89
    const-string/jumbo v2, "Result-Status"

    const-string/jumbo v3, "1002"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string/jumbo v2, "Control"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string/jumbo v0, "Memo"

    const-string/jumbo v2, "\u7cfb\u7edf\u6d41\u91cf\u592a\u5927\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;-><init>()V

    .line 93
    iput-object v1, v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->headers:Ljava/util/Map;

    .line 94
    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->body:[B

    .line 97
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcTransport;->mRpcStream:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->getResponse()Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public getTargetHost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcTransport;->getMRpcConneciton()Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->getCurrentTargetHost()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->getCurrentTargetPort()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public sendRequest(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;)V
    .locals 3

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcTransport;->mMRpcRequest:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;

    .line 41
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcTransport;->getMRpcConneciton()Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->getLimitPrompt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->newMRpcStream()Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcTransport;->mRpcStream:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;

    .line 50
    const-string/jumbo v0, "RpcId"

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcTransport;->mRpcStream:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->getStreamId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcTransport;->mRpcStream:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->getStreamId()I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;->reqSeqId:I

    .line 52
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcTransport;->setStreamTimeout(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;)V

    .line 53
    const-string/jumbo v0, "MRpcTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " rpcid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcTransport;->mRpcStream:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->getStreamId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". operationType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcTransport;->mRpcStream:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->sendRequest(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;)V

    goto :goto_0
.end method
