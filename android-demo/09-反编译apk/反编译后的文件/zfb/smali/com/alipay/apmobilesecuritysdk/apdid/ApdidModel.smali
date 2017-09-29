.class public Lcom/alipay/apmobilesecuritysdk/apdid/ApdidModel;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStaticUploadData(Landroid/content/Context;Ljava/util/Map;)Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;"
        }
    .end annotation

    new-instance v4, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;

    invoke-direct {v4}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;-><init>()V

    const-string/jumbo v5, "3"

    const-string/jumbo v2, ""

    const-string/jumbo v1, ""

    const-string/jumbo v3, ""

    const-string/jumbo v0, ""

    const-string/jumbo v6, "umid"

    const-string/jumbo v7, ""

    invoke-static {p1, v6, v7}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorage;->getPrivateApdid(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->getApdid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorage;->getPublicApdid(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->getApdid()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v3}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/apdid/v2/ApdidStorageV2;->getPrivateApdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/apdid/v2/ApdidStorageV2;->getPublicApdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    const-string/jumbo v7, "android"

    invoke-virtual {v4, v7}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->setOs(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->setPriApdid(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->setPubApdid(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->setToken(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->setUmidToken(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->setLastTime(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->setVersion(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->getStaticInfo(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->setDataMap(Ljava/util/Map;)V

    return-object v4
.end method
