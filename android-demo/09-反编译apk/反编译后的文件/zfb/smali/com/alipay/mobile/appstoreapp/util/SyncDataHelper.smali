.class public Lcom/alipay/mobile/appstoreapp/util/SyncDataHelper;
.super Ljava/lang/Object;
.source "SyncDataHelper.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-object v0

    .line 37
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 39
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v4, v3

    .line 40
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v4, v2, :cond_2

    move-object v0, v1

    .line 97
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 42
    const-string/jumbo v6, "pl"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 44
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    const-string/jumbo v2, "macSyncType"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const-string/jumbo v2, "APP_DATA_SYNC"

    const-string/jumbo v7, "macSyncType"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    const-string/jumbo v2, "macSyncInfo"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    const-string/jumbo v2, "parentStageCode"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    const-string/jumbo v7, "locale"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 54
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    new-instance v8, Lorg/json/JSONArray;

    const-string/jumbo v2, "appViews"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v3

    .line 61
    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v2, v6, :cond_4

    .line 40
    :cond_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 62
    :cond_4
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 63
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    new-instance v6, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-direct {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>()V

    .line 65
    const-string/jumbo v10, "appId"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAppId(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v10, "alipayApp"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAlipayApp(Z)V

    .line 67
    const-string/jumbo v10, "appSource"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAppSource(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v10, "autoAuthorize"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAutoAuthorize(Z)V

    .line 69
    const-string/jumbo v10, "autoStatus"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAutoStatus(Z)V

    .line 70
    const-string/jumbo v10, "desc"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDesc(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v10, "display"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDisplay(Z)V

    .line 72
    const-string/jumbo v10, "pkgUrlNew"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDownloadUrl(Ljava/lang/String;)V

    .line 73
    const-string/jumbo v10, "extra"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setExtra(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v10, "h5AppCdnBaseUrl"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setH5AppCdnBaseUrl(Ljava/lang/String;)V

    .line 75
    const-string/jumbo v10, "iconLUrl"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setIconUrl(Ljava/lang/String;)V

    .line 76
    const-string/jumbo v10, "id"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setId(I)V

    .line 77
    const-string/jumbo v10, ""

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setIncrementPkgUrl(Ljava/lang/String;)V

    .line 78
    const-string/jumbo v10, "pkgType"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setInstallerType(Ljava/lang/String;)V

    .line 79
    const-string/jumbo v10, "md5"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setMd5(Ljava/lang/String;)V

    .line 80
    const-string/jumbo v10, "movable"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setMovable(Z)V

    .line 81
    const-string/jumbo v10, "name"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setName(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v10, "needAuthorize"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedAuthorize(Z)V

    .line 83
    const-string/jumbo v10, "thirdPkgName"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPackageName(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v10, "pageUrl"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPageUrl(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v10, "recommend"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRecommend(Z)V

    .line 86
    const-string/jumbo v10, "schemeUri"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setSchemeUri(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v10, "slogan"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setSlogan(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v10, "status"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setStatus(Ljava/lang/String;)V

    .line 89
    const-string/jumbo v10, "version"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setVersion(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v6, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setLanguage(Ljava/lang/String;)V

    .line 91
    const-string/jumbo v10, "appId"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 100
    :catch_0
    move-exception v1

    const-string/jumbo v1, "SyncDataHelper"

    const-string/jumbo v2, "JSONObject syncData error!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
