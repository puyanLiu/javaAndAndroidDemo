.class public Lanetwork/channel/persistent/PersistentResult;
.super Lanetwork/channel/anet/AsyncResult;
.source "PersistentResult.java"


# static fields
.field private static l:I


# instance fields
.field private p:Lanetwork/channel/task/Task;

.field private q:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const v0, 0x15f90

    sput v0, Lanetwork/channel/persistent/PersistentResult;->l:I

    return-void
.end method

.method public constructor <init>(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/statist/Repeater;Lanetwork/channel/statist/Statistics;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lanetwork/channel/anet/AsyncResult;-><init>(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/statist/Repeater;Lanetwork/channel/statist/Statistics;)V

    .line 26
    invoke-direct {p0}, Lanetwork/channel/persistent/PersistentResult;->l()Lanetwork/channel/task/Task;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/persistent/PersistentResult;->p:Lanetwork/channel/task/Task;

    .line 33
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 92
    const-string/jumbo v0, "ANet.PersistentResult"

    const-string/jumbo v1, "[stopHeartBeat]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lanetwork/channel/persistent/PersistentResult;->p:Lanetwork/channel/task/Task;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/persistent/PersistentResult;->p:Lanetwork/channel/task/Task;

    invoke-virtual {v0}, Lanetwork/channel/task/Task;->a()V

    .line 95
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized l()Lanetwork/channel/task/Task;
    .locals 4

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lanetwork/channel/persistent/PersistentResult;->p:Lanetwork/channel/task/Task;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanetwork/channel/persistent/PersistentResult;->p:Lanetwork/channel/task/Task;

    iget-boolean v0, v0, Lanetwork/channel/task/Task;->d:Z

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lanetwork/channel/persistent/PersistentResult;->p:Lanetwork/channel/task/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lanetwork/channel/task/Task;

    new-instance v1, Lanetwork/channel/persistent/c;

    invoke-direct {v1, p0}, Lanetwork/channel/persistent/c;-><init>(Lanetwork/channel/persistent/PersistentResult;)V

    const/4 v2, 0x1

    sget v3, Lanetwork/channel/persistent/PersistentResult;->l:I

    invoke-direct {v0, v1, v2, v3}, Lanetwork/channel/task/Task;-><init>(Ljava/lang/Runnable;ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .prologue
    .line 37
    const-string/jumbo v0, "ANet.PersistentResult"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[onSessionFailed] errCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lanetwork/channel/persistent/PersistentResult;->k()V

    .line 39
    iget-object v0, p0, Lanetwork/channel/persistent/PersistentResult;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->r()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/persistent/PersistentResult;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lanetwork/channel/persistent/PersistentEngine;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1}, Lanetwork/channel/anet/AsyncResult;->a(I)V

    .line 41
    return-void
.end method

.method public final a(Lorg/android/spdy/SpdySession;J)V
    .locals 3

    .prologue
    .line 60
    const-string/jumbo v0, "ANet.PersistentResult"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[heartBeat ping callback]session:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " unique_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanetwork/channel/persistent/PersistentResult;->q:J

    .line 62
    iget-object v0, p0, Lanetwork/channel/persistent/PersistentResult;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->z()V

    .line 63
    iget-object v0, p0, Lanetwork/channel/persistent/PersistentResult;->k:Lanetwork/channel/task/Task;

    invoke-virtual {v0}, Lanetwork/channel/task/Task;->a()V

    .line 64
    return-void
.end method

.method public final a(Lorg/android/spdy/SpdyStatusCode;)V
    .locals 3

    .prologue
    .line 52
    const-string/jumbo v0, "ANet.PersistentResult"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[onStreamCloseCallback] statusCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-super {p0, p1}, Lanetwork/channel/anet/AsyncResult;->a(Lorg/android/spdy/SpdyStatusCode;)V

    .line 54
    invoke-direct {p0}, Lanetwork/channel/persistent/PersistentResult;->k()V

    .line 55
    iget-object v0, p0, Lanetwork/channel/persistent/PersistentResult;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->r()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/persistent/PersistentResult;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lanetwork/channel/persistent/PersistentEngine;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lanetwork/channel/persistent/PersistentResult;->k()V

    .line 47
    iget-object v0, p0, Lanetwork/channel/persistent/PersistentResult;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->r()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/persistent/PersistentResult;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lanetwork/channel/persistent/PersistentEngine;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public final declared-synchronized h()V
    .locals 2

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lanetwork/channel/persistent/PersistentResult;->p:Lanetwork/channel/task/Task;

    iget-boolean v0, v0, Lanetwork/channel/task/Task;->d:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lmtopsdk/xstate/XState;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    invoke-direct {p0}, Lanetwork/channel/persistent/PersistentResult;->l()Lanetwork/channel/task/Task;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/persistent/PersistentResult;->p:Lanetwork/channel/task/Task;

    .line 70
    invoke-virtual {p0}, Lanetwork/channel/persistent/PersistentResult;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 72
    :cond_1
    :try_start_1
    const-string/jumbo v0, "ANet.PersistentResult"

    const-string/jumbo v1, "app is background"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final i()V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lanetwork/channel/persistent/PersistentResult;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->y()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 85
    iget-object v0, p0, Lanetwork/channel/persistent/PersistentResult;->p:Lanetwork/channel/task/Task;

    iget-object v1, p0, Lanetwork/channel/persistent/PersistentResult;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->y()J

    move-result-wide v1

    iput-wide v1, v0, Lanetwork/channel/task/Task;->c:J

    .line 87
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanetwork/channel/persistent/PersistentResult;->q:J

    .line 88
    iget-object v0, p0, Lanetwork/channel/persistent/PersistentResult;->p:Lanetwork/channel/task/Task;

    invoke-static {v0}, Lanetwork/channel/task/DelayTaskMgr;->a(Lanetwork/channel/task/Task;)V

    .line 89
    return-void
.end method

.method public final j()V
    .locals 6

    .prologue
    .line 98
    invoke-static {}, Lmtopsdk/xstate/XState;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string/jumbo v0, "ANet.PersistentResult"

    const-string/jumbo v1, "app is background"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lanetwork/channel/persistent/PersistentResult;->k()V

    .line 136
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string/jumbo v0, "ANet.PersistentResult"

    const-string/jumbo v1, "app is foreground"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lanetwork/channel/persistent/PersistentResult;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->y()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 106
    iget-object v0, p0, Lanetwork/channel/persistent/PersistentResult;->p:Lanetwork/channel/task/Task;

    iget-object v1, p0, Lanetwork/channel/persistent/PersistentResult;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->y()J

    move-result-wide v1

    iput-wide v1, v0, Lanetwork/channel/task/Task;->c:J

    .line 109
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 110
    iget-wide v2, p0, Lanetwork/channel/persistent/PersistentResult;->q:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2

    iget-object v4, p0, Lanetwork/channel/persistent/PersistentResult;->p:Lanetwork/channel/task/Task;

    iget-wide v4, v4, Lanetwork/channel/task/Task;->c:J

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 111
    const-string/jumbo v0, "ANet.PersistentResult"

    const-string/jumbo v1, "\u5fc3\u8df3callback\u5f88\u4e45\u6ca1\u56de\u6765"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lanetwork/channel/persistent/PersistentResult;->k()V

    .line 114
    iget-object v1, p0, Lanetwork/channel/persistent/PersistentResult;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/persistent/PersistentResult;->b:Lorg/android/spdy/SpdySession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 117
    :try_start_1
    iget-object v0, p0, Lanetwork/channel/persistent/PersistentResult;->b:Lorg/android/spdy/SpdySession;

    iget-wide v2, p0, Lanetwork/channel/persistent/PersistentResult;->a:J

    sget-object v4, Lorg/android/spdy/SpdyStatusCode;->SPDY_CANCEL:Lorg/android/spdy/SpdyStatusCode;

    invoke-virtual {v0, v2, v3, v4}, Lorg/android/spdy/SpdySession;->streamReset(JLorg/android/spdy/SpdyStatusCode;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    :try_start_3
    const-string/jumbo v2, "ANet.PersistentResult"

    const-string/jumbo v3, "mSession.streamReset() error"

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 124
    :cond_3
    iget-object v1, p0, Lanetwork/channel/persistent/PersistentResult;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_4
    iget-object v0, p0, Lanetwork/channel/persistent/PersistentResult;->b:Lorg/android/spdy/SpdySession;

    if-eqz v0, :cond_4

    .line 128
    const-string/jumbo v0, "ANet.PersistentResult"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[heartBeat] task.repeatInterval:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lanetwork/channel/persistent/PersistentResult;->p:Lanetwork/channel/task/Task;

    iget-wide v3, v3, Lanetwork/channel/task/Task;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lanetwork/channel/persistent/PersistentResult;->b:Lorg/android/spdy/SpdySession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 130
    :try_start_5
    iget-object v0, p0, Lanetwork/channel/persistent/PersistentResult;->b:Lorg/android/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/android/spdy/SpdySession;->submitPing()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 136
    :cond_4
    :goto_2
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 131
    :catch_1
    move-exception v0

    .line 132
    :try_start_7
    const-string/jumbo v2, "ANet.PersistentResult"

    const-string/jumbo v3, "submitPing() error"

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2
.end method
