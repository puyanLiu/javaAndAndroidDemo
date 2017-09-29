.class public Lanetwork/channel/anet/ASessionCallbackDispatcher;
.super Ljava/lang/Object;
.source "ASessionCallbackDispatcher.java"

# interfaces
.implements Lorg/android/spdy/SessionCb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/android/spdy/SpdySession;Lanetwork/channel/anet/ASessionCallbackParam;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 54
    if-nez p0, :cond_1

    .line 55
    const-string/jumbo v0, "ASessionCallbackDispatcher"

    const-string/jumbo v1, "[dispatcherCallBack] session is null."

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->getAllStreamCb()[Lorg/android/spdy/SpdyStreamContext;

    move-result-object v2

    .line 59
    const-string/jumbo v3, "ASessionCallbackDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "[dispatcherCallBack] cb_size="

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lanetwork/channel/anet/ASessionCallbackParam$MethodID;->SPDYSESSIONFAILEDERROR:Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    iget-object v3, p1, Lanetwork/channel/anet/ASessionCallbackParam;->f:Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    if-ne v0, v3, :cond_2

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->close()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    .line 68
    :goto_3
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 69
    aget-object v0, v2, v1

    iget-object v0, v0, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    .line 70
    if-eqz v0, :cond_3

    instance-of v3, v0, Lanetwork/channel/anet/ISessionCallback;

    if-eqz v3, :cond_3

    .line 71
    check-cast v0, Lanetwork/channel/anet/ISessionCallback;

    .line 72
    invoke-interface {v0, p1}, Lanetwork/channel/anet/ISessionCallback;->a(Lanetwork/channel/anet/ASessionCallbackParam;)V

    .line 68
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 59
    :cond_4
    array-length v0, v2

    goto :goto_1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string/jumbo v3, "ASessionCallbackDispatcher"

    const-string/jumbo v4, "session colse() error"

    invoke-static {v3, v4, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 76
    :cond_5
    const-string/jumbo v0, "ASessionCallbackDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cbs:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .locals 2

    .prologue
    .line 24
    const-string/jumbo v0, "ASessionCallbackDispatcher"

    const-string/jumbo v1, "[spdyPingRecvCallback]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lanetwork/channel/anet/ASessionCallbackParam;

    invoke-direct {v0}, Lanetwork/channel/anet/ASessionCallbackParam;-><init>()V

    .line 26
    iput-object p1, v0, Lanetwork/channel/anet/ASessionCallbackParam;->a:Lorg/android/spdy/SpdySession;

    .line 27
    iput-wide p2, v0, Lanetwork/channel/anet/ASessionCallbackParam;->b:J

    .line 28
    iput-object p4, v0, Lanetwork/channel/anet/ASessionCallbackParam;->c:Ljava/lang/Object;

    .line 29
    sget-object v1, Lanetwork/channel/anet/ASessionCallbackParam$MethodID;->SPDYPINGRECVCALLBACK:Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    iput-object v1, v0, Lanetwork/channel/anet/ASessionCallbackParam;->f:Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    .line 30
    invoke-static {p1, v0}, Lanetwork/channel/anet/ASessionCallbackDispatcher;->a(Lorg/android/spdy/SpdySession;Lanetwork/channel/anet/ASessionCallbackParam;)V

    .line 31
    return-void
.end method

.method public spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;)V
    .locals 0

    .prologue
    .line 82
    if-nez p3, :cond_0

    .line 86
    :cond_0
    return-void
.end method

.method public spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V
    .locals 2

    .prologue
    .line 35
    const-string/jumbo v0, "ASessionCallbackDispatcher"

    const-string/jumbo v1, "[spdySessionConnectCB]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lanetwork/channel/anet/ASessionCallbackParam;

    invoke-direct {v0}, Lanetwork/channel/anet/ASessionCallbackParam;-><init>()V

    .line 37
    iput-object p1, v0, Lanetwork/channel/anet/ASessionCallbackParam;->a:Lorg/android/spdy/SpdySession;

    .line 38
    iput-object p2, v0, Lanetwork/channel/anet/ASessionCallbackParam;->d:Lorg/android/spdy/SuperviseConnectInfo;

    .line 39
    sget-object v1, Lanetwork/channel/anet/ASessionCallbackParam$MethodID;->SPDYSESSIONCONNECTCB:Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    iput-object v1, v0, Lanetwork/channel/anet/ASessionCallbackParam;->f:Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    .line 40
    invoke-static {p1, v0}, Lanetwork/channel/anet/ASessionCallbackDispatcher;->a(Lorg/android/spdy/SpdySession;Lanetwork/channel/anet/ASessionCallbackParam;)V

    .line 41
    return-void
.end method

.method public spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 45
    const-string/jumbo v0, "ASessionCallbackDispatcher"

    const-string/jumbo v1, "[spdySessionFailedError]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lanetwork/channel/anet/ASessionCallbackParam;

    invoke-direct {v0}, Lanetwork/channel/anet/ASessionCallbackParam;-><init>()V

    .line 47
    iput-object p1, v0, Lanetwork/channel/anet/ASessionCallbackParam;->a:Lorg/android/spdy/SpdySession;

    .line 48
    iput p2, v0, Lanetwork/channel/anet/ASessionCallbackParam;->e:I

    .line 49
    sget-object v1, Lanetwork/channel/anet/ASessionCallbackParam$MethodID;->SPDYSESSIONFAILEDERROR:Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    iput-object v1, v0, Lanetwork/channel/anet/ASessionCallbackParam;->f:Lanetwork/channel/anet/ASessionCallbackParam$MethodID;

    .line 50
    invoke-static {p1, v0}, Lanetwork/channel/anet/ASessionCallbackDispatcher;->a(Lorg/android/spdy/SpdySession;Lanetwork/channel/anet/ASessionCallbackParam;)V

    .line 51
    return-void
.end method
