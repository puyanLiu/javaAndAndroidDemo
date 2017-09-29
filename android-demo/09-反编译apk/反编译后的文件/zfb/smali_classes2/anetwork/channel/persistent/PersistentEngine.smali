.class public Lanetwork/channel/persistent/PersistentEngine;
.super Ljava/lang/Object;
.source "PersistentEngine.java"


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/android/spdy/SpdySession;",
            "Lanetwork/channel/persistent/PersistentResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lanetwork/channel/persistent/PersistentLinkWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lanetwork/channel/persistent/PersistentEngine;->a:Ljava/util/HashMap;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lanetwork/channel/persistent/PersistentEngine;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lorg/android/spdy/SpdySession;
    .locals 3

    .prologue
    .line 77
    const-class v1, Lanetwork/channel/persistent/PersistentEngine;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lanetwork/channel/persistent/PersistentEngine;->e(Ljava/lang/String;)Lanetwork/channel/persistent/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 78
    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 81
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    iget-object v2, v0, Lanetwork/channel/persistent/b;->b:Ljava/lang/String;

    iget-object v0, v0, Lanetwork/channel/persistent/b;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lanetwork/channel/persistent/PersistentEngine;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/android/spdy/SpdySession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lanetwork/channel/entity/RequestConfig;)V
    .locals 7

    .prologue
    .line 42
    const-string/jumbo v0, "ANet.PersistentEngine"

    const-string/jumbo v1, "[addTask]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lanetwork/channel/entity/RequestConfig;->r()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lanetwork/channel/entity/RequestConfig;->t()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Lanetwork/channel/persistent/PersistentEngine;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    sget-object v2, Lanetwork/channel/persistent/PersistentEngine;->b:Ljava/util/HashMap;

    monitor-enter v2

    .line 50
    :try_start_0
    sget-object v0, Lanetwork/channel/persistent/PersistentEngine;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lanetwork/channel/persistent/PersistentEngine;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/persistent/PersistentLinkWrapper;

    .line 53
    iget-object v3, v0, Lanetwork/channel/persistent/PersistentLinkWrapper;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {p0}, Lanetwork/channel/entity/RequestConfig;->o()Lanetwork/channel/aidl/ParcelableRequest;

    move-result-object v4

    invoke-virtual {v3, v4}, Lanetwork/channel/entity/RequestConfig;->a(Lanetwork/channel/aidl/ParcelableRequest;)V

    .line 54
    const-string/jumbo v3, "ANet.PersistentEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "current heartbeat:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lanetwork/channel/persistent/PersistentLinkWrapper;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v5}, Lanetwork/channel/entity/RequestConfig;->y()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_0
    sget-object v3, Lanetwork/channel/persistent/PersistentEngine;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    monitor-exit v2

    .line 68
    :goto_1
    return-void

    .line 56
    :cond_0
    new-instance v0, Lanetwork/channel/persistent/PersistentLinkWrapper;

    invoke-direct {v0}, Lanetwork/channel/persistent/PersistentLinkWrapper;-><init>()V

    .line 57
    iput-object p0, v0, Lanetwork/channel/persistent/PersistentLinkWrapper;->a:Lanetwork/channel/entity/RequestConfig;

    .line 59
    new-instance v3, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;

    new-instance v4, Lanetwork/channel/persistent/MessageDispatcher;

    invoke-direct {v4}, Lanetwork/channel/persistent/MessageDispatcher;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;-><init>(Lanetwork/channel/NetworkListener;Landroid/os/Handler;Ljava/lang/Object;)V

    .line 60
    iput-object v3, v0, Lanetwork/channel/persistent/PersistentLinkWrapper;->b:Lanetwork/channel/aidl/ParcelableNetworkListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 64
    :cond_1
    const-string/jumbo v0, "ANet.PersistentEngine"

    const-string/jumbo v1, "key is empty"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 256
    invoke-static {p0, p1}, Lanetwork/channel/persistent/PersistentEngine;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-static {p0, p1}, Lanetwork/channel/persistent/PersistentEngine;->d(Ljava/lang/String;Ljava/lang/String;)Lorg/android/spdy/SpdySession;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_1

    .line 264
    sget-object v1, Lanetwork/channel/persistent/PersistentEngine;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 265
    :try_start_0
    sget-object v2, Lanetwork/channel/persistent/PersistentEngine;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :cond_1
    sget-object v1, Lanetwork/channel/persistent/PersistentEngine;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 270
    :try_start_1
    sget-object v0, Lanetwork/channel/persistent/PersistentEngine;->b:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lanetwork/channel/persistent/PersistentEngine;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/persistent/PersistentLinkWrapper;

    .line 272
    if-eqz v0, :cond_2

    .line 273
    const/4 v2, 0x0

    iput-object v2, v0, Lanetwork/channel/persistent/PersistentLinkWrapper;->c:Lorg/android/spdy/SpdySession;

    .line 275
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 278
    new-instance v0, Lanetwork/channel/task/Task;

    new-instance v1, Lanetwork/channel/persistent/a;

    invoke-direct {v1, p0, p1}, Lanetwork/channel/persistent/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lanetwork/channel/task/Task;-><init>(Ljava/lang/Runnable;)V

    .line 285
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x403e000000000000L    # 30.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    .line 286
    invoke-static {v0, v1, v2}, Lanetwork/channel/task/DelayTaskMgr;->a(Lanetwork/channel/task/Task;J)V

    .line 287
    const-string/jumbo v0, "ANet.PersistentEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5ef6\u65f6\u591a\u5c11\u6beb\u79d2:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 275
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lorg/android/spdy/SpdySession;)V
    .locals 2

    .prologue
    .line 163
    sget-object v1, Lanetwork/channel/persistent/PersistentEngine;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 165
    :try_start_0
    sget-object v0, Lanetwork/channel/persistent/PersistentEngine;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/persistent/PersistentResult;

    .line 166
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lanetwork/channel/persistent/PersistentResult;->h()V

    .line 172
    :goto_0
    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 170
    :cond_0
    const-string/jumbo v0, "ANet.PersistentEngine"

    const-string/jumbo v1, "cannot found main stream callback"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lorg/android/spdy/SpdySession;
    .locals 2

    .prologue
    .line 175
    invoke-static {p0}, Lanetwork/channel/persistent/PersistentEngine;->e(Ljava/lang/String;)Lanetwork/channel/persistent/b;

    move-result-object v0

    .line 176
    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Lanetwork/channel/persistent/b;->b:Ljava/lang/String;

    iget-object v0, v0, Lanetwork/channel/persistent/b;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lanetwork/channel/persistent/PersistentEngine;->d(Ljava/lang/String;Ljava/lang/String;)Lorg/android/spdy/SpdySession;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 26
    const-string/jumbo v0, "ANet.PersistentEngine"

    const-string/jumbo v1, "try to retry()"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lanetwork/channel/persistent/PersistentEngine;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/android/spdy/SpdySession;

    return-void
