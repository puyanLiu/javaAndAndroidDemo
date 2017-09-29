.class public Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;
.super Ljava/lang/Object;
.source "MRpcConnection.java"


# static fields
.field private static MRPC_CONNECTION:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection; = null

.field private static final TAG:Ljava/lang/String; = "MRpcConnection"


# instance fields
.field private connectionState:I

.field private currentTargetHost:Ljava/lang/String;

.field private currentTargetPort:Ljava/lang/String;

.field private limitPrompt:Ljava/lang/String;

.field private nextStreamId:I

.field private nextTimeAllowRPC:J

.field private streamMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->streamMap:Ljava/util/Map;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->nextStreamId:I

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->currentTargetHost:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->currentTargetPort:Ljava/lang/String;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->connectionState:I

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->nextTimeAllowRPC:J

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->limitPrompt:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->init()V

    .line 67
    return-void
.end method

.method static synthetic access$002(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;I)I
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->connectionState:I

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->currentTargetHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->currentTargetHost:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->currentTargetPort:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->currentTargetPort:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->processResponse(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;)V

    return-void
.end method

.method static synthetic access$402(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;J)J
    .locals 0

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->nextTimeAllowRPC:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->limitPrompt:Ljava/lang/String;

    return-object p1
.end method

.method private createStream(I)Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;

    invoke-direct {v0, p1, p0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;-><init>(ILcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;)V

    .line 91
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->streamMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->MRPC_CONNECTION:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->MRPC_CONNECTION:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    .line 57
    :goto_0
    return-object v0

    .line 51
    :cond_0
    const-class v1, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->MRPC_CONNECTION:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    if-eqz v0, :cond_1

    .line 53
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->MRPC_CONNECTION:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 56
    :cond_1
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;-><init>()V

    .line 57
    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->MRPC_CONNECTION:Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private handleFailure(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;)V
    .locals 8

    .prologue
    .line 137
    const-string/jumbo v0, "MRpcConnection"

    const-string/jumbo v1, "handleFailure"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->streamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->streamMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;

    .line 140
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->streamMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 142
    new-instance v2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/ErrorResult;

    invoke-direct {v2}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/ErrorResult;-><init>()V

    .line 143
    iget v1, p1, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->resultCode:I

    iput v1, v2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/ErrorResult;->errorCode:I

    .line 144
    iget-object v1, p1, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->resultMsg:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/ErrorResult;->errorMsg:Ljava/lang/String;

    .line 146
    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :try_start_1
    invoke-virtual {v4, v2}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->close(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/ErrorResult;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :catch_0
    move-exception v4

    .line 150
    :try_start_2
    const-string/jumbo v5, "MRpcConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "error message : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method private handleSuccess(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;)V
    .locals 4

    .prologue
    .line 157
    const-string/jumbo v0, "MRpcConnection"

    const-string/jumbo v1, "handleSuccess"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->headers:Ljava/util/Map;

    .line 159
    const-string/jumbo v1, "RpcId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stream no exist,  streamId=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->getStream(I)Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;

    move-result-object v1

    .line 167
    if-nez v1, :cond_1

    .line 168
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stream no exist,  streamId=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_1
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->getReqSize()I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->reqSize:I

    .line 172
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;->receiveResponse(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;)V

    .line 173
    return-void
.end method

.method private init()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection$ReaderListener;-><init>(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;)V

    .line 73
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetHelper;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->addGeneraEventListener(Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;)V

    .line 74
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetHelper;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->addRpcAcceptDataListener(Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V

    .line 75
    return-void
.end method

.method private processResponse(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;)V
    .locals 3

    .prologue
    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->streamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string/jumbo v0, "MRpcConnection"

    const-string/jumbo v1, "There is no stream!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 122
    :cond_0
    if-eqz p1, :cond_1

    .line 123
    const-string/jumbo v0, "MRpcConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " response Message. ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_1
    iget v0, p1, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;->resultCode:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_2

    .line 127
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->handleSuccess(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    const-string/jumbo v1, "MRpcConnection"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 129
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->handleFailure(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcResponse;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public getConnectionState()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->connectionState:I

    return v0
.end method

.method public getCurrentTargetHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->currentTargetHost:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTargetPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->currentTargetPort:Ljava/lang/String;

    return-object v0
.end method

.method public getLimitPrompt()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 282
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->nextTimeAllowRPC:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 283
    const-string/jumbo v0, ""

    .line 293
    :goto_0
    return-object v0

    .line 285
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->nextTimeAllowRPC:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 286
    iput-wide v4, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->nextTimeAllowRPC:J

    .line 287
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->limitPrompt:Ljava/lang/String;

    .line 288
    const-string/jumbo v0, ""

    goto :goto_0

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->limitPrompt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    const-string/jumbo v0, ""

    goto :goto_0

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->limitPrompt:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStream(I)Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->streamMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;

    return-object v0
.end method

.method public declared-synchronized newMRpcStream()Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;
    .locals 3

    .prologue
    const v2, 0x7ffffffe

    .line 79
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->nextStreamId:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->createStream(I)Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 81
    :try_start_1
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->nextStreamId:I

    if-lt v1, v2, :cond_0

    .line 82
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->nextStreamId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_2
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->nextStreamId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->nextStreamId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 81
    :catchall_1
    move-exception v0

    :try_start_3
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->nextStreamId:I

    if-lt v1, v2, :cond_1

    .line 82
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->nextStreamId:I

    .line 84
    :goto_1
    throw v0

    :cond_1
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->nextStreamId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->nextStreamId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public removeStream(I)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->streamMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public sendRequest(Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;)V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;

    invoke-direct {v0}, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;-><init>()V

    .line 98
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;->getDatas()[B

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;->body:[B

    .line 99
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;->header:Ljava/util/Map;

    .line 100
    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;->channel:B

    .line 101
    iget v1, p1, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;->reqSeqId:I

    iput v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;->reqSeqId:I

    .line 102
    iget-boolean v1, p1, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/models/MRpcRequest;->important:Z

    iput-boolean v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;->important:Z

    .line 103
    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetHelper;->post(Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;)V

    .line 104
    return-void
.end method
