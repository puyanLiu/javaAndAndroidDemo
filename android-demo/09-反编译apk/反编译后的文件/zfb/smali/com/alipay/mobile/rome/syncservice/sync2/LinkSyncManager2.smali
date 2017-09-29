.class public final Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;
.super Ljava/lang/Object;
.source "LinkSyncManager2.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "LinkSyncManager2"

.field private static volatile instance:Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->instance:Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    if-nez v0, :cond_1

    .line 61
    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->instance:Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->instance:Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    .line 61
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->instance:Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private protoSyncOpCode2Byte(ILcom/squareup/wire/Message;)[B
    .locals 6

    .prologue
    .line 538
    const/4 v1, 0x0

    .line 540
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 541
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 544
    const/4 v3, 0x5

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 546
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 548
    if-eqz p2, :cond_0

    .line 549
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 550
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 553
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 554
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 559
    :goto_0
    return-object v0

    .line 555
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 556
    :goto_1
    const-string/jumbo v2, "LinkSyncManager2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "protoSyncOpCode2Byte: opCode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " [ Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 555
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final getDeviceBasedBiz()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/d/b;->a()Ljava/util/Set;

    move-result-object v0

    .line 129
    const-string/jumbo v1, "LinkSyncManager2"

    const-string/jumbo v2, "getDeviceBasedBiz: [ device based biz ]"

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-object v0
.end method

.method public final getDeviceUserBasedBiz()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/d/b;->b()Ljava/util/Set;

    move-result-object v0

    .line 112
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/d/b;->a()Ljava/util/Set;

    move-result-object v1

    .line 114
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 115
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 116
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 118
    const-string/jumbo v0, "LinkSyncManager2"

    const-string/jumbo v1, "getDeviceUserBasedBiz: [ user and device based biz ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-object v2
.end method

.method public final getInitMsg()Ljava/lang/String;
    .locals 6

    .prologue
    .line 76
    const-string/jumbo v1, ""

    .line 78
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 79
    const-string/jumbo v2, "ver"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 81
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 82
    const-string/jumbo v3, "bizs"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getDeviceBasedBiz()Ljava/util/Set;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_1
    const-string/jumbo v0, "LinkSyncManager2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getInitMsg:  [ initMsg="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-object v1

    .line 87
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    const-string/jumbo v2, "LinkSyncManager2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getInitMsg:  [ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 91
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getDeviceUserBasedBiz()Ljava/util/Set;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public final getUserBasedBiz()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/d/b;->b()Ljava/util/Set;

    move-result-object v0

    .line 140
    const-string/jumbo v1, "LinkSyncManager2"

    const-string/jumbo v2, "getUserBasedBiz:  [ user based biz]"

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-object v0
.end method

.method public final refreshBiz(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 240
    const-string/jumbo v0, "LinkSyncManager2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "refreshBiz: 1005 (abandoned)[ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public final registerBiz(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 152
    const-string/jumbo v0, "LinkSyncManager2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerBiz: 1003 [ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003;

    invoke-direct {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003;-><init>()V

    .line 155
    new-instance v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;

    invoke-direct {v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;-><init>()V

    .line 156
    iput-object p1, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->biz_type:Ljava/lang/String;

    .line 157
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->sync_key:Ljava/lang/Long;

    .line 159
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 160
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iput-object v2, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003;->biz_sync_info:Ljava/util/List;

    .line 166
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 169
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 171
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 172
    const/16 v3, 0x3eb

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 173
    invoke-virtual {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 174
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 176
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 177
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 179
    array-length v1, v0

    int-to-long v1, v1

    .line 180
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;->sendPacketUplinkSync([B)V

    .line 183
    const-string/jumbo v0, "SYNC_1003"

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "s"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v4

    .line 184
    invoke-static {v0, v3, v1, v2, v4}, Lcom/alipay/mobile/rome/syncservice/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 188
    const-string/jumbo v1, "LinkSyncManager2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "registerBiz: [ biz="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

.method public final sendSync1001()V
    .locals 11

    .prologue
    .line 353
    new-instance v2, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001;

    invoke-direct {v2}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001;-><init>()V

    .line 356
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;->isNewDevice()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001;->is_new_device:Ljava/lang/Boolean;

    .line 360
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->a()Ljava/lang/String;

    move-result-object v3

    .line 361
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getDeviceBasedBiz()Ljava/util/Set;

    move-result-object v1

    .line 363
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/BucketCofigure;->getDevicebasedBucket()Ljava/util/Set;

    move-result-object v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 369
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 372
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 380
    iput-object v5, v2, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001;->biz_sync_info:Ljava/util/List;

    .line 383
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 384
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 392
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iput-object v5, v2, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001;->bucket_sync_info:Ljava/util/List;

    .line 395
    :cond_0
    const-string/jumbo v0, "LinkSyncManager2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendSync1001\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 401
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 403
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 404
    const/16 v3, 0x3e9

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 406
    invoke-virtual {v2}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 407
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 409
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 410
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 412
    array-length v1, v0

    int-to-long v1, v1

    .line 413
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;->sendPacketUplinkSync([B)V

    .line 416
    const-string/jumbo v0, "SYNC_1001"

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 418
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "s"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v4

    .line 417
    invoke-static {v0, v3, v1, v2, v4}, Lcom/alipay/mobile/rome/syncservice/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 422
    :goto_3
    return-void

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getDeviceUserBasedBiz()Ljava/util/Set;

    move-result-object v1

    .line 366
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/BucketCofigure;->getDeviceUserbasedBucket()Ljava/util/Set;

    move-result-object v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto/16 :goto_0

    .line 372
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 373
    new-instance v7, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;

    invoke-direct {v7}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;-><init>()V

    .line 374
    iput-object v0, v7, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->biz_type:Ljava/lang/String;

    .line 375
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->sync_key:Ljava/lang/Long;

    .line 377
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, v7, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->sync_key:Ljava/lang/Long;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 419
    :catch_0
    move-exception v0

    .line 420
    const-string/jumbo v1, "LinkSyncManager2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendSync1001:  [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 384
    :cond_3
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 385
    new-instance v6, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    invoke-direct {v6}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;-><init>()V

    .line 386
    iput-object v0, v6, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->bucket_type:Ljava/lang/String;

    .line 387
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v7

    invoke-virtual {v7, v3, v0}, Lcom/alipay/mobile/rome/syncservice/sync/a;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->sync_key:Ljava/lang/Long;

    .line 389
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v6, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->sync_key:Ljava/lang/Long;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public final sendSync3001()V
    .locals 10

    .prologue
    .line 428
    new-instance v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;

    invoke-direct {v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;-><init>()V

    .line 431
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->a()Ljava/lang/String;

    move-result-object v2

    .line 432
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    const-string/jumbo v0, "LinkSyncManager2"

    const-string/jumbo v1, "sendSync3001\uff1a[ userId isEmpty ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :goto_0
    return-void

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getUserBasedBiz()Ljava/util/Set;

    move-result-object v0

    .line 437
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/BucketCofigure;->getUserbasedBucket()Ljava/util/Set;

    move-result-object v3

    .line 439
    iput-object v2, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->user_id:Ljava/lang/String;

    .line 440
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 443
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 453
    iput-object v5, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->biz_sync_info:Ljava/util/List;

    .line 456
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 457
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 465
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 466
    iput-object v5, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->bucket_sync_info:Ljava/util/List;

    .line 468
    :cond_1
    const-string/jumbo v0, "LinkSyncManager2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendSync3001\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 474
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 476
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 477
    const/16 v3, 0xbb9

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 479
    invoke-virtual {v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 480
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 482
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 483
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 485
    array-length v1, v0

    int-to-long v1, v1

    .line 486
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;->sendPacketUplinkSync([B)V

    .line 489
    const-string/jumbo v0, "SYNC_3001"

    .line 490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 491
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "s"

    const/4 v4, 0x0

    .line 490
    invoke-static {v0, v3, v1, v2, v4}, Lcom/alipay/mobile/rome/syncservice/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    const-string/jumbo v1, "LinkSyncManager2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendSync3001:  [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 443
    :cond_2
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 444
    new-instance v7, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;

    invoke-direct {v7}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;-><init>()V

    .line 446
    iput-object v0, v7, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->biz_type:Ljava/lang/String;

    .line 447
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->sync_key:Ljava/lang/Long;

    .line 449
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, v7, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->sync_key:Ljava/lang/Long;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 457
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 458
    new-instance v6, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    invoke-direct {v6}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;-><init>()V

    .line 459
    iput-object v0, v6, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->bucket_type:Ljava/lang/String;

    .line 460
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v7

    invoke-virtual {v7, v2, v0}, Lcom/alipay/mobile/rome/syncservice/sync/a;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->sync_key:Ljava/lang/Long;

    .line 462
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v6, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->sync_key:Ljava/lang/Long;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public final sendSync3002()V
    .locals 5

    .prologue
    .line 501
    const-string/jumbo v0, "LinkSyncManager2"

    const-string/jumbo v1, "sendSync3002\uff1a3002"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 508
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 510
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 511
    const/16 v2, 0xbba

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 513
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 514
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 516
    array-length v1, v0

    int-to-long v1, v1

    .line 517
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;->sendPacketUplinkSync([B)V

    .line 520
    const-string/jumbo v0, "SYNC_3002"

    .line 521
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 522
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "s"

    const/4 v4, 0x0

    .line 521
    invoke-static {v0, v3, v1, v2, v4}, Lcom/alipay/mobile/rome/syncservice/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 524
    const-string/jumbo v1, "LinkSyncManager2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendSync1001:  [ Exception="

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

.method public final sendSync5001Msg(ILjava/util/List;)V
    .locals 5
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
    .line 566
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    :cond_0
    const-string/jumbo v0, "LinkSyncManager2"

    const-string/jumbo v1, "sendSync5001Msg: uplinkMsgItemList size is zero or null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :goto_0
    return-void

    .line 572
    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 574
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 575
    const-string/jumbo v2, "LinkSyncManager2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sendSync5001Msg[size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "][seq="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 589
    new-instance v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode5001;

    invoke-direct {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode5001;-><init>()V

    .line 590
    iput-object v1, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode5001;->client_sync_data:Ljava/util/List;

    .line 591
    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode5001;->seq:Ljava/lang/Long;

    .line 593
    const/16 v1, 0x1389

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->protoSyncOpCode2Byte(ILcom/squareup/wire/Message;)[B

    move-result-object v0

    .line 595
    array-length v1, v0

    int-to-long v1, v1

    .line 596
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;->sendPacketUplinkSync([B)V

    .line 599
    const-string/jumbo v0, "SYNC_5001"

    .line 600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 601
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "s"

    const/4 v4, 0x0

    .line 600
    invoke-static {v0, v3, v1, v2, v4}, Lcom/alipay/mobile/rome/syncservice/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    const-string/jumbo v1, "LinkSyncManager2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendSync5001Msg [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 577
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;

    .line 578
    new-instance v3, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;

    invoke-direct {v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;-><init>()V

    .line 579
    iget-object v4, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->biz:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->biz_type:Ljava/lang/String;

    .line 580
    iget-object v4, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->msgData:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->payload:Ljava/lang/String;

    .line 581
    iget-object v4, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->msgData_pb:[B

    if-eqz v4, :cond_3

    .line 582
    iget-object v4, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->msgData_pb:[B

    invoke-static {v4}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->binary_payload:Lokio/ByteString;

    .line 584
    :cond_3
    iget-object v4, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->b:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->cmk:Ljava/lang/String;

    .line 585
    iget-object v0, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->bizId:Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->biz_id:Ljava/lang/String;

    .line 587
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public final sendSyncHandledAck2003(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 5

    .prologue
    .line 307
    const-string/jumbo v0, "LinkSyncManager2"

    const-string/jumbo v1, "sendSyncHandledAck\uff1a2003 "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :try_start_0
    new-instance v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003;

    invoke-direct {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003;-><init>()V

    .line 312
    new-instance v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;

    invoke-direct {v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;-><init>()V

    .line 313
    iput-object p2, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->biz_type:Ljava/lang/String;

    .line 314
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->sync_key:Ljava/lang/Long;

    .line 315
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->pf:Ljava/lang/Integer;

    .line 317
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 318
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    iput-object v2, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003;->biz_sync_info:Ljava/util/List;

    .line 323
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 326
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 328
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 329
    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 331
    invoke-virtual {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 332
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 334
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 335
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 337
    array-length v1, v0

    int-to-long v1, v1

    .line 338
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;->sendPacketUplinkSync([B)V

    .line 341
    const-string/jumbo v0, "SYNC_2003"

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 343
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "s"

    const/4 v4, 0x0

    .line 342
    invoke-static {v0, v3, v1, v2, v4}, Lcom/alipay/mobile/rome/syncservice/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    const-string/jumbo v1, "LinkSyncManager2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendSyncHandledAck: [ TException="

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

.method public final sendSyncMsg2004(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 250
    const-string/jumbo v0, "LinkSyncManager2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendSyncMsg: 2004 [ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 255
    new-instance v2, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;

    invoke-direct {v2}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;-><init>()V

    .line 256
    iput-object p1, v2, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->biz_type:Ljava/lang/String;

    .line 257
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->sync_key:Ljava/lang/Long;

    .line 259
    new-instance v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;

    invoke-direct {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;-><init>()V

    .line 261
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 262
    const-string/jumbo v3, "appId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->app_id:Ljava/lang/String;

    .line 263
    const-string/jumbo v3, "mId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->m_id:Ljava/lang/String;

    .line 264
    const-string/jumbo v3, "pl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->payload:Ljava/lang/String;

    .line 265
    const-string/jumbo v3, "toId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->to_id:Ljava/lang/String;

    .line 267
    iput-object v0, v2, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;

    .line 270
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 273
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 275
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 276
    const/16 v3, 0x7d4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 277
    invoke-virtual {v2}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 278
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 280
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 281
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 283
    array-length v1, v0

    int-to-long v1, v1

    .line 284
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;->sendPacketUplinkSync([B)V

    .line 287
    const-string/jumbo v0, "SYNC_2004"

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 289
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "s"

    const/4 v4, 0x0

    .line 288
    invoke-static {v0, v3, v1, v2, v4}, Lcom/alipay/mobile/rome/syncservice/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 292
    const-string/jumbo v1, "LinkSyncManager2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendSyncMsg: [ biz="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

.method public final unRegisterBiz(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 198
    const-string/jumbo v0, "LinkSyncManager2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unRegisterBiz: 1004 [ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004;

    invoke-direct {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004;-><init>()V

    .line 201
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 202
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iput-object v1, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004;->biz:Ljava/util/List;

    .line 207
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 210
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 212
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 213
    const/16 v3, 0x3ec

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 214
    invoke-virtual {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 215
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 217
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 218
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 220
    array-length v1, v0

    int-to-long v1, v1

    .line 221
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;->sendPacketUplinkSync([B)V

    .line 224
    const-string/jumbo v0, "SYNC_1004"

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "s"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v4

    .line 225
    invoke-static {v0, v3, v1, v2, v4}, Lcom/alipay/mobile/rome/syncservice/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    const-string/jumbo v1, "LinkSyncManager2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unRegisterBiz: [ biz="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 229
    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
