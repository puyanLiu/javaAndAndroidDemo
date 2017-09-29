.class public Lmtopsdk/mtop/common/NetworkListenerAdapter;
.super Ljava/lang/Object;
.source "NetworkListenerAdapter.java"

# interfaces
.implements Lanetwork/channel/NetworkCallBack$FinishListener;
.implements Lanetwork/channel/NetworkCallBack$ProgressListener;
.implements Lanetwork/channel/NetworkCallBack$ResponseCodeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.NetworkListenerAdapter"


# instance fields
.field public cacheEntity:Lmtopsdk/mtop/cache/CacheEntity;

.field public finishListener:Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

.field private header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public headerListener:Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;

.field private progressEventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lanetwork/channel/NetworkEvent$ProgressEvent;",
            ">;"
        }
    .end annotation
.end field

.field public progressListener:Lmtopsdk/mtop/common/MtopCallback$MtopProgressListener;

.field private proxy:Lmtopsdk/mtop/MtopProxy;

.field private receivedLength:I

.field private resLength:I

.field public stat:Lmtopsdk/mtop/util/MtopStatistics;


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/MtopProxy;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 59
    iput-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->header:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->progressEventMap:Ljava/util/Map;

    .line 69
    iput v1, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->receivedLength:I

    .line 74
    iput v1, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->resLength:I

    .line 81
    iput-object p1, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->proxy:Lmtopsdk/mtop/MtopProxy;

    .line 82
    return-void
.end method