.end method

.method private static c(Ljava/lang/String;)Lanetwork/channel/aidl/ParcelableNetworkListener;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 229
    sget-object v2, Lanetwork/channel/persistent/PersistentEngine;->b:Ljava/util/HashMap;

    monitor-enter v2

    .line 230
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lanetwork/channel/persistent/PersistentEngine;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    sget-object v0, Lanetwork/channel/persistent/PersistentEngine;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/persistent/PersistentLinkWrapper;

    .line 233
    if-eqz v0, :cond_0

    .line 234
    iget-object v0, v0, Lanetwork/channel/persistent/PersistentLinkWrapper;->b:Lanetwork/channel/aidl/ParcelableNetworkListener;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :goto_0
    return-object v0

    .line 236
    :cond_0
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 239
    :cond_1
    monitor-exit v2

    move-object v0, v1

    .line 240
    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)Lorg/android/spdy/SpdySession;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 87
    const-class v2, Lanetwork/channel/persistent/PersistentEngine;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lmtopsdk/xstate/XState;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    const-string/jumbo v1, "ANet.PersistentEngine"

    const-string/jumbo v3, "app is background ,not need create MainStream"

    invoke-static {v1, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 91
    :cond_1
    :try_start_1
    const-string/jumbo v1, "ANet.PersistentEngine"

    const-string/jumbo v3, "app is foreground,create MainStream"

    invoke-static {v1, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {p0, p1}, Lanetwork/channel/persistent/PersistentEngine;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-static {v3}, Lanetwork/channel/persistent/PersistentEngine;->d(Ljava/lang/String;)Lanetwork/channel/entity/RequestConfig;

    move-result-object v4

    .line 100
    if-nez v4, :cond_2

    .line 101
    const-string/jumbo v1, "ANet.PersistentEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Not found persistent request ip:prot="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 105
    :cond_2
    :try_start_2
    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    :try_start_3
    invoke-static {p0, p1}, Lanetwork/channel/persistent/PersistentEngine;->d(Ljava/lang/String;Ljava/lang/String;)Lorg/android/spdy/SpdySession;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_3

    .line 109
    const-string/jumbo v0, "ANet.PersistentEngine"

    const-string/jumbo v3, "Persistent Link has Created, Return"

    invoke-static {v0, v3}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    monitor-exit v4

    move-object v0, v1

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {v4}, Lanetwork/channel/entity/RequestConfig;->d()Z

    move-result v1

    if-nez v1, :cond_4

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 115
    const-string/jumbo v1, "LAST_PERSISTENT_DATE"

    invoke-static {v1}, Lanetwork/channel/util/NetworkSharePerferenceMgr;->a(Ljava/lang/String;)J

    move-result-wide v7

    .line 116
    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/32 v7, 0x5265c00

    cmp-long v1, v5, v7

    if-lez v1, :cond_6

    .line 118
    invoke-virtual {v4}, Lanetwork/channel/entity/RequestConfig;->z()V

    .line 126
    :cond_4
    invoke-virtual {v4}, Lanetwork/channel/entity/RequestConfig;->x()Lanetwork/channel/aidl/ParcelablePersistentRetryHandler;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    .line 127
    if-eqz v1, :cond_5

    .line 129
    :try_start_4
    invoke-interface {v1}, Lanetwork/channel/aidl/ParcelablePersistentRetryHandler;->a()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 131
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lanetwork/channel/entity/RequestConfig;->a(Ljava/net/URL;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 142
    :cond_5
    :try_start_5
    invoke-static {v3}, Lanetwork/channel/persistent/PersistentEngine;->c(Ljava/lang/String;)Lanetwork/channel/aidl/ParcelableNetworkListener;

    move-result-object v1

    .line 143
    if-nez v1, :cond_8

    .line 144
    const-string/jumbo v1, "ANet.PersistentEngine"

    const-string/jumbo v3, "main stream\'s listener is null,return"

    invoke-static {v1, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .line 157
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v4

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 121
    :cond_6
    :try_start_7
    const-string/jumbo v1, "ANet.PersistentEngine"

    const-string/jumbo v3, "main stream has created more than max times"

    invoke-static {v1, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    .line 133
    :cond_7
    :try_start_8
    const-string/jumbo v1, "ANet.PersistentEngine"

    const-string/jumbo v3, "retry url is null or blank"

    invoke-static {v1, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 134
    :try_start_9
    monitor-exit v4

    goto/16 :goto_0

    .line 139
    :catch_0
    move-exception v1

    .line 137
    const-string/jumbo v3, "ANet.PersistentEngine"

    const-string/jumbo v5, "getRetry error"

    invoke-static {v3, v5, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    monitor-exit v4

    goto/16 :goto_0

    .line 147
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 148
    new-instance v0, Lanetwork/channel/persistent/PersistentTask;

    invoke-direct {v0, v4, v1}, Lanetwork/channel/persistent/PersistentTask;-><init>(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/aidl/ParcelableNetworkListener;)V

    .line 149
    invoke-virtual {v0}, Lanetwork/channel/persistent/PersistentTask;->a()Lanetwork/channel/persistent/PersistentResult;

    move-result-object v3

    .line 150
    invoke-virtual {v3}, Lanetwork/channel/persistent/PersistentResult;->a()Lorg/android/spdy/SpdySession;

    move-result-object v1

    .line 151
    monitor-enter v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {v3}, Lanetwork/channel/persistent/PersistentResult;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v3}, Lanetwork/channel/persistent/PersistentResult;->isDone()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const-string/jumbo v0, "ANet.PersistentEngine"

    const-string/jumbo v7, "persistener request has finished or be canceled"

    invoke-static {v0, v7}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 153
    :goto_1
    :try_start_b
    const-string/jumbo v0, "LAST_PERSISTENT_DATE"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lanetwork/channel/util/NetworkSharePerferenceMgr;->a(Ljava/lang/String;J)Z

    .line 154
    invoke-virtual {v4}, Lanetwork/channel/entity/RequestConfig;->n()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Lanetwork/channel/entity/RequestConfig;->b(I)V

    .line 155
    const-string/jumbo v0, "ANet.PersistentEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "retry time:"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lanetwork/channel/entity/RequestConfig;->n()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " consume:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v5, v7, v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object v0, v1

    goto/16 :goto_0

    .line 151
    :cond_a
    :try_start_c
    sget-object v7, Lanetwork/channel/persistent/PersistentEngine;->b:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    sget-object v0, Lanetwork/channel/persistent/PersistentEngine;->b:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lanetwork/channel/persistent/PersistentEngine;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/persistent/PersistentLinkWrapper;

    if-eqz v0, :cond_b

    iput-object v1, v0, Lanetwork/channel/persistent/PersistentLinkWrapper;->c:Lorg/android/spdy/SpdySession;

    :cond_b
    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    sget-object v7, Lanetwork/channel/persistent/PersistentEngine;->a:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v1, :cond_c

    :try_start_f
    sget-object v0, Lanetwork/channel/persistent/PersistentEngine;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    monitor-exit v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_11
    monitor-exit v3

    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :catchall_3
    move-exception v0

    :try_start_12
    monitor-exit v7

    throw v0

    :catchall_4
    move-exception v0

    monitor-exit v7

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2
.end method

.method private static d(Ljava/lang/String;)Lanetwork/channel/entity/RequestConfig;
    .locals 2

    .prologue
    .line 244
    sget-object v1, Lanetwork/channel/persistent/PersistentEngine;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 245
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lanetwork/channel/persistent/PersistentEngine;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lanetwork/channel/persistent/PersistentEngine;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/persistent/PersistentLinkWrapper;

    .line 248
    iget-object v0, v0, Lanetwork/channel/persistent/PersistentLinkWrapper;->a:Lanetwork/channel/entity/RequestConfig;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :goto_0
    return-object v0

    .line 250
    :cond_0
    monitor-exit v1

    .line 251
    const/4 v0, 0x0

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Lorg/android/spdy/SpdySession;
    .locals 5

    .prologue
    .line 183
    sget-object v2, Lanetwork/channel/persistent/PersistentEngine;->b:Ljava/util/HashMap;

    monitor-enter v2

    .line 184
    const/4 v1, 0x0

    .line 185
    :try_start_0
    sget-object v0, Lanetwork/channel/persistent/PersistentEngine;->b:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lanetwork/channel/persistent/PersistentEngine;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/persistent/PersistentLinkWrapper;

    .line 187
    if-eqz v0, :cond_0

    .line 188
    iget-object v0, v0, Lanetwork/channel/persistent/PersistentLinkWrapper;->c:Lorg/android/spdy/SpdySession;

    .line 190
    :goto_0
    const-string/jumbo v1, "ANet.PersistentEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[getMainStreamSession] session:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)Lanetwork/channel/persistent/b;
    .locals 5

    .prologue
    .line 310
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "api.m.taobao.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    :cond_0
    const/4 v0, 0x0

    .line 330
    :goto_0
    return-object v0

    .line 313
    :cond_1
    new-instance v1, Lanetwork/channel/persistent/b;

    invoke-direct {v1}, Lanetwork/channel/persistent/b;-><init>()V

    .line 314
    sget-object v0, Lanetwork/channel/persistent/PersistentEngine;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 315
    sget-object v0, Lanetwork/channel/persistent/PersistentEngine;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 316
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 317
    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_3

    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 319
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, v1, Lanetwork/channel/persistent/b;->b:Ljava/lang/String;

    .line 320
    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput-object v0, v1, Lanetwork/channel/persistent/b;->a:Ljava/lang/String;

    :cond_2
    move-object v0, v1

    .line 330
    goto :goto_0

    .line 323
    :cond_3
    const-string/jumbo v0, "ANet.PersistentEngine"

    const-string/jumbo v3, "kv == null or lenght !=2"

    invoke-static {v0, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 326
    :cond_4
    const-string/jumbo v3, "persister config key is empty"

    invoke-static {v0, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    :cond_0
    const/4 v0, 0x0

    .line 301
    :goto_0
    return-object v0

    .line 300
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
