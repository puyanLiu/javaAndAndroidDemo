.class final Lcom/alipay/android/phone/businesscommon/advertisement/d/b;
.super Ljava/lang/Object;
.source "AdSyncCallbackImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/d/a;

.field private final synthetic b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/d/a;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/b;->a:Lcom/alipay/android/phone/businesscommon/advertisement/d/a;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/b;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    .line 51
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onReceiveMessage:  [ AdSyncCallbackImpl ] [ syncMessage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/b;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->d(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/b;->a:Lcom/alipay/android/phone/businesscommon/advertisement/d/a;

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/b;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v0, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/b;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v1, v1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    .line 54
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/b;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v2, v2, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    .line 53
    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 57
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/b;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v0, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 246
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .line 245
    if-nez v0, :cond_1d

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sync\u66f4\u65b0\u6570\u636e\u5e93\u5b8c\u6bd5\uff0c\u51c6\u5907\u66f4\u65b0\u5f53\u524d\u9875\u9762\u7684adview,\u6d89\u53ca\u5230\u7684spaceInfo:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->d(Ljava/lang/String;)V

    .line 255
    const-class v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/b;->c(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    .line 256
    if-nez v0, :cond_1e

    .line 258
    const-string/jumbo v0, "advertisementService==null, in AdSyncCallbackImpl"

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->b(Ljava/lang/String;)V

    .line 267
    :goto_2
    return-void

    .line 59
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 60
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 61
    const-string/jumbo v1, "pl"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 64
    const-string/jumbo v1, "cmd"

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/b;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v3, v3, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    .line 68
    sget-object v6, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->c:Ljava/lang/String;

    .line 67
    invoke-static {v3, v6}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->c()J

    move-result-wide v6

    .line 70
    const-string/jumbo v3, "mk"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "userOpLogId:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",skey"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->d(Ljava/lang/String;)V

    .line 74
    cmp-long v0, v8, v6

    if-ltz v0, :cond_1

    cmp-long v0, v6, v11

    if-nez v0, :cond_5

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "userOpLogId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    const-string/jumbo v1, ",skey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",\u4e22\u5f03\u6d88\u606f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5904\u7406sync\u547d\u4ee4\u65f6\u53d1\u751f\u5f02\u5e38:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->b(Ljava/lang/String;)V

    .line 265
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->b(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 80
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/b;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v3, v3, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    .line 81
    sget-object v6, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->d:Ljava/lang/String;

    .line 80
    invoke-static {v3, v6}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 82
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->b()J

    move-result-wide v6

    .line 83
    const-string/jumbo v3, "mk"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "userOpLogId:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    const-string/jumbo v3, ",skey"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->d(Ljava/lang/String;)V

    .line 87
    cmp-long v0, v8, v6

    if-ltz v0, :cond_3

    cmp-long v0, v6, v11

    if-nez v0, :cond_5

    .line 88
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "globalOpLogId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    const-string/jumbo v1, ",skey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",\u4e22\u5f03\u6d88\u606f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Sync biz invalid biz:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/b;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v1, v1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 100
    :cond_5
    const-string/jumbo v0, "spaceInfo"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    const-class v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    .line 99
    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    .line 102
    if-eqz v0, :cond_6

    .line 103
    iget-object v2, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_6
    const/4 v3, 0x0

    .line 107
    const-string/jumbo v2, "UPDATE_SPACE"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 109
    if-eqz v0, :cond_8

    .line 111
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v2

    .line 112
    iget-object v3, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    .line 111
    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a(Ljava/lang/String;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    move-result-object v2

    .line 110
    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    move-result-object v2

    .line 115
    if-eqz v2, :cond_7

    .line 116
    iget-object v2, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    iput-object v2, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    .line 118
    :cond_7
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v2

    .line 120
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    move-result-object v0

    .line 119
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;Z)Z

    move-result v3

    .line 122
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cmd:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u66f4\u65b0\u5e7f\u544a\u4f4d\u4fe1\u606f\u7ed3\u679c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    :cond_9
    const-string/jumbo v2, "UPDATE_SPACE_OB"

    .line 123
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 126
    if-eqz v0, :cond_a

    .line 127
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v2

    .line 129
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    move-result-object v0

    .line 128
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;Z)Z

    move-result v3

    .line 130
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cmd:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u66f4\u65b0\u5e7f\u544a\u4f4d\u4e0b\u5e7f\u544a\u4fe1\u606f\u7ed3\u679c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :cond_b
    const-string/jumbo v2, "UPDATE_OB_BY_ID"

    .line 131
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 134
    if-eqz v0, :cond_13

    .line 136
    iget-object v3, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    .line 137
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 138
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e

    .line 142
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v2

    .line 143
    iget-object v7, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    .line 142
    invoke-virtual {v2, v7}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a(Ljava/lang/String;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    move-result-object v2

    .line 141
    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    move-result-object v7

    .line 147
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 148
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 149
    if-eqz v7, :cond_12

    .line 150
    iget-object v0, v7, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 151
    iget-object v0, v7, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 162
    :cond_c
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 167
    iput-object v8, v7, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    .line 169
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v0

    .line 171
    invoke-static {v7}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    move-result-object v2

    .line 170
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;Z)Z

    move-result v0

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cmd:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\u66f4\u65b0\u5e7f\u544a\u5217\u8868"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 173
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\u66f4\u65b0\u7ed3\u679c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :cond_e
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    .line 139
    iget-object v8, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    invoke-virtual {v6, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 151
    :cond_f
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    .line 152
    iget-object v2, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 154
    iget-object v2, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :goto_6
    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 156
    :cond_10
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 162
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    .line 163
    iget-object v3, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    invoke-interface {v9, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 164
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 175
    :cond_12
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v2

    .line 177
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    move-result-object v0

    .line 176
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;Z)Z

    move-result v0

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cmd:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\u66f4\u65b0\u5e7f\u544a\u5217\u8868"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 179
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\u66f4\u65b0\u7ed3\u679c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cmd:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    const-string/jumbo v1, ",\u66f4\u65b0\u7ed3\u679c\uff1a\u5931\u8d25\uff0cspaceinfo==null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    :cond_14
    const-string/jumbo v2, "RESET"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 187
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v0

    .line 188
    const-class v2, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    .line 187
    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a(Ljava/lang/Class;)V

    .line 189
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

    move-result-object v0

    .line 190
    const/4 v2, 0x0

    .line 189
    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cmd:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",\u521d\u59cb\u5316\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 193
    :cond_15
    const-string/jumbo v2, "DELETE_SPACE"

    .line 192
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 196
    if-eqz v0, :cond_16

    .line 197
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v2

    .line 198
    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->b(Ljava/lang/String;)V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cmd:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",\u5220\u9664\u5e7f\u544a\u4f4d\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cmd:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 202
    const-string/jumbo v1, ",\u5220\u9664\u5e7f\u544a\u4f4d\u5931\u8d25,spaceinfo==null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 205
    :cond_17
    const-string/jumbo v2, "DELETE_OB_BY_ID"

    .line 204
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 207
    if-eqz v0, :cond_1b

    .line 208
    iget-object v2, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    .line 209
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 210
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_19

    .line 214
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v2

    .line 215
    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    .line 214
    invoke-virtual {v2, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a(Ljava/lang/String;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    move-result-object v0

    .line 213
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    move-result-object v2

    .line 219
    if-eqz v2, :cond_1f

    .line 221
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 222
    iget-object v0, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_18
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 228
    iput-object v3, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    .line 230
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v0

    .line 232
    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    move-result-object v2

    .line 231
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;Z)Z

    move-result v0

    .line 234
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cmd:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5220\u9664\u6307\u5b9a\u5e7f\u544a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 235
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    :cond_19
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    .line 211
    iget-object v2, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 222
    :cond_1a
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    .line 224
    iget-object v8, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    .line 225
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 237
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cmd:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 238
    const-string/jumbo v1, "\u5220\u9664\u6307\u5b9a\u5e7f\u544a\u5931\u8d25 spaceinfo==null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 241
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Sync command invalid cmd:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 248
    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 261
    :cond_1e
    invoke-virtual {v0, v4}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->UpdateAdSync(Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_1f
    move v0, v3

    goto/16 :goto_9
.end method
