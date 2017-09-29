.class public Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorage;
.super Ljava/lang/Object;


# static fields
.field public static final PRIVATE_PREFS_KEY:Ljava/lang/String; = "device_feature_prefs_key"

.field public static final PRIVATE_PREFS_NAME:Ljava/lang/String; = "device_feature_prefs_name"

.field public static final PUBLIC_FILE_KEY:Ljava/lang/String; = "device_feature_file_key"

.field public static final PUBLIC_FILE_NAME:Ljava/lang/String; = "device_feature_file_name"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceStorageModel(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorageModel;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "device_feature_prefs_name"

    const-string/jumbo v2, "device_feature_prefs_key"

    invoke-static {p0, v0, v2}, Lcom/alipay/apmobilesecuritysdk/util/PubPriStorageUtil;->getPrivateData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "device_feature_file_name"

    const-string/jumbo v2, "device_feature_file_key"

    invoke-static {v0, v2}, Lcom/alipay/apmobilesecuritysdk/util/PubPriStorageUtil;->getDataFromPublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorageModel;

    invoke-direct {v0}, Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorageModel;-><init>()V

    const-string/jumbo v3, "imei"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorageModel;->setImei(Ljava/lang/String;)V

    const-string/jumbo v3, "imsi"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorageModel;->setImsi(Ljava/lang/String;)V

    const-string/jumbo v3, "mac"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorageModel;->setMac(Ljava/lang/String;)V

    const-string/jumbo v3, "bluetoothmac"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorageModel;->setBluetoothMac(Ljava/lang/String;)V

    const-string/jumbo v3, "gsi"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorageModel;->setGsi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/LOG;->logException(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static saveDeviceStorageModel(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorageModel;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "imei"

    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorageModel;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "imsi"

    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorageModel;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "mac"

    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorageModel;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "bluetoothmac"

    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorageModel;->getBluetoothMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "gsi"

    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorageModel;->getGsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "device_feature_file_name"

    const-string/jumbo v2, "device_feature_file_key"

    invoke-static {v1, v2, v0}, Lcom/alipay/apmobilesecuritysdk/util/PubPriStorageUtil;->writeDataToPublic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "device_feature_prefs_name"

    const-string/jumbo v2, "device_feature_prefs_key"

    invoke-static {p0, v1, v2, v0}, Lcom/alipay/apmobilesecuritysdk/util/PubPriStorageUtil;->writePrivateData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/LOG;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
