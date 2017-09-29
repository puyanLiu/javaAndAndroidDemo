.class public abstract Lanetwork/channel/anet/ACallback;
.super Ljava/lang/Object;
.source "ACallback.java"

# interfaces
.implements Lanetwork/channel/anet/ICertificationValidate;
.implements Lanetwork/channel/anet/ISessionCallback;
.implements Lorg/android/spdy/Spdycb;


# instance fields
.field protected a:J

.field protected b:Lorg/android/spdy/SpdySession;

.field protected c:Lanetwork/channel/entity/RequestConfig;

.field protected d:Lanetwork/channel/statist/Statistics;

.field protected e:Lanetwork/channel/statist/Repeater;

.field protected f:I

.field protected g:Ljava/lang/Object;

.field protected h:I

.field public i:J

.field public j:Ljava/lang/Object;

.field public k:Lanetwork/channel/task/Task;

.field private l:I

.field private m:Z

.field private volatile n:Ljava/lang/Boolean;

.field private o:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide v3, p0, Lanetwork/channel/anet/ACallback;->a:J

    .line 49
    iput v1, p0, Lanetwork/channel/anet/ACallback;->f:I

    .line 51
    iput-boolean v2, p0, Lanetwork/channel/anet/ACallback;->m:Z

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lanetwork/channel/anet/ACallback;->g:Ljava/lang/Object;

    .line 53
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/anet/ACallback;->n:Ljava/lang/Boolean;

    .line 54
    iput v1, p0, Lanetwork/channel/anet/ACallback;->h:I

    .line 55
    iput-wide v3, p0, Lanetwork/channel/anet/ACallback;->i:J

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lanetwork/channel/anet/ACallback;->j:Ljava/lang/Object;

    .line 57
    new-instance v0, Lanetwork/channel/task/Task;

    new-instance v1, Lanetwork/channel/anet/a;

    invoke-direct {v1, p0}, Lanetwork/channel/anet/a;-><init>(Lanetwork/channel/anet/ACallback;)V

    invoke-direct {v0, v1}, Lanetwork/channel/task/Task;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lanetwork/channel/anet/ACallback;->k:Lanetwork/channel/task/Task;

    .line 350
    return-void
.end method

