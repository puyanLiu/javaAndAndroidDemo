.class public Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;
.super Ljava/lang/Object;


# static fields
.field private static b:Z


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/util/Map;)Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidModel;->getStaticUploadData(Landroid/content/Context;Ljava/util/Map;)Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/security/mobile/module/http/UploadFactory;->createV2(Landroid/content/Context;)Lcom/alipay/security/mobile/module/http/v2/IUploadV2;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/alipay/security/mobile/module/http/v2/IUploadV2;->updateStaticData(Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;)Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/LOG;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/http/UploadFactory;->createV2(Landroid/content/Context;)Lcom/alipay/security/mobile/module/http/v2/IUploadV2;

    move-result-object v0

    const-string/jumbo v1, "android"

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/alipay/security/mobile/module/http/v2/IUploadV2;->getAppList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/model/AppListResponseModel;

    move-result-object v0

    iget-boolean v1, v0, Lcom/alipay/security/mobile/module/http/model/AppListResponseModel;->success:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->setAppListUpdateRunning(Z)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/alipay/security/mobile/module/http/model/AppListResponseModel;->appListVersion:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/security/mobile/module/http/model/AppListResponseModel;->appListData:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/alipay/apmobilesecuritysdk/apdid/SettingsStorage;->saveAppVersionAndList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->setAppListUpdateRunning(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/LOG;->logException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->setAppListUpdateRunning(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->setAppListUpdateRunning(Z)V

    throw v0
.end method

.method public static getLocalApdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, ""

    :try_start_0
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/apdid/TokenStorage;->getApdid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorage;->getApdid(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->getApdid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/apdid/TokenStorage;->saveApdid(Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;)V

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->getApdid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/apdid/v2/ApdidStorageV2;->getApdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/util/LocalRandomStr;->getRandomStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getLocalApdidToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, ""

    :try_start_0
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/apdid/TokenStorage;->getApdidToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorage;->getApdid(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/apdid/TokenStorage;->saveApdid(Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized isAppListUpdateRunning()Z
    .locals 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setAppListUpdateRunning(Z)V
    .locals 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public initApdid(Ljava/util/Map;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string/jumbo v8, ""

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/log/ap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "security-sdk-token"

    const-string/jumbo v4, "3.0.2.20150929"

    const-string/jumbo v0, "tid"

    const-string/jumbo v5, ""

    invoke-static {p1, v0, v5}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "utdid"

    const-string/jumbo v6, ""

    invoke-static {p1, v0, v6}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorage;->getApdid(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->getApdid()Ljava/lang/String;

    move-result-object v7

    :cond_1
    new-instance v0, Lcom/alipay/apmobilesecuritysdk/log/LogTag;

    invoke-direct/range {v0 .. v7}, Lcom/alipay/apmobilesecuritysdk/log/LogTag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/log/LogTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v1, v0}, Lcom/alipay/security/mobile/module/commonutils/LOG;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "userId"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    new-instance v0, Ljava/util/Date;

    const/16 v1, 0x73

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    new-instance v1, Ljava/util/Date;

    const/16 v2, 0x73

    const/16 v3, 0xa

    const/16 v4, 0xb

    const/16 v5, 0x17

    const/16 v6, 0x3b

    const/16 v7, 0x3b

    invoke-direct/range {v1 .. v7}, Ljava/util/Date;-><init>(IIIIII)V

    invoke-virtual {v13, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v13, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v9

    :goto_1
    if-eqz v0, :cond_5

    move v0, v9

    :goto_2
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorage;->getApdid(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;

    move-result-object v0

    if-nez v0, :cond_7

    move v0, v9

    :goto_3
    if-eqz v0, :cond_10

    invoke-direct {p0, p1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->a(Ljava/util/Map;)Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->isTrueSuccess()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->getLogSwitch()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/alipay/apmobilesecuritysdk/apdid/SettingsStorage;->saveLogSwitch(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/apdid/SettingsStorage;->getAppListVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->getAppListVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->getAppListVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->isAppListUpdateRunning()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->setAppListUpdateRunning(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v3, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager$1;

    invoke-direct {v3, p0, v12, v1, v2}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager$1;-><init>(Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_4
    :try_start_2
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->getStaticInfoHash(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    new-instance v2, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;

    invoke-direct {v2, v0, v1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;-><init>(Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorage;->saveApdid(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;)V

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/apdid/TokenStorage;->saveApdid(Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;)V

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/alipay/apmobilesecuritysdk/apdid/v2/ApdidStorageV2;->savePublicApdid(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;)V

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/alipay/apmobilesecuritysdk/apdid/SettingsStorage;->saveApdidValidTime(Landroid/content/Context;J)V

    :cond_3
    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->getToken()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :goto_5
    :try_start_3
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/http/UploadFactory;->createV2(Landroid/content/Context;)Lcom/alipay/security/mobile/module/http/v2/IUploadV2;

    move-result-object v1

    new-instance v2, Lcom/alipay/apmobilesecuritysdk/log/LogUploadManager;

    invoke-direct {v2, v11, v1}, Lcom/alipay/apmobilesecuritysdk/log/LogUploadManager;-><init>(Ljava/lang/String;Lcom/alipay/security/mobile/module/http/v2/IUploadV2;)V

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/alipay/apmobilesecuritysdk/log/LogUploadManager;->uploadLog(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :goto_6
    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/LOG;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    move v0, v10

    goto/16 :goto_1

    :cond_5
    :try_start_4
    new-instance v0, Ljava/util/Date;

    const/16 v1, 0x73

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    new-instance v1, Ljava/util/Date;

    const/16 v2, 0x73

    const/16 v3, 0xb

    const/16 v4, 0xc

    const/16 v5, 0x17

    const/16 v6, 0x3b

    const/16 v7, 0x3b

    invoke-direct/range {v1 .. v7}, Ljava/util/Date;-><init>(IIIIII)V

    invoke-virtual {v13, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v13, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v9

    goto/16 :goto_2

    :cond_6
    move v0, v10

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v9

    goto/16 :goto_3

    :cond_8
    move v0, v10

    goto/16 :goto_3

    :cond_9
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->reset()V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->getStaticInfoHash(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[*]currentDeviceInfoHash = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/Dbg;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorage;->getApdid(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;

    move-result-object v1

    if-nez v1, :cond_a

    const-string/jumbo v0, "[*] LocalData = null"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/Dbg;->log(Ljava/lang/String;)V

    move v0, v9

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->getDeviceInfoHash()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[*]storedDeviceInfoHash = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/security/mobile/module/commonutils/Dbg;->log(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v9

    :goto_7
    if-eqz v0, :cond_c

    const-string/jumbo v0, "[*]DeviceInfo Changed."

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/Dbg;->log(Ljava/lang/String;)V

    move v0, v9

    goto/16 :goto_3

    :cond_b
    move v0, v10

    goto :goto_7

    :cond_c
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/apdid/TokenStorage;->isTokenValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "[*]Token is out of date."

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/Dbg;->log(Ljava/lang/String;)V

    move v0, v9

    goto/16 :goto_3

    :cond_d
    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "[*]Token is empty."

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/Dbg;->log(Ljava/lang/String;)V

    move v0, v9

    goto/16 :goto_3

    :cond_e
    move v0, v10

    goto/16 :goto_3

    :cond_f
    if-eqz v0, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Server error, result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->getResultCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/LOG;->logMessage(Ljava/lang/String;)V

    :cond_10
    :goto_8
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->getLocalApdidToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_11
    const-string/jumbo v0, "Server error, response is null"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/LOG;->logMessage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_6

    :catch_2
    move-exception v1

    goto/16 :goto_4
.end method
