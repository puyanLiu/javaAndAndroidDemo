.class public Lcom/alipay/mobile/about/service/UpdateUtils;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

.field private static b:Ljava/lang/Object;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/mobile/about/service/UpdateUtils;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/about/service/UpdateUtils;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildClientVersionServiceReq()Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;
    .locals 2

    new-instance v0, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;

    invoke-direct {v0}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;->clientId:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;->osVersion:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getProductID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;->productId:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;->productVersion:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/about/service/ClientFileUtils;->getApkMD5()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;->apkMd5:Ljava/lang/String;

    return-object v0
.end method

.method public static convert(Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;)Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    invoke-direct {v0}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->downloadURL:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->downloadURL:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->fullMd5:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->fullMd5:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->lightUpgradeURL:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->lightUpgradeURL:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->lightUpgradeMd5:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->lightUpgradeMd5:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->guideMemo:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->guideMemo:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->memo:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->memo:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->newestVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->newestVersion:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->resultStatus:I

    iput v1, v0, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->resultStatus:I

    :cond_0
    return-object v0
.end method

.method public static getMainActivity()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/mobile/about/service/UpdateUtils;->c:Z

    return v0
.end method

.method public static getUpdateRes()Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/about/service/UpdateUtils;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    return-object v0
.end method

.method public static initMainActivity()V
    .locals 2

    sget-boolean v0, Lcom/alipay/mobile/about/service/UpdateUtils;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/about/service/UpdateUtils;->waitForSdkActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TabLauncher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/about/service/UpdateUtils;->c:Z

    :cond_0
    return-void
.end method

.method public static setUpdateRes(Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;)V
    .locals 0

    sput-object p0, Lcom/alipay/mobile/about/service/UpdateUtils;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    return-void
.end method

.method public static updateNotify()V
    .locals 2

    sget-object v1, Lcom/alipay/mobile/about/service/UpdateUtils;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/about/service/UpdateUtils;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static waitForSdkActivity()Landroid/app/Activity;
    .locals 1

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/alipay/mobile/about/service/UpdateUtils;->waitForSdkActivity(I)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static waitForSdkActivity(I)Landroid/app/Activity;
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :cond_1
    return-object v0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    mul-int/lit16 v1, p0, 0x3e8

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-gtz v1, :cond_1

    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static waitUpdateDialog()V
    .locals 2

    sget-object v1, Lcom/alipay/mobile/about/service/UpdateUtils;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/about/service/UpdateUtils;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
