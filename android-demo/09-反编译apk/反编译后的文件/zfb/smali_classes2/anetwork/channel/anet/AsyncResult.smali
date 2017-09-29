.class public Lanetwork/channel/anet/AsyncResult;
.super Lanetwork/channel/anet/ACallback;
.source "AsyncResult.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanetwork/channel/anet/ACallback;",
        "Ljava/util/concurrent/Future",
        "<",
        "Lanetwork/channel/Response;",
        ">;"
    }
.end annotation


# instance fields
.field protected m:Ljava/util/concurrent/CountDownLatch;

.field protected volatile n:Z

.field protected volatile o:Z


# direct methods
.method public constructor <init>(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/statist/Repeater;Lanetwork/channel/statist/Statistics;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Lanetwork/channel/anet/ACallback;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lanetwork/channel/anet/AsyncResult;->m:Ljava/util/concurrent/CountDownLatch;

    .line 31
    iput-boolean v2, p0, Lanetwork/channel/anet/AsyncResult;->n:Z

    .line 32
    iput-boolean v2, p0, Lanetwork/channel/anet/AsyncResult;->o:Z

    .line 39
    iput-object p1, p0, Lanetwork/channel/anet/AsyncResult;->c:Lanetwork/channel/entity/RequestConfig;

    .line 40
    iput-object p3, p0, Lanetwork/channel/anet/AsyncResult;->d:Lanetwork/channel/statist/Statistics;

    .line 41
    iput-object p2, p0, Lanetwork/channel/anet/AsyncResult;->e:Lanetwork/channel/statist/Repeater;

    .line 42
    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lanetwork/channel/Response;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    const-string/jumbo v1, "NOT SUPPORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lanetwork/channel/anet/AsyncResult;->o:Z

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanetwork/channel/anet/AsyncResult;->o:Z

    .line 137
    iget-object v0, p0, Lanetwork/channel/anet/AsyncResult;->m:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0
.end method

.method public a(III[B)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public a(ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 129
    return-void
.end method

.method public a(Lorg/android/spdy/SpdyStatusCode;)V
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lanetwork/channel/anet/AsyncResult;->o:Z

    if-eqz v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanetwork/channel/anet/AsyncResult;->o:Z

    .line 146
    iget-object v0, p0, Lanetwork/channel/anet/AsyncResult;->m:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 106
    iget-boolean v0, p0, Lanetwork/channel/anet/AsyncResult;->o:Z

    if-eqz v0, :cond_0

    .line 107
    const-string/jumbo v0, "ANet.AsyncResult"

    const-string/jumbo v1, "task has done,no need retry"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-super {p0}, Lanetwork/channel/anet/ACallback;->b()V

    .line 111
    iget-object v0, p0, Lanetwork/channel/anet/AsyncResult;->c:Lanetwork/channel/entity/RequestConfig;

    iget-object v1, p0, Lanetwork/channel/anet/AsyncResult;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->n()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lanetwork/channel/entity/RequestConfig;->b(I)V

    .line 112
    iget-object v0, p0, Lanetwork/channel/anet/AsyncResult;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-static {v0, p0}, Lanetwork/channel/anet/AEngine;->b(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/anet/AsyncResult;)Lanetwork/channel/anet/AsyncResult;

    .line 113
    iget-object v0, p0, Lanetwork/channel/anet/AsyncResult;->d:Lanetwork/channel/statist/Statistics;

    invoke-virtual {v0}, Lanetwork/channel/statist/Statistics;->f()Lanetwork/channel/statist/StatisticData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lanetwork/channel/anet/AsyncResult;->d:Lanetwork/channel/statist/Statistics;

    invoke-virtual {v0}, Lanetwork/channel/statist/Statistics;->f()Lanetwork/channel/statist/StatisticData;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/anet/AsyncResult;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->n()I

    move-result v1

    iput v1, v0, Lanetwork/channel/statist/StatisticData;->z:I

    .line 116
    :cond_1
    const-string/jumbo v0, "ANet.AsyncResult"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u91cd\u8bd5\u5f53\u524d\u8bf7\u6c42:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanetwork/channel/anet/AsyncResult;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v2}, Lanetwork/channel/entity/RequestConfig;->n()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 5

    .prologue
    .line 94
    invoke-super {p0}, Lanetwork/channel/anet/ACallback;->c()V

    .line 95
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lanetwork/channel/anet/AsyncResult;->i:J

    sub-long/2addr v0, v2

    .line 97
    const-string/jumbo v2, "ANet.AsyncResult"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "doFinish-time="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanetwork/channel/anet/AsyncResult;->o:Z

    .line 100
    iget-object v0, p0, Lanetwork/channel/anet/AsyncResult;->m:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 101
    return-void
.end method

.method public cancel(Z)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 54
    const-string/jumbo v0, "ANet.AsyncResult"

    const-string/jumbo v1, "[cancel]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-boolean v0, p0, Lanetwork/channel/anet/AsyncResult;->o:Z

    if-nez v0, :cond_0

    .line 56
    invoke-super {p0}, Lanetwork/channel/anet/ACallback;->d()V

    .line 57
    iget-wide v0, p0, Lanetwork/channel/anet/AsyncResult;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 58
    const-string/jumbo v0, "ANet.AsyncResult"

    const-string/jumbo v1, "\u8fd8\u6ca1\u6709\u8fd4\u56destreamId,\u53d6\u6d88\u4e0d\u4e86"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    :goto_0
    iput-boolean v6, p0, Lanetwork/channel/anet/AsyncResult;->o:Z

    .line 77
    iput-boolean v6, p0, Lanetwork/channel/anet/AsyncResult;->n:Z

    .line 78
    iget-object v0, p0, Lanetwork/channel/anet/AsyncResult;->m:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 79
    return v6

    .line 61
    :cond_1
    :try_start_0
    iget-object v1, p0, Lanetwork/channel/anet/AsyncResult;->j:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :try_start_1
    iget-object v0, p0, Lanetwork/channel/anet/AsyncResult;->b:Lorg/android/spdy/SpdySession;

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lanetwork/channel/anet/AsyncResult;->b:Lorg/android/spdy/SpdySession;

    iget-wide v2, p0, Lanetwork/channel/anet/AsyncResult;->a:J

    sget-object v4, Lorg/android/spdy/SpdyStatusCode;->SPDY_CANCEL:Lorg/android/spdy/SpdyStatusCode;

    invoke-virtual {v0, v2, v3, v4}, Lorg/android/spdy/SpdySession;->streamReset(JLorg/android/spdy/SpdyStatusCode;)I

    .line 65
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 73
    :catch_0
    move-exception v0

    .line 67
    const-string/jumbo v1, "[sydy]: mSession.streamReset() exception while do cancel."

    .line 68
    const-string/jumbo v2, "ANet.AsyncResult"

    invoke-static {v2, v1, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    invoke-static {v1, v0}, Lanetwork/channel/statist/StatisticsUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v5

    .line 70
    const-string/jumbo v0, "Page_Net_Exception"

    const v1, 0xfe5a

    const/16 v2, 0xde

    const-string/jumbo v3, ""

    iget-object v4, p0, Lanetwork/channel/anet/AsyncResult;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v4}, Lanetwork/channel/entity/RequestConfig;->r()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public g()Lanetwork/channel/Response;
    .locals 3

    .prologue
    .line 89
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    const-string/jumbo v1, "NOT SUPPORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lanetwork/channel/anet/AsyncResult;->g()Lanetwork/channel/Response;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lanetwork/channel/anet/AsyncResult;->a(JLjava/util/concurrent/TimeUnit;)Lanetwork/channel/Response;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lanetwork/channel/anet/AsyncResult;->n:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lanetwork/channel/anet/AsyncResult;->o:Z

    return v0
.end method
