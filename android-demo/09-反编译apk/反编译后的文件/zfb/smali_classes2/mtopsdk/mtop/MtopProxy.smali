.class public Lmtopsdk/mtop/MtopProxy;
.super Lmtopsdk/mtop/MtopProxyBase;
.source "MtopProxy.java"


# instance fields
.field private paramBuilder:Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;

.field private transformer:Lmtopsdk/mtop/transform/MtopTransform;


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/domain/MtopRequest;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0, v0, v0}, Lmtopsdk/mtop/MtopProxy;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopListener;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0, v0, p2}, Lmtopsdk/mtop/MtopProxy;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmtopsdk/mtop/MtopProxyBase;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V

    .line 34
    new-instance v0, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;

    invoke-direct {v0}, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/MtopProxy;->paramBuilder:Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;

    .line 39
    new-instance v0, Lmtopsdk/mtop/transform/MtopTransformImpl;

    invoke-direct {v0}, Lmtopsdk/mtop/transform/MtopTransformImpl;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/MtopProxy;->transformer:Lmtopsdk/mtop/transform/MtopTransform;

    .line 73
    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lmtopsdk/mtop/MtopProxyBase;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V

    .line 34
    new-instance v0, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;

    invoke-direct {v0}, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/MtopProxy;->paramBuilder:Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;

    .line 39
    new-instance v0, Lmtopsdk/mtop/transform/MtopTransformImpl;

    invoke-direct {v0}, Lmtopsdk/mtop/transform/MtopTransformImpl;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/MtopProxy;->transformer:Lmtopsdk/mtop/transform/MtopTransform;

    .line 85
    return-void
.end method


# virtual methods
.method public asyncApiCall()Lmtopsdk/mtop/common/ApiID;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmtopsdk/mtop/MtopProxy;->asyncApiCall(Landroid/os/Handler;)Lmtopsdk/mtop/common/ApiID;

    move-result-object v0

    return-object v0
.end method