.method private finishMtopStatistics(Lmtopsdk/mtop/util/MtopStatistics;)V
    .locals 2

    .prologue
    .line 244
    if-nez p1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    invoke-virtual {p1}, Lmtopsdk/mtop/util/MtopStatistics;->onEnd()V

    .line 248
    invoke-virtual {p1}, Lmtopsdk/mtop/util/MtopStatistics;->onStatSum()V

    .line 249
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const-string/jumbo v0, "mtopsdk.MtopStatistics"

    invoke-virtual {p1}, Lmtopsdk/mtop/util/MtopStatistics;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSliceData(Ljava/util/Map;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lanetwork/channel/NetworkEvent$ProgressEvent;",
            ">;)[B"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 190
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 191
    :cond_0
    const/4 v0, 0x0

    .line 208
    :goto_0
    return-object v0

    .line 196
    :cond_1
    iget v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->receivedLength:I

    new-array v4, v0, [B

    .line 198
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 199
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanetwork/channel/NetworkEvent$ProgressEvent;

    invoke-interface {v1}, Lanetwork/channel/NetworkEvent$ProgressEvent;->d()[B

    move-result-object v1

    if-eqz v1, :cond_2

    .line 200
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/NetworkEvent$ProgressEvent;

    invoke-interface {v0}, Lanetwork/channel/NetworkEvent$ProgressEvent;->d()[B

    move-result-object v0

    .line 203
    array-length v1, v0

    add-int/2addr v1, v2

    iget v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->receivedLength:I

    if-gt v1, v6, :cond_4

    .line 204
    array-length v1, v0

    invoke-static {v0, v3, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    array-length v0, v0

    add-int/2addr v0, v2

    :goto_2
    move v2, v0

    .line 207
    goto :goto_1

    :cond_3
    move-object v0, v4

    .line 208
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method private parseResLength()I
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->header:Ljava/util/Map;

    const-string/jumbo v1, "content-length"

    invoke-static {v0, v1}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->header:Ljava/util/Map;

    const-string/jumbo v1, "m-bin-length"

    invoke-static {v0, v1}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->header:Ljava/util/Map;

    const-string/jumbo v1, "Mres-length"

    invoke-static {v0, v1}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    :cond_0
    const/4 v1, 0x0

    .line 227
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 235
    :goto_0
    return v0

    .line 231
    :catch_0
    move-exception v0

    const-string/jumbo v0, "mtopsdk.NetworkListenerAdapter"

    const-string/jumbo v2, "parse Response HeaderField ResLength error "

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onDataReceived(Lanetwork/channel/NetworkEvent$ProgressEvent;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 102
    if-eqz p1, :cond_2

    .line 103
    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$ProgressEvent;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->progressEventMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->receivedLength:I

    .line 107
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->progressEventMap:Ljava/util/Map;

    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$ProgressEvent;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->receivedLength:I

    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$ProgressEvent;->b()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->receivedLength:I

    .line 109
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const-string/jumbo v0, "mtopsdk.NetworkListenerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "index="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$ProgressEvent;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";byte[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$ProgressEvent;->d()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->progressListener:Lmtopsdk/mtop/common/MtopCallback$MtopProgressListener;

    if-eqz v0, :cond_2

    .line 113
    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$ProgressEvent;->c()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$ProgressEvent;->c()I

    move-result v0

    .line 114
    :goto_0
    iget-object v1, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->progressListener:Lmtopsdk/mtop/common/MtopCallback$MtopProgressListener;

    new-instance v2, Lmtopsdk/mtop/common/MtopProgressEvent;

    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$ProgressEvent;->a()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->receivedLength:I

    invoke-direct {v2, v3, v4, v0}, Lmtopsdk/mtop/common/MtopProgressEvent;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2, p2}, Lmtopsdk/mtop/common/MtopCallback$MtopProgressListener;->onDataReceived(Lmtopsdk/mtop/common/MtopProgressEvent;Ljava/lang/Object;)V

    .line 117
    :cond_2
    return-void

    .line 113
    :cond_3
    iget v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->resLength:I

    goto :goto_0
.end method

.method public onFinished(Lanetwork/channel/NetworkEvent$FinishEvent;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 123
    iget-object v1, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    if-nez v1, :cond_0

    .line 124
    new-instance v1, Lmtopsdk/mtop/util/MtopStatistics;

    invoke-direct {v1}, Lmtopsdk/mtop/util/MtopStatistics;-><init>()V

    iput-object v1, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 126
    :cond_0
    iget-object v1, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v1}, Lmtopsdk/mtop/util/MtopStatistics;->onNetSendEnd()V

    .line 127
    if-eqz p1, :cond_1

    .line 128
    iget-object v1, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$FinishEvent;->b()Lanetwork/channel/statist/StatisticData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/util/MtopStatistics;->onNetStat(Lanetwork/channel/statist/StatisticData;)V

    .line 131
    :cond_1
    iget-object v1, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->finishListener:Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    if-nez v1, :cond_3

    .line 132
    const-string/jumbo v0, "mtopsdk.NetworkListenerAdapter"

    const-string/jumbo v1, "[onFinished]finishListener is null"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_2
    :goto_0
    return-void

    .line 135
    :cond_3
    iget-object v1, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->proxy:Lmtopsdk/mtop/MtopProxy;

    if-nez v1, :cond_4

    .line 136
    const-string/jumbo v0, "mtopsdk.NetworkListenerAdapter"

    const-string/jumbo v1, "[onFinished]mtopProxy is null"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_4
    new-instance v1, Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v2, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->proxy:Lmtopsdk/mtop/MtopProxy;

    invoke-virtual {v2}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->proxy:Lmtopsdk/mtop/MtopProxy;

    invoke-virtual {v3}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v3

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, v0}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/domain/MtopResponse;->setMtopStat(Lmtopsdk/mtop/util/MtopStatistics;)V

    .line 142
    new-instance v2, Lmtopsdk/mtop/common/MtopFinishEvent;

    invoke-direct {v2, v1}, Lmtopsdk/mtop/common/MtopFinishEvent;-><init>(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 144
    if-nez p1, :cond_5

    .line 145
    const-string/jumbo v0, "ANDROID_SYS_NETWORK_ERROR"

    invoke-virtual {v1, v0}, Lmtopsdk/mtop/domain/MtopResponse;->setRetCode(Ljava/lang/String;)V

    .line 146
    const-string/jumbo v0, "\u7f51\u7edc\u9519\u8bef"

    invoke-virtual {v1, v0}, Lmtopsdk/mtop/domain/MtopResponse;->setRetMsg(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-direct {p0, v0}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->finishMtopStatistics(Lmtopsdk/mtop/util/MtopStatistics;)V

    .line 149
    :try_start_0
    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->finishListener:Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    invoke-interface {v0, v2, p2}, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;->onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    const-string/jumbo v1, "mtopsdk.NetworkListenerAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[onFinished]finishListener error ---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_5
    iget-object v3, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v3}, Lmtopsdk/mtop/util/MtopStatistics;->onParseResponseDataStart()V

    .line 158
    iget-object v3, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->cacheEntity:Lmtopsdk/mtop/cache/CacheEntity;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->cacheEntity:Lmtopsdk/mtop/cache/CacheEntity;

    invoke-virtual {v3}, Lmtopsdk/mtop/cache/CacheEntity;->getResponseSource()Lmtopsdk/mtop/domain/ResponseSource;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 159
    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->cacheEntity:Lmtopsdk/mtop/cache/CacheEntity;

    invoke-virtual {v0}, Lmtopsdk/mtop/cache/CacheEntity;->getResponseSource()Lmtopsdk/mtop/domain/ResponseSource;

    move-result-object v0

    iget-object v0, v0, Lmtopsdk/mtop/domain/ResponseSource;->cacheResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 161
    :cond_6
    iget-object v3, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->proxy:Lmtopsdk/mtop/MtopProxy;

    new-instance v4, Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;

    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$FinishEvent;->a()I

    move-result v5

    iget-object v6, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->header:Ljava/util/Map;

    iget-object v7, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->progressEventMap:Ljava/util/Map;

    invoke-direct {p0, v7}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->handleSliceData(Ljava/util/Map;)[B

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;-><init>(ILjava/util/Map;[B)V

    invoke-static {v1, v0, v3, v4}, Lmtopsdk/mtop/common/MtopNetworkResultParser;->parseNetworkRlt(Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/MtopProxy;Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    iput-object v0, v2, Lmtopsdk/mtop/common/MtopFinishEvent;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 163
    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0}, Lmtopsdk/mtop/util/MtopStatistics;->onParseResponseDataEnd()V

    .line 165
    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-direct {p0, v0}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->finishMtopStatistics(Lmtopsdk/mtop/util/MtopStatistics;)V

    .line 168
    :try_start_1
    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->finishListener:Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    invoke-interface {v0, v2, p2}, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;->onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    :goto_1
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->cacheEntity:Lmtopsdk/mtop/cache/CacheEntity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->cacheEntity:Lmtopsdk/mtop/cache/CacheEntity;

    invoke-virtual {v0}, Lmtopsdk/mtop/cache/CacheEntity;->isApiCacheSwitchOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->cacheEntity:Lmtopsdk/mtop/cache/CacheEntity;

    invoke-virtual {v0}, Lmtopsdk/mtop/cache/CacheEntity;->getResponseSource()Lmtopsdk/mtop/domain/ResponseSource;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/ResponseSource;->getCacheManager()Lmtopsdk/mtop/cache/CacheManager;

    move-result-object v2

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Lmtopsdk/mtop/cache/CacheManager;->isNeedWriteCache(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lmtopsdk/mtop/common/MtopNetworkResultParser;->cloneOriginMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/domain/MtopResponse;->setHeaderFields(Ljava/util/Map;)V

    .line 178
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/ResponseSource;->getCacheManager()Lmtopsdk/mtop/cache/CacheManager;

    move-result-object v2

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/ResponseSource;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/ResponseSource;->getCacheBlock()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0, v1}, Lmtopsdk/mtop/cache/CacheManager;->putCache(Ljava/lang/String;Ljava/lang/String;Lmtopsdk/mtop/domain/MtopResponse;)Z

    goto/16 :goto_0

    .line 169
    :catch_1
    move-exception v0

    .line 170
    const-string/jumbo v2, "mtopsdk.NetworkListenerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[onFinished]finishListener error ---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onResponseCode(ILjava/util/Map;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 87
    iput-object p2, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->header:Ljava/util/Map;

    .line 88
    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->headerListener:Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->headerListener:Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;

    new-instance v1, Lmtopsdk/mtop/common/MtopHeaderEvent;

    invoke-direct {v1, p1, p2}, Lmtopsdk/mtop/common/MtopHeaderEvent;-><init>(ILjava/util/Map;)V

    invoke-interface {v0, v1, p3}, Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;->onHeader(Lmtopsdk/mtop/common/MtopHeaderEvent;Ljava/lang/Object;)V

    .line 90
    invoke-direct {p0}, Lmtopsdk/mtop/common/NetworkListenerAdapter;->parseResLength()I

    move-result v0

    iput v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->resLength:I

    .line 91
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string/jumbo v0, "mtopsdk.NetworkListenerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "responsecode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; response headers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
