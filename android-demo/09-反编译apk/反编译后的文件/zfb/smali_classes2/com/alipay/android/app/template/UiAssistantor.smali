.class public Lcom/alipay/android/app/template/UiAssistantor;
.super Ljava/lang/Object;
.source "UiAssistantor.java"


# static fields
.field protected static a:Lcom/alipay/mobile/h5container/api/H5Page;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/template/UiAssistantor;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroyH5WebView(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 3

    .prologue
    .line 108
    if-eqz p0, :cond_0

    .line 110
    :try_start_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 111
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/template/UiAssistantor;->a:Lcom/alipay/mobile/h5container/api/H5Page;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 118
    if-eqz v0, :cond_1

    .line 119
    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/UiAssistantor;->inflateWebView(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/template/UiAssistantor;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 121
    :cond_1
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    const-string/jumbo v1, "UiAssistantor"

    const-string/jumbo v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getInstance()Lcom/alipay/mobile/framework/locale/LocaleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getAlipayLocaleFlag()I

    move-result v0

    .line 39
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 40
    const-string/jumbo v0, "zh_CN"

    .line 48
    :goto_0
    return-object v0

    .line 41
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 42
    const-string/jumbo v0, "zh_HK"

    goto :goto_0

    .line 43
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 44
    const-string/jumbo v0, "zh_TW"

    goto :goto_0

    .line 45
    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 46
    const-string/jumbo v0, "en_US"

    goto :goto_0

    .line 48
    :cond_3
    const-string/jumbo v0, "zh_CN"

    goto :goto_0
.end method

.method public static inflateWebView(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 77
    sget-object v0, Lcom/alipay/android/app/template/UiAssistantor;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/alipay/android/app/template/UiAssistantor;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 79
    sput-object v1, Lcom/alipay/android/app/template/UiAssistantor;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 104
    :goto_0
    return-object v0

    .line 82
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 83
    const-class v2, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 84
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 86
    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_1
    const-string/jumbo v3, "showTitleBar"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    const-string/jumbo v3, "showToolBar"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    new-instance v3, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v3}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    .line 91
    invoke-virtual {v3, v2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 92
    if-eqz v0, :cond_2

    .line 93
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "inflate"

    const-string/jumbo v4, "uiassistantor"

    invoke-interface {v1, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v0, p0, v3}, Lcom/alipay/mobile/h5container/service/H5Service;->createPage(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Bundle;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/alipay/android/app/template/UiAssistantor$1;

    invoke-direct {v1}, Lcom/alipay/android/app/template/UiAssistantor$1;-><init>()V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->setHandler(Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 104
    goto :goto_0
.end method

.method public static loadImage(Landroid/view/View;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ILcom/flybird/ILayoutListener;Z)V
    .locals 10

    .prologue
    .line 32
    const/4 v0, 0x2

    new-array v3, v0, [I

    const/4 v0, 0x0

    aput p2, v3, v0

    const/4 v0, 0x1

    aput p3, v3, v0

    .line 33
    invoke-static {}, Lcom/alipay/android/app/template/TemplateImageLoader;->getInstance()Lcom/alipay/android/app/template/TemplateImageLoader;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p11

    invoke-virtual/range {v0 .. v9}, Lcom/alipay/android/app/template/TemplateImageLoader;->loadNetImage(Landroid/view/View;Ljava/lang/String;[IZLjava/lang/String;Ljava/lang/String;ILcom/flybird/ILayoutListener;Z)V

    .line 35
    return-void
.end method

.method public static openWeb(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 54
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 55
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 56
    const-class v2, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 55
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 59
    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 60
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    const-string/jumbo v2, "showTitleBar"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    const-string/jumbo v2, "showToolBar"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    new-instance v2, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v2}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    .line 67
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 68
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/h5container/service/H5Service;->startPage(Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/h5container/api/H5Bundle;)V

    .line 72
    :cond_1
    return-void
.end method
