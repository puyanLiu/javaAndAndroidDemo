.class public Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;
.super Ljava/lang/Object;
.source "WearableConfigUtil.java"


# static fields
.field private static config:Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;

.field private static convertTimestamp:J


# instance fields
.field private braceletMacs:Ljava/util/List;

.field private modelMap:Ljava/util/Map;

.field private models:Ljava/util/List;

.field private supportPasswordlesstMacs:Ljava/util/List;

.field private supportQRCodeMacs:Ljava/util/List;

.field private watchMacs:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->modelMap:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->models:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->braceletMacs:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->watchMacs:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->supportPasswordlesstMacs:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->supportQRCodeMacs:Ljava/util/List;

    .line 38
    const-string/jumbo v1, "[{\"mac\":\"88:0F:10\",\"type\":\"1\",\"model\":\"miband\",\"pass\":\"1\",\"tip\":\"knock\",\"qr\":\"0\"},{\"mac\":\"1c:96:5A\",\"type\":\"2\",\"model\":\"tic\",\"pass\":\"1\",\"tip\":\"knock\",\"qr\":\"0\"},{\"mac\":\"00:02\",\"type\":\"2\",\"model\":\"gear\",\"pass\":\"0\",\"qr\":\"1\",\"qrbl\":\"spp\"},{\"mac\":\"22:22\",\"type\":\"2\",\"model\":\"yunos\",\"pass\":\"0\",\"qr\":\"1\",\"qrbl\":\"ble\"}]"

    .line 39
    invoke-static {}, Lcom/alipay/security/mobile/wearable/config/WalletConfig;->getWalletWearableConfig()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 45
    :goto_0
    invoke-direct {p0, v0}, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->convertData(Ljava/lang/String;)Z

    move-result v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    const-string/jumbo v0, "TAG"

    const-string/jumbo v1, "\u89e3\u6790\u670d\u52a1\u7aef\u914d\u7f6e\u9519\u8bef\uff0c\u964d\u7ea7\u4e3a\u5185\u7f6e\u7b56\u7565"

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string/jumbo v0, "[{\"mac\":\"88:0F:10\",\"type\":\"1\",\"model\":\"miband\",\"pass\":\"1\",\"tip\":\"knock\",\"qr\":\"0\"},{\"mac\":\"1c:96:5A\",\"type\":\"2\",\"model\":\"tic\",\"pass\":\"1\",\"tip\":\"knock\",\"qr\":\"0\"},{\"mac\":\"00:02\",\"type\":\"2\",\"model\":\"gear\",\"pass\":\"0\",\"qr\":\"1\",\"qrbl\":\"spp\"},{\"mac\":\"22:22\",\"type\":\"2\",\"model\":\"yunos\",\"pass\":\"0\",\"qr\":\"1\",\"qrbl\":\"ble\"}]"

    .line 49
    invoke-direct {p0, v0}, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->convertData(Ljava/lang/String;)Z

    .line 51
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private convertData(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 54
    iget-object v2, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->modelMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 55
    iget-object v2, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->braceletMacs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 56
    iget-object v2, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->watchMacs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->convertTimestamp:J

    .line 60
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 90
    :goto_0
    return v0

    :cond_0
    move v2, v0

    .line 64
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 65
    new-instance v4, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;-><init>(Lorg/json/JSONObject;)V

    .line 66
    iget-object v5, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->models:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v5, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->modelMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {v4}, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->getWearableType()I

    move-result v5

    if-ne v5, v1, :cond_4

    .line 70
    iget-object v5, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->braceletMacs:Ljava/util/List;

    invoke-virtual {v4}, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_1
    :goto_2
    invoke-virtual {v4}, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->isSupportPasswordless()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 79
    iget-object v5, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->supportPasswordlesstMacs:Ljava/util/List;

    invoke-virtual {v4}, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_2
    invoke-virtual {v4}, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->isSupportQRCode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 82
    iget-object v5, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->supportQRCodeMacs:Ljava/util/List;

    invoke-virtual {v4}, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->getQRCodeBluetooth()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 71
    :cond_4
    invoke-virtual {v4}, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->getWearableType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 72
    iget-object v5, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->watchMacs:Ljava/util/List;

    invoke-virtual {v4}, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 86
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    :cond_5
    :try_start_1
    invoke-virtual {v4}, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->getWearableType()I

    move-result v5

    if-nez v5, :cond_1

    .line 74
    iget-object v5, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->braceletMacs:Ljava/util/List;

    invoke-virtual {v4}, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v5, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->watchMacs:Ljava/util/List;

    invoke-virtual {v4}, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_6
    move v0, v1

    .line 90
    goto :goto_0
.end method

.method public static final declared-synchronized getConfig()Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;
    .locals 2

    .prologue
    .line 94
    const-class v1, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->config:Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->isConfigValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    :cond_0
    new-instance v0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;

    invoke-direct {v0}, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->config:Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;

    .line 97
    :cond_1
    sget-object v0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->config:Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isConfigValid()Z
    .locals 4

    .prologue
    .line 192
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 194
    sget-wide v2, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->convertTimestamp:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 195
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getModelByMacAddress(Ljava/lang/String;)Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-static {p1}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 187
    :goto_0
    return-object v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->models:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;

    .line 183
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/security/mobile/wearable/config/WearableConfigModel;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 187
    goto :goto_0
.end method

.method public isBracelet(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-static {p1}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 115
    :goto_0
    return v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->braceletMacs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 115
    goto :goto_0
.end method

.method public isSupportPasswordless(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-static {p1}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 151
    :goto_0
    return v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->supportPasswordlesstMacs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 151
    goto :goto_0
.end method

.method public isSupportQRCode(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-static {p1}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 169
    :goto_0
    return v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->supportQRCodeMacs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 169
    goto :goto_0
.end method

.method public isWatch(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-static {p1}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 133
    :goto_0
    return v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/wearable/config/WearableConfigUtil;->watchMacs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 133
    goto :goto_0
.end method