.method static synthetic a(Lanetwork/channel/anet/ACallback;)V
    .locals 5

    .prologue
    const/16 v4, -0xa

    .line 38
    const-string/jumbo v0, "ANet.ACallback"

    const-string/jumbo v1, "[onTimeOutException]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->d:Lanetwork/channel/statist/Statistics;

    const-string/jumbo v1, "20S"

    invoke-virtual {v0, v1}, Lanetwork/channel/statist/Statistics;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lanetwork/channel/anet/ACallback;->g()V

    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lanetwork/channel/http/NetworkStatusHelper;->a()Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->NO:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    if-ne v0, v1, :cond_0

    iput v4, p0, Lanetwork/channel/anet/ACallback;->h:I

    invoke-virtual {p0}, Lanetwork/channel/anet/ACallback;->c()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->e:Lanetwork/channel/statist/Repeater;

    iget-object v1, p0, Lanetwork/channel/anet/ACallback;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->r()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/anet/ACallback;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v2}, Lanetwork/channel/entity/RequestConfig;->s()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lanetwork/channel/anet/ACallback;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v3}, Lanetwork/channel/entity/RequestConfig;->u()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lanetwork/channel/statist/Repeater;->a(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    iput v4, p0, Lanetwork/channel/anet/ACallback;->h:I

    invoke-virtual {p0}, Lanetwork/channel/anet/ACallback;->c()V

    :goto_1
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->d:Lanetwork/channel/statist/Statistics;

    invoke-virtual {v0, v4}, Lanetwork/channel/statist/Statistics;->a(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/anet/ACallback;->n:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "ANet.ACallback"

    const-string/jumbo v1, "\u8bf7\u6c42\u5df2\u7ecf\u5b8c\u6210"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized a(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V
    .locals 8

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ANet.ACallback"

    const-string/jumbo v1, "[spdySessionConnectCB]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 69
    if-eqz p2, :cond_0

    .line 70
    iget-object v2, p0, Lanetwork/channel/anet/ACallback;->d:Lanetwork/channel/statist/Statistics;

    iget v3, p2, Lorg/android/spdy/SuperviseConnectInfo;->connectTime:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lanetwork/channel/statist/Statistics;->b(J)V

    .line 71
    iget-object v2, p0, Lanetwork/channel/anet/ACallback;->d:Lanetwork/channel/statist/Statistics;

    invoke-virtual {v2}, Lanetwork/channel/statist/Statistics;->c()V

    .line 73
    :cond_0
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 76
    const-string/jumbo v5, "[spdySessionConnectCB]-time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lanetwork/channel/anet/ACallback;->i:J

    sub-long v6, v0, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";    doCallbackTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    if-eqz p2, :cond_1

    .line 82
    const-string/jumbo v0, "connect_time="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lorg/android/spdy/SuperviseConnectInfo;->connectTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_1
    const-string/jumbo v0, "session="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    const-string/jumbo v0, "ANet.ACallback"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_2
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(I)V
    .locals 6

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ANet.ACallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[spdySessionFailedError] ERROR:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lanetwork/channel/anet/ACallback;->h()V

    .line 124
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->k:Lanetwork/channel/task/Task;

    invoke-virtual {v0}, Lanetwork/channel/task/Task;->a()V

    .line 125
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->r()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->s()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/anet/ACallback;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->t()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "errorMsg"

    const-string/jumbo v3, "spdy session failed error."

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "ip"

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "port"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "isIPProxy"

    invoke-static {}, Lanetwork/channel/http/NetworkStatusHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "nettype"

    invoke-static {}, Lanetwork/channel/http/NetworkStatusHelper;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Page_Net_Exception"

    const v1, 0xfe5a

    const-string/jumbo v3, ""

    move v2, p1

    invoke-static/range {v0 .. v5}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 126
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :goto_1
    monitor-exit p0

    return-void

    .line 125
    :cond_0
    :try_start_1
    const-string/jumbo v0, "0"

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->d:Lanetwork/channel/statist/Statistics;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanetwork/channel/statist/Statistics;->b(Ljava/lang/String;)V

    .line 130
    const/16 v0, -0xb

    iput v0, p0, Lanetwork/channel/anet/ACallback;->h:I

    .line 131
    invoke-static {}, Lanetwork/channel/http/NetworkStatusHelper;->a()Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->NO:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    if-ne v0, v1, :cond_2

    .line 132
    invoke-virtual {p0, p1}, Lanetwork/channel/anet/ACallback;->a(I)V

    .line 133
    iget v0, p0, Lanetwork/channel/anet/ACallback;->h:I

    invoke-direct {p0, v0}, Lanetwork/channel/anet/ACallback;->c(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 136
    :cond_2
    :try_start_2
    sget-object v0, Lanetwork/channel/anet/c;->a:Lanetwork/channel/anet/c;

    packed-switch p1, :pswitch_data_0

    :cond_3
    :goto_2
    :pswitch_0
    sget-object v0, Lanetwork/channel/anet/c;->b:Lanetwork/channel/anet/c;

    .line 142
    :goto_3
    iget-object v1, p0, Lanetwork/channel/anet/ACallback;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->C()V

    .line 143
    sget-object v1, Lanetwork/channel/anet/c;->b:Lanetwork/channel/anet/c;

    if-eq v0, v1, :cond_4

    sget-object v1, Lanetwork/channel/anet/c;->c:Lanetwork/channel/anet/c;

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lanetwork/channel/anet/ACallback;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->d()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p0, Lanetwork/channel/anet/ACallback;->e:Lanetwork/channel/statist/Repeater;

    iget-object v2, p0, Lanetwork/channel/anet/ACallback;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v2}, Lanetwork/channel/entity/RequestConfig;->r()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lanetwork/channel/anet/ACallback;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v3}, Lanetwork/channel/entity/RequestConfig;->s()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lanetwork/channel/anet/ACallback;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v4}, Lanetwork/channel/entity/RequestConfig;->u()I

    move-result v4

    invoke-virtual {v1, p1, v2, v3, v4}, Lanetwork/channel/statist/Repeater;->a(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 145
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/anet/ACallback;->n:Ljava/lang/Boolean;

    .line 146
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->d:Lanetwork/channel/statist/Statistics;

    invoke-virtual {v0, p1}, Lanetwork/channel/statist/Statistics;->a(I)Z

    goto :goto_1

    .line 136
    :pswitch_1
    sget-object v0, Lanetwork/channel/anet/c;->b:Lanetwork/channel/anet/c;

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->n()I

    move-result v0

    if-gtz v0, :cond_3

    sget-object v0, Lanetwork/channel/anet/c;->c:Lanetwork/channel/anet/c;

    goto :goto_3

    :pswitch_3
    sget-object v0, Lanetwork/channel/anet/c;->a:Lanetwork/channel/anet/c;

    goto :goto_2

    .line 148
    :cond_5
    sget-object v1, Lanetwork/channel/anet/c;->b:Lanetwork/channel/anet/c;

    if-eq v0, v1, :cond_6

    sget-object v1, Lanetwork/channel/anet/c;->c:Lanetwork/channel/anet/c;

    if-ne v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 150
    invoke-virtual {p0}, Lanetwork/channel/anet/ACallback;->b()V

    goto/16 :goto_1

    .line 152
    :cond_7
    invoke-virtual {p0, p1}, Lanetwork/channel/anet/ACallback;->a(I)V

    .line 153
    const/16 v0, -0x7f3

    if-ne p1, v0, :cond_9

    .line 154
    const/16 v0, -0xd

    iput v0, p0, Lanetwork/channel/anet/ACallback;->h:I

    .line 158
    :cond_8
    :goto_4
    iget v0, p0, Lanetwork/channel/anet/ACallback;->h:I

    invoke-direct {p0, v0}, Lanetwork/channel/anet/ACallback;->c(I)V

    goto/16 :goto_1

    .line 155
    :cond_9
    const/16 v0, -0x7d5

    if-ne p1, v0, :cond_8

    .line 156
    const/4 v0, -0x5

    iput v0, p0, Lanetwork/channel/anet/ACallback;->h:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 136
    nop

    :pswitch_data_0
    .packed-switch -0x802
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private c(I)V
    .locals 5

    .prologue
    .line 469
    const-string/jumbo v0, "ANet.ACallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[sendOnFinishCallback] bFinish:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanetwork/channel/anet/ACallback;->n:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-direct {p0}, Lanetwork/channel/anet/ACallback;->g()V

    .line 471
    iget-object v1, p0, Lanetwork/channel/anet/ACallback;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 472
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Lanetwork/channel/aidl/DefaultFinishEvent;

    iget-object v2, p0, Lanetwork/channel/anet/ACallback;->d:Lanetwork/channel/statist/Statistics;

    invoke-virtual {v2}, Lanetwork/channel/statist/Statistics;->f()Lanetwork/channel/statist/StatisticData;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILanetwork/channel/statist/StatisticData;)V

    .line 474
    iget-object v2, p0, Lanetwork/channel/anet/ACallback;->d:Lanetwork/channel/statist/Statistics;

    invoke-virtual {v2, v0}, Lanetwork/channel/statist/Statistics;->a(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    .line 475
    iget-object v2, p0, Lanetwork/channel/anet/ACallback;->e:Lanetwork/channel/statist/Repeater;

    invoke-virtual {v2, v0}, Lanetwork/channel/statist/Repeater;->a(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    .line 476
    const-string/jumbo v2, "ANet.ACallback"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[sendOnFinishCallback] "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/anet/ACallback;->n:Ljava/lang/Boolean;

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/anet/ACallback;->e:Lanetwork/channel/statist/Repeater;

    .line 480
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->o:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 288
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/anet/ACallback;->o:Ljava/io/ByteArrayOutputStream;

    .line 294
    :cond_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    const-string/jumbo v1, "ANet.ACallback"

    const-string/jumbo v2, "tmpStream.close() error."

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 541
    iget-object v1, p0, Lanetwork/channel/anet/ACallback;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 542
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lanetwork/channel/anet/ACallback;->b:Lorg/android/spdy/SpdySession;

    .line 543
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Lorg/android/spdy/SpdySession;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->b:Lorg/android/spdy/SpdySession;

    return-object v0
.end method

.method public abstract a(I)V
.end method

.method public abstract a(III[B)V
.end method

.method public abstract a(ILjava/util/Map;)V
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
.end method

.method public final a(Lanetwork/channel/anet/ASessionCallbackParam;)V
    .locals 4

    .prologue
    .line 166
    const-string/jumbo v0, "ANet.ACallback"

    const-string/jumbo v1, "[onSessionCallback]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    if-eqz p1, :cond_0

    .line 169
    iget-object v0, p1, Lanetwork/channel/anet/ASessionCallbackParam;->f:Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    sget-object v1, Lanetwork/channel/anet/ASessionCallbackParam$MethodID;->SPDYPINGRECVCALLBACK:Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    if-ne v0, v1, :cond_1

    .line 170
    iget-object v0, p1, Lanetwork/channel/anet/ASessionCallbackParam;->a:Lorg/android/spdy/SpdySession;

    iget-wide v1, p1, Lanetwork/channel/anet/ASessionCallbackParam;->b:J

    iget-object v3, p1, Lanetwork/channel/anet/ASessionCallbackParam;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lanetwork/channel/anet/ACallback;->a(Lorg/android/spdy/SpdySession;J)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p1, Lanetwork/channel/anet/ASessionCallbackParam;->f:Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    sget-object v1, Lanetwork/channel/anet/ASessionCallbackParam$MethodID;->SPDYSESSIONCONNECTCB:Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    if-ne v0, v1, :cond_2

    .line 172
    iget-object v0, p1, Lanetwork/channel/anet/ASessionCallbackParam;->a:Lorg/android/spdy/SpdySession;

    iget-object v1, p1, Lanetwork/channel/anet/ASessionCallbackParam;->d:Lorg/android/spdy/SuperviseConnectInfo;

    invoke-direct {p0, v0, v1}, Lanetwork/channel/anet/ACallback;->a(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v0, p1, Lanetwork/channel/anet/ASessionCallbackParam;->f:Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    sget-object v1, Lanetwork/channel/anet/ASessionCallbackParam$MethodID;->SPDYSESSIONFAILEDERROR:Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v0, p1, Lanetwork/channel/anet/ASessionCallbackParam;->a:Lorg/android/spdy/SpdySession;

    iget v0, p1, Lanetwork/channel/anet/ASessionCallbackParam;->e:I

    iget-object v1, p1, Lanetwork/channel/anet/ASessionCallbackParam;->c:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lanetwork/channel/anet/ACallback;->b(I)V

    goto :goto_0
.end method

.method public final a(Lorg/android/spdy/SpdySession;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lanetwork/channel/anet/ACallback;->b:Lorg/android/spdy/SpdySession;

    .line 439
    return-void
.end method

.method public declared-synchronized a(Lorg/android/spdy/SpdySession;J)V
    .locals 2

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ANet.ACallback"

    const-string/jumbo v1, "[spdyPingRecvCallback]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract a(Lorg/android/spdy/SpdyStatusCode;)V
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 446
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lanetwork/channel/anet/ACallback;->a:J

    iput v2, p0, Lanetwork/channel/anet/ACallback;->f:I

    iput v2, p0, Lanetwork/channel/anet/ACallback;->l:I

    iput-boolean v2, p0, Lanetwork/channel/anet/ACallback;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/anet/ACallback;->o:Ljava/io/ByteArrayOutputStream;

    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->k:Lanetwork/channel/task/Task;

    invoke-virtual {v0}, Lanetwork/channel/task/Task;->a()V

    .line 447
    return-void
.end method

.method public declared-synchronized c()V
    .locals 2

    .prologue
    .line 451
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ANet.ACallback"

    const-string/jumbo v1, "[doFinish]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget v0, p0, Lanetwork/channel/anet/ACallback;->h:I

    invoke-direct {p0, v0}, Lanetwork/channel/anet/ACallback;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    monitor-exit p0

    return-void

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized d()V
    .locals 1

    .prologue
    .line 457
    monitor-enter p0

    const/4 v0, -0x5

    :try_start_0
    invoke-direct {p0, v0}, Lanetwork/channel/anet/ACallback;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    monitor-exit p0

    return-void

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 463
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->d:Lanetwork/channel/statist/Statistics;

    invoke-virtual {v0}, Lanetwork/channel/statist/Statistics;->a()V

    .line 465
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->k:Lanetwork/channel/task/Task;

    const-wide/16 v1, 0x4e20

    invoke-static {v0, v1, v2}, Lanetwork/channel/task/DelayTaskMgr;->a(Lanetwork/channel/task/Task;J)V

    .line 466
    return-void
.end method

.method public abstract f()V
.end method

.method public declared-synchronized spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZJ[BILjava/lang/Object;)V
    .locals 4

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    const-string/jumbo v1, "[spdyDataChunkRecvCB] : streamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";fin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";bGzip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lanetwork/channel/anet/ACallback;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lanetwork/channel/anet/ACallback;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    if-eqz p5, :cond_2

    .line 227
    const-string/jumbo v1, "data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :goto_0
    const-string/jumbo v1, "ANet.ACallback"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 229
    :cond_2
    :try_start_1
    const-string/jumbo v1, "data=null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 236
    :cond_3
    :try_start_2
    iget v0, p0, Lanetwork/channel/anet/ACallback;->l:I

    if-nez v0, :cond_4

    .line 237
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->d:Lanetwork/channel/statist/Statistics;

    invoke-virtual {v0}, Lanetwork/channel/statist/Statistics;->e()V

    .line 243
    :cond_4
    iget-boolean v0, p0, Lanetwork/channel/anet/ACallback;->m:Z

    if-eqz v0, :cond_a

    .line 244
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->o:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_5

    .line 245
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lanetwork/channel/anet/ACallback;->o:Ljava/io/ByteArrayOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    :cond_5
    :try_start_3
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p5}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 254
    :goto_2
    if-eqz p2, :cond_1

    .line 256
    :try_start_4
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 257
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 258
    invoke-static {v1}, Lanetwork/channel/anet/ResponseHelper;->a([B)[B

    move-result-object p5

    .line 259
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 260
    const-string/jumbo v2, "ANet.ACallback"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "before:gzip:"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_8

    const-string/jumbo v0, ""

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string/jumbo v1, "ANet.ACallback"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "after:gzip:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p5, :cond_9

    const-string/jumbo v0, ""

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 268
    :cond_6
    :try_start_5
    invoke-direct {p0}, Lanetwork/channel/anet/ACallback;->g()V

    .line 270
    :goto_5
    if-eqz p5, :cond_7

    .line 271
    array-length p6, p5

    .line 273
    :cond_7
    iget v0, p0, Lanetwork/channel/anet/ACallback;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lanetwork/channel/anet/ACallback;->l:I

    .line 274
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->e:Lanetwork/channel/statist/Repeater;

    iget v1, p0, Lanetwork/channel/anet/ACallback;->l:I

    iget v2, p0, Lanetwork/channel/anet/ACallback;->f:I

    invoke-virtual {v0, v1, p6, v2, p5}, Lanetwork/channel/statist/Repeater;->a(III[B)V

    .line 275
    iget v0, p0, Lanetwork/channel/anet/ACallback;->l:I

    iget v1, p0, Lanetwork/channel/anet/ACallback;->f:I

    invoke-virtual {p0, v0, p6, v1, p5}, Lanetwork/channel/anet/ACallback;->a(III[B)V

    goto/16 :goto_1

    .line 249
    :catch_0
    move-exception v0

    .line 250
    const-string/jumbo v1, "ANet.ACallback"

    const-string/jumbo v2, "tmpStream.write(out) error."

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 251
    :catch_1
    move-exception v0

    .line 252
    const-string/jumbo v1, "ANet.ACallback"

    const-string/jumbo v2, "tmpStream.write(out) error."

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 260
    :cond_8
    :try_start_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 263
    :catch_2
    move-exception v0

    .line 264
    :try_start_7
    const-string/jumbo v1, "ANet.ACallback"

    const-string/jumbo v2, "tmpStream.flush() error."

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 268
    :try_start_8
    invoke-direct {p0}, Lanetwork/channel/anet/ACallback;->g()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 261
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p5}, Ljava/lang/String;-><init>([B)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    .line 265
    :catch_3
    move-exception v0

    .line 266
    :try_start_a
    const-string/jumbo v1, "ANet.ACallback"

    const-string/jumbo v2, "tmpStream.flush() error."

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 268
    :try_start_b
    invoke-direct {p0}, Lanetwork/channel/anet/ACallback;->g()V

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lanetwork/channel/anet/ACallback;->g()V

    throw v0

    .line 278
    :cond_a
    iget v0, p0, Lanetwork/channel/anet/ACallback;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lanetwork/channel/anet/ACallback;->l:I

    .line 279
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->e:Lanetwork/channel/statist/Repeater;

    iget v1, p0, Lanetwork/channel/anet/ACallback;->l:I

    iget v2, p0, Lanetwork/channel/anet/ACallback;->f:I

    invoke-virtual {v0, v1, p6, v2, p5}, Lanetwork/channel/statist/Repeater;->a(III[B)V

    .line 280
    iget v0, p0, Lanetwork/channel/anet/ACallback;->l:I

    iget v1, p0, Lanetwork/channel/anet/ACallback;->f:I

    invoke-virtual {p0, v0, p6, v1, p5}, Lanetwork/channel/anet/ACallback;->a(III[B)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1
.end method

.method public declared-synchronized spdyDataRecvCallback(Lorg/android/spdy/SpdySession;ZJILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 301
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 304
    :cond_1
    :try_start_1
    const-string/jumbo v0, "ANet.ACallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[spdyDataRecvCallback] fin:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    if-eqz p2, :cond_0

    .line 306
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->d:Lanetwork/channel/statist/Statistics;

    iget v1, p0, Lanetwork/channel/anet/ACallback;->f:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lanetwork/channel/statist/Statistics;->a(J)V

    .line 307
    invoke-virtual {p0}, Lanetwork/channel/anet/ACallback;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized spdyDataSendCallback(Lorg/android/spdy/SpdySession;ZJILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    :goto_0
    monitor-exit p0

    return-void

    .line 187
    :cond_0
    :try_start_1
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->d:Lanetwork/channel/statist/Statistics;

    invoke-virtual {v0}, Lanetwork/channel/statist/Statistics;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/android/spdy/SpdySession;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ANet.ACallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "spdyOnStreamResponse headers\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->k:Lanetwork/channel/task/Task;

    invoke-virtual {v0}, Lanetwork/channel/task/Task;->a()V

    .line 196
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    :goto_0
    monitor-exit p0

    return-void

    .line 199
    :cond_0
    :try_start_1
    invoke-static {p4}, Lanetwork/channel/anet/ResponseHelper;->c(Ljava/util/Map;)I

    move-result v0

    iput v0, p0, Lanetwork/channel/anet/ACallback;->h:I

    .line 200
    invoke-static {p4}, Lanetwork/channel/anet/ResponseHelper;->b(Ljava/util/Map;)I

    move-result v0

    iput v0, p0, Lanetwork/channel/anet/ACallback;->f:I

    .line 201
    invoke-static {p4}, Lanetwork/channel/anet/ResponseHelper;->a(Ljava/util/Map;)Z

    move-result v0

    iput-boolean v0, p0, Lanetwork/channel/anet/ACallback;->m:Z

    .line 202
    iput-wide p2, p0, Lanetwork/channel/anet/ACallback;->a:J

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lanetwork/channel/anet/ACallback;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->j()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Lanetwork/channel/http/ConnectionHelper;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 204
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->d:Lanetwork/channel/statist/Statistics;

    iget v1, p0, Lanetwork/channel/anet/ACallback;->h:I

    invoke-virtual {v0, p4}, Lanetwork/channel/statist/Statistics;->a(Ljava/util/Map;)V

    .line 205
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->e:Lanetwork/channel/statist/Repeater;

    iget v1, p0, Lanetwork/channel/anet/ACallback;->h:I

    invoke-virtual {v0, v1, p4}, Lanetwork/channel/statist/Repeater;->a(ILjava/util/Map;)V

    .line 206
    iget v0, p0, Lanetwork/channel/anet/ACallback;->h:I

    invoke-virtual {p0, v0, p4}, Lanetwork/channel/anet/ACallback;->a(ILjava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public spdyRequestRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 527
    return-void
.end method

.method public declared-synchronized spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JLorg/android/spdy/SpdyStatusCode;Ljava/lang/Object;Lorg/android/spdy/SuperviseData;)V
    .locals 6

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ANet.ACallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[spdyStreamCloseCallback]: streamId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bFinish:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/anet/ACallback;->n:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "spdystatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->d:Lanetwork/channel/statist/Statistics;

    invoke-virtual {v0, p6}, Lanetwork/channel/statist/Statistics;->a(Lorg/android/spdy/SuperviseData;)V

    .line 318
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->k:Lanetwork/channel/task/Task;

    invoke-virtual {v0}, Lanetwork/channel/task/Task;->a()V

    .line 319
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    :goto_0
    monitor-exit p0

    return-void

    .line 322
    :cond_0
    :try_start_1
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->d:Lanetwork/channel/statist/Statistics;

    invoke-virtual {v0, p4}, Lanetwork/channel/statist/Statistics;->a(Lorg/android/spdy/SpdyStatusCode;)V

    .line 323
    sget-object v0, Lanetwork/channel/anet/c;->a:Lanetwork/channel/anet/c;

    if-eqz p4, :cond_2

    sget-object v1, Lanetwork/channel/anet/b;->a:[I

    invoke-virtual {p4}, Lorg/android/spdy/SpdyStatusCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-object v0, Lanetwork/channel/anet/c;->b:Lanetwork/channel/anet/c;

    :goto_1
    :pswitch_0
    const-string/jumbo v1, "ANet.ACallback"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[parseSpdyStatusCode] ret:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lanetwork/channel/anet/ACallback;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->C()V

    .line 325
    sget-object v1, Lanetwork/channel/anet/c;->b:Lanetwork/channel/anet/c;

    if-eq v0, v1, :cond_1

    sget-object v1, Lanetwork/channel/anet/c;->c:Lanetwork/channel/anet/c;

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lanetwork/channel/anet/ACallback;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->d()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, p0, Lanetwork/channel/anet/ACallback;->e:Lanetwork/channel/statist/Repeater;

    const/16 v2, -0x9

    iget-object v3, p0, Lanetwork/channel/anet/ACallback;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v3}, Lanetwork/channel/entity/RequestConfig;->r()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lanetwork/channel/anet/ACallback;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v4}, Lanetwork/channel/entity/RequestConfig;->s()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lanetwork/channel/anet/ACallback;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v5}, Lanetwork/channel/entity/RequestConfig;->u()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lanetwork/channel/statist/Repeater;->a(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 327
    const-string/jumbo v0, "ANet.ACallback"

    const-string/jumbo v1, "(\u8981\u964d\u7ea7\u7684||\u4e0d\u80fd\u91cd\u8bd5\u7684)&&\u80fd\u964d\u6210\u529f\u7684\uff0c\u964d\u7ea7"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/anet/ACallback;->n:Ljava/lang/Boolean;

    .line 329
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->d:Lanetwork/channel/statist/Statistics;

    const/16 v1, -0x9

    invoke-virtual {v0, v1}, Lanetwork/channel/statist/Statistics;->a(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 323
    :pswitch_1
    const/4 v1, -0x5

    :try_start_2
    iput v1, p0, Lanetwork/channel/anet/ACallback;->h:I

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->n()I

    move-result v0

    if-gtz v0, :cond_2

    sget-object v0, Lanetwork/channel/anet/c;->c:Lanetwork/channel/anet/c;

    goto :goto_1

    :cond_2
    sget-object v0, Lanetwork/channel/anet/c;->b:Lanetwork/channel/anet/c;

    goto :goto_1

    .line 331
    :cond_3
    sget-object v1, Lanetwork/channel/anet/c;->b:Lanetwork/channel/anet/c;

    if-eq v0, v1, :cond_4

    sget-object v1, Lanetwork/channel/anet/c;->c:Lanetwork/channel/anet/c;

    if-ne v0, v1, :cond_5

    :cond_4
    iget-object v0, p0, Lanetwork/channel/anet/ACallback;->c:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 333
    const-string/jumbo v0, "ANet.ACallback"

    const-string/jumbo v1, "(\u964d\u7ea7\u4e0d\u6210\u529f||\u9700\u8981\u91cd\u8bd5\u7684)&&\u6ca1\u8d85\u8fc7\u91cd\u8bd5\u6b21\u6570\uff0c\u91cd\u8bd5"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lanetwork/channel/anet/ACallback;->b()V

    goto/16 :goto_0

    .line 338
    :cond_5
    const-string/jumbo v0, "ANet.ACallback"

    const-string/jumbo v1, "\u5176\u4ed6\uff0c\u53d1\u9001\u7ed3\u675f\u6d88\u606f"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    sget-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_STREAM_REQUESTCANCELLED:Lorg/android/spdy/SpdyStatusCode;

    if-ne p4, v0, :cond_7

    .line 340
    const/4 v0, -0x5

    iput v0, p0, Lanetwork/channel/anet/ACallback;->h:I

    .line 345
    :cond_6
    :goto_2
    invoke-virtual {p0, p4}, Lanetwork/channel/anet/ACallback;->a(Lorg/android/spdy/SpdyStatusCode;)V

    .line 346
    iget v0, p0, Lanetwork/channel/anet/ACallback;->h:I

    invoke-direct {p0, v0}, Lanetwork/channel/anet/ACallback;->c(I)V

    .line 347
    invoke-direct {p0}, Lanetwork/channel/anet/ACallback;->h()V

    goto/16 :goto_0

    .line 341
    :cond_7
    sget-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_OK:Lorg/android/spdy/SpdyStatusCode;

    if-eq p4, v0, :cond_6

    .line 343
    const/16 v0, -0x9

    iput v0, p0, Lanetwork/channel/anet/ACallback;->h:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 323
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
