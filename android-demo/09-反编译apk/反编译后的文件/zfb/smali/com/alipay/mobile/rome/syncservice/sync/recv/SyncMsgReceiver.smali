.class public Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;
.super Ljava/lang/Object;
.source "SyncMsgReceiver.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "SyncMsgReceier"

.field private static volatile instance:Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;


# instance fields
.field private volatile context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;->context:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private dispatchSyncPacket(Ljava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/rome/syncservice/sync/c;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 246
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    const-string/jumbo v0, "SyncMsgReceier"

    const-string/jumbo v1, "dispatchSyncPacket: syncPacketArr null or size==0 "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 266
    :goto_0
    return v0

    .line 251
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 266
    goto :goto_0

    .line 251
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncservice/sync/c;

    .line 253
    :try_start_0
    iget-boolean v1, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->h:Z

    if-eqz v1, :cond_4

    .line 254
    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->recvMsg(Lcom/alipay/mobile/rome/syncservice/sync/c;)I

    move-result v1

    .line 255
    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 256
    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;->handleDBExceptionResp(Lcom/alipay/mobile/rome/syncservice/sync/c;)V

    move v0, v1

    .line 257
    goto :goto_0

    .line 260
    :cond_4
    const-string/jumbo v0, "SyncMsgReceier"

    const-string/jumbo v1, "dispatchSyncPacket: [ syncPacket.needDisptch=false ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 262
    :catch_0
    move-exception v0

    .line 263
    const-string/jumbo v1, "SyncMsgReceier"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "dispatchMsgData: [ Exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;->instance:Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;->instance:Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;->instance:Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;->instance:Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleDBExceptionResp(Lcom/alipay/mobile/rome/syncservice/sync/c;)V
    .locals 4

    .prologue
    .line 270
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 272
    :try_start_0
    const-string/jumbo v1, "biz"

    iget-object v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    iget-object v1, p1, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    .line 275
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 276
    const-string/jumbo v3, "sKey"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 277
    const-string/jumbo v1, "errCode"

    const-string/jumbo v2, "3001"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    const-string/jumbo v1, "errMsg"

    const-string/jumbo v2, "dbException"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 280
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;->context:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a()Lcom/alipay/mobile/rome/syncservice/sync/b;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncservice/sync/b;->c(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    const-string/jumbo v1, "SyncMsgReceier"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handleDBExceptionResp Exception["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handlePacketResponse(Lorg/json/JSONObject;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/rome/syncservice/sync/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    const-string/jumbo v0, "SyncMsgReceier"

    const-string/jumbo v1, "handlePacketResponse"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string/jumbo v0, "sOpCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 298
    const/16 v1, 0x7d1

    if-eq v0, v1, :cond_0

    .line 299
    const-string/jumbo v1, "SyncMsgReceier"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handlePacketResponse: don\'t need response [ sOpCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :goto_0
    return-void

    .line 306
    :cond_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 308
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;->context:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a()Lcom/alipay/mobile/rome/syncservice/sync/b;

    invoke-static {v5}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(Lorg/json/JSONArray;)V

    goto :goto_0

    .line 308
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncservice/sync/c;

    .line 310
    :try_start_0
    iget-object v7, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    .line 311
    iget-wide v3, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    .line 315
    iget-object v1, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    .line 316
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v2

    invoke-virtual {v2, v7, v1}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 318
    cmp-long v8, v3, v1

    if-gez v8, :cond_4

    .line 322
    :goto_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 323
    const-string/jumbo v4, "biz"

    invoke-virtual {v3, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    const-string/jumbo v4, "sKey"

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 326
    iget-object v1, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 327
    const-string/jumbo v1, "pf"

    iget-object v2, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    :cond_2
    iget-object v1, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 331
    const-string/jumbo v1, "hm"

    iget-object v0, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->g:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    :cond_3
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 335
    :catch_0
    move-exception v0

    .line 336
    const-string/jumbo v1, "SyncMsgReceier"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handlePacketResponse:2 [ JSONException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-wide v1, v3

    goto :goto_2
.end method

.method private preHandlePacket(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/rome/syncservice/sync/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    const-string/jumbo v2, "sOpCode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 111
    const/16 v2, 0x3ed

    if-ne v6, v2, :cond_0

    .line 112
    const-string/jumbo v2, "SyncMsgReceier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "preHandlePacket-ssl sOpCode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v2, 0x0

    .line 236
    :goto_0
    return-object v2

    .line 114
    :cond_0
    const/16 v2, 0x138a

    if-ne v6, v2, :cond_1

    .line 115
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;->receivedSyncUplinkAck(Lorg/json/JSONObject;)V

    .line 116
    const/4 v2, 0x0

    goto :goto_0

    .line 119
    :cond_1
    const-string/jumbo v2, "sData"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 121
    const-string/jumbo v2, "userId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    const-string/jumbo v3, "cdid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 131
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 132
    const-string/jumbo v2, "SyncMsgReceier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "preHandlePacket: [ userId not equals ] [ currUserId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "packet userId not equals with client userId"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 138
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/a;->d()Ljava/lang/String;

    move-result-object v2

    .line 144
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 145
    const-string/jumbo v2, "SyncMsgReceier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "preHandlePacket: [ sData="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "[ sData is empty ]"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_4
    const-string/jumbo v2, "SyncMsgReceier"

    const-string/jumbo v3, "preHandlePacket: [ packet no userId or cdid ]"

    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "packet no userId or cdid"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 151
    :try_start_0
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "SYNC_"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 154
    const/16 v8, 0x7d1

    if-eq v6, v8, :cond_6

    const/16 v8, 0x7d2

    if-ne v6, v8, :cond_7

    .line 155
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v8

    .line 157
    const-string/jumbo v9, "count"

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 159
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "sKey"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 158
    invoke-static {v5, v9, v4, v10, v8}, Lcom/alipay/mobile/rome/syncservice/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 161
    :cond_7
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 162
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v4, v5, :cond_8

    move-object v2, v3

    .line 236
    goto/16 :goto_0

    .line 163
    :cond_8
    new-instance v9, Lcom/alipay/mobile/rome/syncservice/sync/c;

    invoke-direct {v9}, Lcom/alipay/mobile/rome/syncservice/sync/c;-><init>()V

    .line 164
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 165
    iput-object v2, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    .line 166
    const-string/jumbo v10, "biz"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    .line 167
    const-string/jumbo v10, "sKey"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    .line 168
    const-string/jumbo v10, "md"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->d:Ljava/lang/String;

    .line 169
    const-string/jumbo v10, "pf"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    .line 170
    const-string/jumbo v10, "hm"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->g:Ljava/lang/String;

    .line 172
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v5

    iget-object v10, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    invoke-virtual {v5, v10, v2}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v12, " biz:"

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v12, " sKey:"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v12, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v12, " pf:"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v12, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    new-instance v12, Ljava/lang/StringBuffer;

    const-string/jumbo v5, "("

    invoke-direct {v12, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 175
    new-instance v13, Ljava/lang/StringBuffer;

    const-string/jumbo v5, "("

    invoke-direct {v13, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 176
    iget-object v5, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->d:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 177
    new-instance v14, Lorg/json/JSONArray;

    iget-object v5, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->d:Ljava/lang/String;

    invoke-direct {v14, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 178
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    .line 179
    new-instance v16, Lorg/json/JSONArray;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    .line 180
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v17

    .line 181
    const/4 v5, 0x0

    :goto_2
    move/from16 v0, v17

    if-lt v5, v0, :cond_e

    .line 196
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 197
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->e:Ljava/lang/String;

    .line 199
    :cond_9
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_12

    .line 200
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->d:Ljava/lang/String;

    .line 205
    :cond_a
    :goto_3
    iget-wide v14, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    cmp-long v5, v14, v10

    if-lez v5, :cond_14

    .line 207
    iget-object v5, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->d:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    const-string/jumbo v10, "1"

    invoke-static {v5, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 208
    iget-object v5, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    const-string/jumbo v10, "2"

    invoke-static {v5, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 209
    :cond_b
    const/4 v5, 0x1

    iput-boolean v5, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->h:Z

    .line 220
    :cond_c
    :goto_4
    const-string/jumbo v5, ")"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    const-string/jumbo v5, ")"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    const/16 v5, 0x7d2

    if-ne v6, v5, :cond_d

    .line 224
    const/4 v5, 0x1

    iput-boolean v5, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->h:Z

    .line 226
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v10, " childMsg"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " repeatMsg"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " needDispatch:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v10, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->h:Z

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    const-string/jumbo v5, "SyncMsgReceier"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "preHandlePacket-ssl: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 182
    :cond_e
    invoke-virtual {v14, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 183
    const-string/jumbo v19, "mk"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 184
    const-string/jumbo v19, "mk"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 185
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    cmp-long v21, v19, v10

    if-lez v21, :cond_11

    .line 187
    const-string/jumbo v19, "pd"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 188
    new-instance v19, Lorg/json/JSONObject;

    const-string/jumbo v20, "pd"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 190
    :cond_f
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 181
    :cond_10
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 192
    :cond_11
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 231
    :catch_0
    move-exception v2

    .line 232
    const-string/jumbo v3, "SyncMsgReceier"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "preHandlePacket: [ Exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    throw v2

    .line 202
    :cond_12
    const/4 v5, 0x0

    :try_start_1
    iput-boolean v5, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->h:Z

    goto/16 :goto_3

    .line 210
    :cond_13
    iget-object v5, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->d:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 211
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v5

    iget-object v10, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    iget-wide v14, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    iget-object v11, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v10, v14, v15, v11}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;JLjava/lang/String;)J

    goto/16 :goto_4

    .line 215
    :cond_14
    iget-object v5, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    const-string/jumbo v10, "1"

    invoke-static {v5, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 216
    iget-object v5, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    const-string/jumbo v10, "2"

    invoke-static {v5, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 217
    :cond_15
    const/4 v5, 0x1

    iput-boolean v5, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->h:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method private receivedSyncUplinkAck(Lorg/json/JSONObject;)V
    .locals 9

    .prologue
    .line 348
    if-nez p1, :cond_0

    .line 390
    :goto_0
    return-void

    .line 352
    :cond_0
    const-string/jumbo v0, "SyncMsgReceier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "receivedSyncUplinkAck: syncData="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :try_start_0
    const-string/jumbo v0, "seq"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 355
    const-string/jumbo v0, "userId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 356
    const-string/jumbo v0, "sData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 357
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 358
    const-string/jumbo v0, "SyncMsgReceier"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "receivedSyncUplinkAck: seq="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 361
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v4, :cond_1

    .line 379
    const-string/jumbo v0, "SYNC_5002"

    .line 380
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 381
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v3

    .line 382
    const-string/jumbo v6, "count"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 384
    const-string/jumbo v6, "r"

    .line 383
    invoke-static {v0, v4, v2, v6, v3}, Lcom/alipay/mobile/rome/syncservice/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 386
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->a()Lcom/alipay/mobile/rome/syncservice/d/a;

    invoke-static {v1, v5}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    const-string/jumbo v1, "SyncMsgReceier"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "receivedSyncUplinkAck: [Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 362
    :cond_1
    :try_start_1
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 363
    if-eqz v6, :cond_2

    .line 364
    new-instance v7, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;

    invoke-direct {v7}, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;-><init>()V

    .line 368
    const-string/jumbo v8, "biz"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->biz:Ljava/lang/String;

    .line 369
    const-string/jumbo v8, "bid"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->bizId:Ljava/lang/String;

    .line 370
    const-string/jumbo v8, "cmk"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->b:Ljava/lang/String;

    .line 371
    iput-object v2, v7, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->c:Ljava/lang/String;

    .line 375
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 361
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public recvSyncMsg(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 66
    const-string/jumbo v0, "SyncMsgReceier"

    const-string/jumbo v1, "recvSyncMsg"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;->preHandlePacket(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    .line 78
    invoke-direct {p0, v1}, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;->dispatchSyncPacket(Ljava/util/ArrayList;)I

    move-result v2

    .line 79
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 97
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceiver;->handlePacketResponse(Lorg/json/JSONObject;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string/jumbo v1, "SyncMsgReceier"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recvSyncMsg: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    const-string/jumbo v2, "recvPacketErr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string/jumbo v2, "e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    const-string/jumbo v0, "SYNC_EXP"

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, ""

    .line 94
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v4

    .line 92
    invoke-static {v0, v2, v1, v3, v4}, Lcom/alipay/mobile/rome/syncservice/e/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