.method public asyncApiCall(Landroid/os/Handler;)Lmtopsdk/mtop/common/ApiID;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 172
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lmtopsdk/mtop/util/MtopStatistics;

    invoke-direct {v0}, Lmtopsdk/mtop/util/MtopStatistics;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 174
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0}, Lmtopsdk/mtop/util/MtopStatistics;->onStart()V

    .line 177
    :cond_0
    invoke-virtual {p0}, Lmtopsdk/mtop/MtopProxy;->validateBusinessInit()Lmtopsdk/mtop/util/Result;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Lmtopsdk/mtop/util/Result;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    if-eqz v0, :cond_1

    .line 182
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v2, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lmtopsdk/mtop/util/Result;->getErrCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lmtopsdk/mtop/util/Result;->getErrInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v4, v1}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_0
    invoke-virtual {p0, v0}, Lmtopsdk/mtop/MtopProxy;->handleExceptionCallBack(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 187
    new-instance v0, Lmtopsdk/mtop/common/ApiID;

    invoke-direct {v0, v5, p0}, Lmtopsdk/mtop/common/ApiID;-><init>(Ljava/util/concurrent/Future;Lmtopsdk/mtop/MtopProxy;)V

    .line 201
    :goto_1
    return-object v0

    .line 184
    :cond_1
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v1}, Lmtopsdk/mtop/util/Result;->getErrCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmtopsdk/mtop/util/Result;->getErrInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_2
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxy;->paramBuilder:Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;

    invoke-interface {v0, p0}, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;->buildParams(Lmtopsdk/mtop/MtopProxy;)Ljava/util/Map;

    move-result-object v0

    .line 192
    if-nez v0, :cond_3

    .line 193
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v1, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ANDROID_SYS_GENERATE_MTOP_SIGN_ERROR"

    const-string/jumbo v4, "\u751f\u6210Mtop\u7b7e\u540dsign\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string/jumbo v1, "mtop.mtopProxy.async"

    const v2, 0xfb86

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lmtopsdk/common/util/UTAdapter;->commit(Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    invoke-virtual {p0, v0}, Lmtopsdk/mtop/MtopProxy;->handleExceptionCallBack(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 196
    new-instance v0, Lmtopsdk/mtop/common/ApiID;

    invoke-direct {v0, v5, p0}, Lmtopsdk/mtop/common/ApiID;-><init>(Ljava/util/concurrent/Future;Lmtopsdk/mtop/MtopProxy;)V

    goto :goto_1

    .line 199
    :cond_3
    iget-object v1, p0, Lmtopsdk/mtop/MtopProxy;->transformer:Lmtopsdk/mtop/transform/MtopTransform;

    invoke-interface {v1, p0, v0, p1}, Lmtopsdk/mtop/transform/MtopTransform;->asyncTransform(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;Landroid/os/Handler;)Lmtopsdk/mtop/common/ApiID;

    move-result-object v0

    goto :goto_1
.end method

.method public getParamBuilder()Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxy;->paramBuilder:Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;

    return-object v0
.end method

.method public getTransformer()Lmtopsdk/mtop/transform/MtopTransform;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxy;->transformer:Lmtopsdk/mtop/transform/MtopTransform;

    return-object v0
.end method

.method public setParamBuilder(Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;)V
    .locals 0

    .prologue
    .line 96
    if-eqz p1, :cond_0

    .line 97
    iput-object p1, p0, Lmtopsdk/mtop/MtopProxy;->paramBuilder:Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;

    .line 99
    :cond_0
    return-void
.end method

.method public setTransformer(Lmtopsdk/mtop/transform/MtopTransform;)V
    .locals 0

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 113
    iput-object p1, p0, Lmtopsdk/mtop/MtopProxy;->transformer:Lmtopsdk/mtop/transform/MtopTransform;

    .line 115
    :cond_0
    return-void
.end method

.method public syncApiCall()Lmtopsdk/mtop/domain/MtopResponse;
    .locals 5

    .prologue
    .line 125
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lmtopsdk/mtop/util/MtopStatistics;

    invoke-direct {v0}, Lmtopsdk/mtop/util/MtopStatistics;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 127
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0}, Lmtopsdk/mtop/util/MtopStatistics;->onStart()V

    .line 130
    :cond_0
    invoke-virtual {p0}, Lmtopsdk/mtop/MtopProxy;->validateBusinessInit()Lmtopsdk/mtop/util/Result;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lmtopsdk/mtop/util/Result;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    if-eqz v0, :cond_1

    .line 134
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v2, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lmtopsdk/mtop/util/Result;->getErrCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lmtopsdk/mtop/util/Result;->getErrInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v4, v1}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_0
    invoke-virtual {p0, v0}, Lmtopsdk/mtop/MtopProxy;->handleExceptionCallBack(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 155
    :goto_1
    return-object v0

    .line 136
    :cond_1
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v1}, Lmtopsdk/mtop/util/Result;->getErrCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmtopsdk/mtop/util/Result;->getErrInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxy;->paramBuilder:Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;

    invoke-interface {v0, p0}, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;->buildParams(Lmtopsdk/mtop/MtopProxy;)Ljava/util/Map;

    move-result-object v0

    .line 144
    if-nez v0, :cond_3

    .line 145
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v1, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ANDROID_SYS_GENERATE_MTOP_SIGN_ERROR"

    const-string/jumbo v4, "\u751f\u6210Mtop\u7b7e\u540dsign\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string/jumbo v1, "mtop.mtopProxy.sync"

    const v2, 0xfb86

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lmtopsdk/common/util/UTAdapter;->commit(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 151
    :cond_3
    iget-object v1, p0, Lmtopsdk/mtop/MtopProxy;->transformer:Lmtopsdk/mtop/transform/MtopTransform;

    invoke-interface {v1, p0, v0}, Lmtopsdk/mtop/transform/MtopTransform;->syncTransform(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v1}, Lmtopsdk/mtop/util/MtopStatistics;->onStatSum()V

    .line 154
    iget-object v1, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setMtopStat(Lmtopsdk/mtop/util/MtopStatistics;)V

    goto :goto_1
.end method
