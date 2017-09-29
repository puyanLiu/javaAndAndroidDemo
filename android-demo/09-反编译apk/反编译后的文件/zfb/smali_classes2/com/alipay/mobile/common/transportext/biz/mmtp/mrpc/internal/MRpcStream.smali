.class public Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;
.super Ljava/lang/Object;
.source "MRpcStream.java"


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x2710


# instance fields
.field private errorResult:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/ErrorResult;

.field private mMRpcConnection:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

.field private mMRpcRequest:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;

.field private mRpcResponse:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;

.field private reqSize:I

.field private streamId:I

.field private timeout:I


# direct methods
.method public constructor <init>(ILcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->errorResult:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/ErrorResult;

    .line 37
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->mMRpcConnection:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    .line 38
    iput p1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->streamId:I

    .line 39
    return-void
.end method

.method private notifyAmnetRespResult(I)V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->mMRpcRequest:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lcom/alipay/mobile/common/amnet/api/model/ResultFeedback;

    invoke-direct {v0}, Lcom/alipay/mobile/common/amnet/api/model/ResultFeedback;-><init>()V

    .line 85
    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lcom/alipay/mobile/common/amnet/api/model/ResultFeedback;->id:J

    .line 86
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->mMRpcRequest:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;

    iget v1, v1, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;->reqSeqId:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/alipay/mobile/common/amnet/api/model/ResultFeedback;->receipt:J

    .line 87
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->errorResult:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/ErrorResult;

    if-eqz v1, :cond_1

    .line 88
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/alipay/mobile/common/amnet/api/model/ResultFeedback;->duration:J

    .line 92
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetHelper;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->notifyResultFeedback(Lcom/alipay/mobile/common/amnet/api/model/ResultFeedback;)V

    .line 94
    :cond_0
    return-void

    .line 90
    :cond_1
    int-to-long v1, p1

    iput-wide v1, v0, Lcom/alipay/mobile/common/amnet/api/model/ResultFeedback;->duration:J

    goto :goto_0
.end method


# virtual methods
.method close(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/ErrorResult;)V
    .locals 1

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->errorResult:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/ErrorResult;

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 114
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReqSize()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->reqSize:I

    return v0
.end method

.method public declared-synchronized getResponse()Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;
    .locals 4

    .prologue
    .line 54
    monitor-enter p0

    const/16 v0, 0x2710

    .line 55
    :try_start_0
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->timeout:I

    if-lez v1, :cond_3

    .line 56
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->timeout:I

    move v1, v0

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->mRpcResponse:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->errorResult:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/ErrorResult;

    if-nez v0, :cond_0

    .line 59
    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->mRpcResponse:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->mRpcResponse:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object v0

    .line 66
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->errorResult:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/ErrorResult;

    if-eqz v0, :cond_2

    .line 67
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "errorCode=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->errorResult:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/ErrorResult;

    iget v3, v3, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/ErrorResult;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] errorMessage=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->errorResult:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/ErrorResult;

    iget-object v3, v3, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/ErrorResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->notifyAmnetRespResult(I)V

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    :try_start_3
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 77
    invoke-virtual {v1, v0}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 78
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 54
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 69
    :cond_2
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stream read timeout!  timeout=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public getStreamId()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->streamId:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->timeout:I

    return v0
.end method

.method receiveResponse(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;)V
    .locals 2

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->mRpcResponse:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->mMRpcConnection:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->streamId:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->removeStream(I)V

    .line 107
    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendRequest(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;)V
    .locals 1

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->mMRpcRequest:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->mMRpcConnection:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->sendRequest(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;)V

    .line 44
    return-void
.end method

.method public setReqSize(I)V
    .locals 0

    .prologue
    .line 138
    iput p1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->reqSize:I

    .line 139
    return-void
.end method

.method public setStreamId(I)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->streamId:I

    .line 131
    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->timeout:I

    .line 119
    return-void
.end method
