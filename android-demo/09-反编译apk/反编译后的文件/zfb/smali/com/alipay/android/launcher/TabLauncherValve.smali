.class public Lcom/alipay/android/launcher/TabLauncherValve;
.super Ljava/lang/Object;
.source "TabLauncherValve.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final MAP_BUNDLE_NAME:Ljava/lang/String; = "android-phone-mobilecommon-map"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 32
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 41
    const-string/jumbo v1, "android-phone-mobilecommon-map"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 42
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 43
    const-string/jumbo v2, "com.alipay.mobile.framework.service.LBSInfoService"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    .line 45
    const-string/jumbo v2, "com.alipay.mobile.framework.service.LBSInfoService"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 44
    const-string/jumbo v2, "upLoadLocation"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 46
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "TabLauncherValve"

    const-string/jumbo v2, "setShareFilter"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/alipay/android/launcher/TabLauncherValve$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/launcher/TabLauncherValve$1;-><init>(Lcom/alipay/android/launcher/TabLauncherValve;)V

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->setShareFilter(Lcom/alipay/mobile/common/share/ShareFilter;)V

    .line 69
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "TabLauncherValve"

    const-string/jumbo v2, "setShareAlert"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/alipay/android/launcher/TabLauncherValve$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/launcher/TabLauncherValve$2;-><init>(Lcom/alipay/android/launcher/TabLauncherValve;)V

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->setShareAlert(Lcom/alipay/mobile/common/share/ShareAlert;)V

    .line 85
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 86
    const-class v1, Lcom/alipay/mobile/framework/service/ShareService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ShareService;

    .line 87
    if-eqz v0, :cond_0

    .line 88
    const-string/jumbo v1, "\u652f\u4ed8\u5b9d"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ShareService;->setAppName(Ljava/lang/String;)V

    .line 89
    new-instance v1, Lcom/alipay/android/launcher/TabLauncherValve$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/launcher/TabLauncherValve$3;-><init>(Lcom/alipay/android/launcher/TabLauncherValve;)V

    .line 104
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ShareService;->setContactShareListener(Lcom/alipay/mobile/common/share/ContactShareListener;)V

    .line 106
    new-instance v1, Lcom/alipay/android/launcher/TabLauncherValve$4;

    invoke-direct {v1, p0}, Lcom/alipay/android/launcher/TabLauncherValve$4;-><init>(Lcom/alipay/android/launcher/TabLauncherValve;)V

    .line 137
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ShareService;->setTencentFilterListener(Lcom/alipay/mobile/common/share/TencentFilterListener;)V

    .line 141
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 142
    if-eqz v0, :cond_1

    .line 143
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string/jumbo v2, "wifiscanSwitch"

    const-string/jumbo v3, "wifiscanSwitch"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_1
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "upLoadLocation"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method
