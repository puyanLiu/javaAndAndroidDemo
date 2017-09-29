.class public final Lcom/alipay/mobile/rome/syncservice/sync/b;
.super Ljava/lang/Object;
.source "LinkSyncManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/alipay/mobile/rome/syncservice/sync/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/alipay/mobile/rome/syncservice/sync/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static a()Lcom/alipay/mobile/rome/syncservice/sync/b;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->b:Lcom/alipay/mobile/rome/syncservice/sync/b;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync/b;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->b:Lcom/alipay/mobile/rome/syncservice/sync/b;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/sync/b;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncservice/sync/b;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->b:Lcom/alipay/mobile/rome/syncservice/sync/b;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->b:Lcom/alipay/mobile/rome/syncservice/sync/b;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 308
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 313
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 314
    sget-object v2, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sendSync5001Msg [size="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "][seq="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "sOpCode"

    const/16 v2, 0x1389

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "seq"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "sData"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SYNC_5001"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "s"

    const/4 v5, 0x0

    invoke-static {v1, v3, v2, v4, v5}, Lcom/alipay/mobile/rome/syncservice/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->sendPacketUplinkSync(Ljava/lang/String;)V

    .line 343
    :goto_1
    return-void

    .line 315
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;

    .line 316
    if-eqz v0, :cond_0

    .line 317
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 320
    const-string/jumbo v2, "biz"

    iget-object v6, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->biz:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    const-string/jumbo v2, "bid"

    iget-object v6, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->bizId:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    const-string/jumbo v2, "cmk"

    iget-object v6, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->b:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    iget-object v2, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->msgData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 326
    const-string/jumbo v2, "pl"

    iget-object v0, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->msgData:Ljava/lang/String;

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v0, v1

    .line 334
    :goto_2
    const-string/jumbo v2, "isB"

    if-eqz v0, :cond_3

    const-string/jumbo v0, "1"

    :goto_3
    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendSync5001Msg Exception="

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

    .line 328
    :cond_2
    const/4 v2, 0x1

    .line 330
    :try_start_1
    const-string/jumbo v6, "pl"

    .line 331
    iget-object v0, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->msgData_pb:[B

    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v0, v2

    goto :goto_2

    .line 334
    :cond_3
    const-string/jumbo v0, "0"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private static a(ILjava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 165
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-static {p0, v1}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(ILorg/json/JSONArray;)V

    .line 182
    :goto_1
    return-void

    .line 165
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 168
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 170
    const-string/jumbo v6, "biz"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string/jumbo v0, "sKey"

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 173
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "syncBizComm: JSONException="

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
.end method

.method private static a(ILorg/json/JSONArray;)V
    .locals 6

    .prologue
    .line 258
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 260
    const-string/jumbo v1, "sOpCode"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 261
    const-string/jumbo v1, "sData"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SYNC_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 269
    const-string/jumbo v4, "s"

    const/4 v5, 0x0

    .line 268
    invoke-static {v1, v3, v2, v4, v5}, Lcom/alipay/mobile/rome/syncservice/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 271
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->sendPacketUplinkSync(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "registerBiz: Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "registerBiz"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 116
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    const/16 v1, 0x3eb

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(ILjava/util/Set;)V

    .line 119
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 191
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendSyncMsg"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 198
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 202
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 203
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 205
    const-string/jumbo v4, "biz"

    invoke-virtual {v1, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    const-string/jumbo v4, "sKey"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 207
    const-string/jumbo v2, "md"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 211
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 214
    const/16 v1, 0x7d1

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(ILorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendSyncMsg: JSONException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;)V
    .locals 2

    .prologue
    .line 230
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendSyncReceivedAck"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/16 v0, 0x7d2

    invoke-static {v0, p0}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(ILorg/json/JSONArray;)V

    .line 236
    return-void
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 60
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "registerBizInitRegistered: [ user and device based biz ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/d/b;->b()Ljava/util/Set;

    move-result-object v0

    .line 64
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/d/b;->a()Ljava/util/Set;

    move-result-object v1

    .line 66
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 67
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 68
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 70
    const/16 v0, 0x3e9

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(ILjava/util/Set;)V

    .line 73
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->a()Lcom/alipay/mobile/rome/syncservice/d/a;

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->b()V

    .line 74
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "unRegisterBiz"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 133
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    const/16 v1, 0x3ec

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(ILjava/util/Set;)V

    .line 136
    return-void
.end method

.method public static b(Lorg/json/JSONArray;)V
    .locals 2

    .prologue
    .line 245
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendSyncHandledAck"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/16 v0, 0x7d3

    invoke-static {v0, p0}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(ILorg/json/JSONArray;)V

    .line 251
    return-void
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "registerBizInitDeviced: [ device based biz ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/d/b;->a()Ljava/util/Set;

    move-result-object v0

    .line 86
    const/16 v1, 0x3e9

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(ILjava/util/Set;)V

    .line 87
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "refreshBiz"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 150
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    const/16 v1, 0x3ed

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(ILjava/util/Set;)V

    .line 153
    return-void
.end method

.method public static c(Lorg/json/JSONArray;)V
    .locals 1

    .prologue
    .line 350
    const/16 v0, 0xfa1

    invoke-static {v0, p0}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(ILorg/json/JSONArray;)V

    .line 355
    return-void
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "registerBizInitUsered:  [ user based biz]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/d/b;->b()Ljava/util/Set;

    move-result-object v0

    .line 99
    const/16 v1, 0x3eb

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(ILjava/util/Set;)V

    .line 101
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->a()Lcom/alipay/mobile/rome/syncservice/d/a;

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->b()V

    .line 102
    return-void
.end method
