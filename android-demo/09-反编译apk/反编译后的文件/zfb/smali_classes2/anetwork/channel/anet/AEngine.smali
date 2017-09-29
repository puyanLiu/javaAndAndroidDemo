.class public Lanetwork/channel/anet/AEngine;
.super Ljava/lang/Object;
.source "AEngine.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/android/spdy/SpdyAgent;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lorg/android/spdy/SpdySessionKind;

.field private static c:Ljava/util/concurrent/locks/ReadWriteLock;

.field private static d:Ljava/util/concurrent/locks/Lock;

.field private static e:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lanetwork/channel/anet/AEngine;->a:Ljava/util/Map;

    .line 34
    sget-object v0, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    sput-object v0, Lanetwork/channel/anet/AEngine;->b:Lorg/android/spdy/SpdySessionKind;

    .line 36
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 37
    sput-object v0, Lanetwork/channel/anet/AEngine;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    sput-object v0, Lanetwork/channel/anet/AEngine;->d:Ljava/util/concurrent/locks/Lock;

    .line 38
    sget-object v0, Lanetwork/channel/anet/AEngine;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    sput-object v0, Lanetwork/channel/anet/AEngine;->e:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public static a(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/anet/AsyncResult;)Lanetwork/channel/anet/AsyncResult;
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lmtopsdk/xstate/XState;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    invoke-virtual {p0}, Lanetwork/channel/entity/RequestConfig;->j()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanetwork/channel/persistent/PersistentEngine;->b(Ljava/lang/String;)Lorg/android/spdy/SpdySession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lanetwork/channel/entity/RequestConfig;->j()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanetwork/channel/persistent/PersistentEngine;->a(Ljava/lang/String;)Lorg/android/spdy/SpdySession;

    .line 50
    :goto_0
    invoke-static {p0, p1}, Lanetwork/channel/anet/AEngine;->b(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/anet/AsyncResult;)Lanetwork/channel/anet/AsyncResult;

    move-result-object v0

    return-object v0

    .line 45
    :cond_0
    const-string/jumbo v0, "ANet.AEngine"

    const-string/jumbo v1, "main stream has created"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_1
    const-string/jumbo v0, "ANet.AEngine"

    const-string/jumbo v1, "app is background"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lanetwork/channel/entity/RequestConfig;)Lorg/android/spdy/SpdyAgent;
    .locals 4

    .prologue
    .line 143
    invoke-virtual {p0}, Lanetwork/channel/entity/RequestConfig;->q()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v1

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lanetwork/channel/entity/RequestConfig;->w()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    const/4 v0, 0x0

    .line 146
    sget-object v3, Lanetwork/channel/anet/AEngine;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 148
    :try_start_0
    sget-object v3, Lanetwork/channel/anet/AEngine;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    sget-object v0, Lanetwork/channel/anet/AEngine;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/spdy/SpdyAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    sget-object v3, Lanetwork/channel/anet/AEngine;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 154
    if-nez v0, :cond_2

    .line 155
    sget-object v0, Lanetwork/channel/anet/AEngine;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 156
    sget-object v0, Lanetwork/channel/anet/AEngine;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/spdy/SpdyAgent;

    .line 158
    if-nez v0, :cond_1

    .line 163
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    :try_start_1
    sget-object v1, Lorg/android/spdy/SpdyVersion;->SPDY2:Lorg/android/spdy/SpdyVersion;

    :goto_0
    sget-object v3, Lanetwork/channel/anet/AEngine;->b:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v1, v3}, Lorg/android/spdy/SpdyAgent;->getInstance(Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    move-result-object v0

    .line 168
    sget-object v1, Lanetwork/channel/anet/AEngine;->a:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 173
    :cond_1
    sget-object v1, Lanetwork/channel/anet/AEngine;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 176
    :cond_2
    :goto_1
    return-object v0

    .line 152
    :catchall_0
    move-exception v0

    sget-object v1, Lanetwork/channel/anet/AEngine;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 163
    :cond_3
    :try_start_2
    sget-object v1, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 170
    :catch_0
    move-exception v1

    .line 171
    :try_start_3
    const-string/jumbo v2, "ANet.AEngine"

    const-string/jumbo v3, "new agent failed"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 173
    sget-object v1, Lanetwork/channel/anet/AEngine;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_1
    move-exception v0

    sget-object v1, Lanetwork/channel/anet/AEngine;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static a(Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;)V
    .locals 3

    .prologue
    .line 115
    sget-object v0, Lanetwork/channel/anet/d;->a:[I

    invoke-virtual {p0}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 128
    :goto_0
    sget-object v0, Lanetwork/channel/anet/AEngine;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 134
    :try_start_0
    sget-object v0, Lanetwork/channel/anet/AEngine;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/spdy/SpdyAgent;

    .line 135
    sget-object v2, Lanetwork/channel/anet/AEngine;->b:Lorg/android/spdy/SpdySessionKind;

    invoke-virtual {v0, v2}, Lorg/android/spdy/SpdyAgent;->setSessionKind(Lorg/android/spdy/SpdySessionKind;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 138
    :catchall_0
    move-exception v0

    sget-object v1, Lanetwork/channel/anet/AEngine;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 118
    :pswitch_0
    sget-object v0, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    sput-object v0, Lanetwork/channel/anet/AEngine;->b:Lorg/android/spdy/SpdySessionKind;

    goto :goto_0

    .line 123
    :pswitch_1
    sget-object v0, Lorg/android/spdy/SpdySessionKind;->TWO_G_SESSION:Lorg/android/spdy/SpdySessionKind;

    sput-object v0, Lanetwork/channel/anet/AEngine;->b:Lorg/android/spdy/SpdySessionKind;

    goto :goto_0

    .line 127
    :pswitch_2
    sget-object v0, Lorg/android/spdy/SpdySessionKind;->THREE_G_SESSION:Lorg/android/spdy/SpdySessionKind;

    sput-object v0, Lanetwork/channel/anet/AEngine;->b:Lorg/android/spdy/SpdySessionKind;

    goto :goto_0

    .line 138
    :cond_0
    sget-object v0, Lanetwork/channel/anet/AEngine;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 139
    return-void

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/anet/AsyncResult;)Lanetwork/channel/anet/AsyncResult;
    .locals 17

    .prologue
    .line 55
    invoke-static/range {p0 .. p0}, Lanetwork/channel/anet/AEngine;->a(Lanetwork/channel/entity/RequestConfig;)Lorg/android/spdy/SpdyAgent;

    move-result-object v9

    .line 56
    invoke-virtual/range {p0 .. p0}, Lanetwork/channel/entity/RequestConfig;->i()Ljava/net/URL;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v8, ""

    .line 57
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lanetwork/channel/entity/RequestConfig;->h()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "POST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v3, "POST"

    .line 58
    :goto_1
    new-instance v1, Lorg/android/spdy/SpdyRequest;

    invoke-virtual/range {p0 .. p0}, Lanetwork/channel/entity/RequestConfig;->i()Ljava/net/URL;

    move-result-object v2

    sget-object v4, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    invoke-virtual/range {p0 .. p0}, Lanetwork/channel/entity/RequestConfig;->c()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lanetwork/channel/entity/RequestConfig;->b()I

    move-result v6

    invoke-direct/range {v1 .. v6}, Lorg/android/spdy/SpdyRequest;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/android/spdy/RequestPriority;II)V

    .line 60
    invoke-virtual/range {p0 .. p0}, Lanetwork/channel/entity/RequestConfig;->l()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lanetwork/channel/anet/Convert;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/android/spdy/SpdyRequest;->addHeaders(Ljava/util/Map;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Lanetwork/channel/entity/RequestConfig;->v()[B

    move-result-object v15

    .line 62
    new-instance v6, Lorg/android/spdy/SpdyDataProvider;

    invoke-direct {v6, v15}, Lorg/android/spdy/SpdyDataProvider;-><init>([B)V

    .line 63
    const/4 v2, 0x0

    .line 66
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p1

    iput-wide v4, v0, Lanetwork/channel/anet/AsyncResult;->i:J

    .line 68
    invoke-virtual {v9, v1}, Lorg/android/spdy/SpdyAgent;->getSession(Lorg/android/spdy/SpdyRequest;)Lorg/android/spdy/SpdySession;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 69
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lanetwork/channel/anet/AsyncResult;->e()V

    .line 70
    if-eqz v2, :cond_4

    .line 71
    move-object/from16 v0, p1

    invoke-virtual {v2, v1, v6, v8, v0}, Lorg/android/spdy/SpdySession;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Lorg/android/spdy/Spdycb;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v2

    .line 85
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lanetwork/channel/anet/AsyncResult;->a(Lorg/android/spdy/SpdySession;)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Lanetwork/channel/entity/RequestConfig;->j()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lanetwork/channel/persistent/PersistentEngine;->b(Ljava/lang/String;)Lorg/android/spdy/SpdySession;

    move-result-object v2

    .line 88
    if-eqz v2, :cond_0

    .line 89
    invoke-static {v2}, Lanetwork/channel/persistent/PersistentEngine;->a(Lorg/android/spdy/SpdySession;)V

    .line 92
    :cond_0
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    const-string/jumbo v2, "*********************************\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "REQUEST_URL:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "REQUEST_CONNECTTIMEOUT:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lanetwork/channel/entity/RequestConfig;->b()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "REQUEST_READTIMEOUT:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lanetwork/channel/entity/RequestConfig;->c()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "REQUEST_METHOD:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "REQUEST_HEADER:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lanetwork/channel/entity/RequestConfig;->l()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lanetwork/channel/anet/Convert;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "REQUEST_BODY:"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v15, :cond_5

    const-string/jumbo v2, ""

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "REQUEST_SSLMODE:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lanetwork/channel/entity/RequestConfig;->w()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[send socket] FINISH THREAD NAME: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " session :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string/jumbo v1, "*********************************"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string/jumbo v1, "ANet.AEngine"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 110
    :cond_1
    :goto_4
    return-object p1

    .line 56
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lanetwork/channel/entity/RequestConfig;->i()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 57
    :cond_3
    const-string/jumbo v3, "GET"

    goto/16 :goto_1

    .line 73
    :cond_4
    const/4 v7, 0x0

    :try_start_3
    new-instance v10, Lanetwork/channel/anet/ASessionCallbackDispatcher;

    invoke-direct {v10}, Lanetwork/channel/anet/ASessionCallbackDispatcher;-><init>()V

    invoke-virtual/range {p0 .. p1}, Lanetwork/channel/entity/RequestConfig;->a(Lanetwork/channel/anet/ICertificationValidate;)Lorg/android/spdy/SslCertcb;

    move-result-object v11

    move-object v4, v9

    move-object v5, v1

    move-object/from16 v9, p1

    invoke-virtual/range {v4 .. v11}, Lorg/android/spdy/SpdyAgent;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Ljava/lang/Object;Lorg/android/spdy/Spdycb;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;)Lorg/android/spdy/SpdySession;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    goto/16 :goto_2

    .line 77
    :catch_0
    move-exception v1

    move-object/from16 v16, v1

    move-object v1, v2

    move-object/from16 v2, v16

    .line 78
    :goto_5
    const-string/jumbo v4, "ANet.AEngine"

    const-string/jumbo v5, "SpdyEngine.submitRequest() error "

    invoke-static {v4, v5, v2}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    const-string/jumbo v9, "Page_Net_Exception"

    const v10, 0xfe5a

    const/16 v11, 0xdd

    const-string/jumbo v12, ""

    invoke-virtual/range {p0 .. p0}, Lanetwork/channel/entity/RequestConfig;->r()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v4, "SpdyEngine.submitRequest() error."

    invoke-static {v4, v2}, Lanetwork/channel/statist/StatisticsUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v14

    invoke-static/range {v9 .. v14}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 101
    :cond_5
    :try_start_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v15}, Ljava/lang/String;-><init>([B)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v1

    goto :goto_4

    .line 77
    :catch_2
    move-exception v1

    move-object/from16 v16, v1

    move-object v1, v2

    move-object/from16 v2, v16

    goto :goto_5
.end method
