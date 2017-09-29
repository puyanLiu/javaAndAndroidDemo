.class public Lcom/alipay/mobile/about/service/UpdateDialogListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

.field private b:Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;

.field private c:Lcom/alipay/mobile/framework/service/common/CacheManagerService;


# direct methods
.method public constructor <init>(Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;Lcom/alipay/mobile/framework/service/common/CacheManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/about/service/UpdateDialogListener;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    iput-object p1, p0, Lcom/alipay/mobile/about/service/UpdateDialogListener;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    iput-object p2, p0, Lcom/alipay/mobile/about/service/UpdateDialogListener;->b:Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;

    iput-object p3, p0, Lcom/alipay/mobile/about/service/UpdateDialogListener;->c:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public later()V
    .locals 10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateDialogListener;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    iget v0, v0, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->resultStatus:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-static {}, Lcom/alipay/mobile/about/service/UpdateUtils;->updateNotify()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateDialogListener;->c:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getDiskCacheService()Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    move-result-object v0

    const-string/jumbo v3, "about_ignore_update_version"

    iget-object v2, p0, Lcom/alipay/mobile/about/service/UpdateDialogListener;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    iget-object v2, v2, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->newestVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x240c8400

    const-string/jumbo v9, "txt"

    move-object v2, v1

    invoke-virtual/range {v0 .. v9}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;->getCacheLocationInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const-string/jumbo v2, "MM-0104-1"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    const-string/jumbo v2, "upgrade"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getAccuracy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/about/service/UpdateDialogListener;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    const-string/jumbo v0, "newversion"

    iget-object v2, p0, Lcom/alipay/mobile/about/service/UpdateDialogListener;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    iget-object v2, v2, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->newestVersion:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    const-string/jumbo v0, "now"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/about/service/UpdateDialogListener;->startDownload()V

    :cond_1
    const/4 v0, -0x2

    if-ne v0, p2, :cond_2

    const-string/jumbo v0, "later"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/about/service/UpdateDialogListener;->later()V

    :cond_2
    return-void
.end method

.method public startDownload()V
    .locals 10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateDialogListener;->c:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getDiskCacheService()Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    move-result-object v0

    const-string/jumbo v3, "update_version_key"

    iget-object v2, p0, Lcom/alipay/mobile/about/service/UpdateDialogListener;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    iget-object v2, v2, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->newestVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x240c8400

    const-string/jumbo v9, "txt"

    move-object v2, v1

    invoke-virtual/range {v0 .. v9}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateDialogListener;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    iget v0, v0, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->resultStatus:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateDialogListener;->b:Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;

    iget-object v1, p0, Lcom/alipay/mobile/about/service/UpdateDialogListener;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    iget-object v1, v1, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->downloadURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/about/service/UpdateDialogListener;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    iget-object v2, v2, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->fullMd5:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/about/service/UpdateDialogListener;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    iget-object v3, v3, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->lightUpgradeURL:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/about/service/UpdateDialogListener;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    iget-object v4, v4, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->lightUpgradeMd5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateDialogListener;->b:Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/a/f;->b:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->showProgressDialog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateDialogListener;->b:Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;

    iget-object v1, p0, Lcom/alipay/mobile/about/service/UpdateDialogListener;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    iget-object v1, v1, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->downloadURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/about/service/UpdateDialogListener;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    iget-object v2, v2, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->fullMd5:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/about/service/UpdateDialogListener;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    iget-object v3, v3, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->lightUpgradeURL:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/about/service/UpdateDialogListener;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    iget-object v4, v4, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->lightUpgradeMd5:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_0
    .end packed-switch
.end method
