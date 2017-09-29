.class public Lcom/alipay/android/app/assist/MspAssistUtil;
.super Ljava/lang/Object;
.source "MspAssistUtil.java"


# static fields
.field private static a:Lcom/alipay/android/app/template/ITemplateClickCallback;

.field private static b:Lcom/alipay/mobile/h5container/api/H5Page;

.field private static c:Ljava/lang/String;

.field private static d:Lcom/alipay/android/app/template/TemplatePasswordService;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/Object;

.field private static h:Ljava/lang/String;

.field private static i:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

.field private static final j:Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;

.field private static k:Landroid/content/res/Resources;

.field private static l:Lcom/alipay/android/app/alikeyboard/FlybirdTemplateKeyboardService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    sput-object v1, Lcom/alipay/android/app/assist/MspAssistUtil;->a:Lcom/alipay/android/app/template/ITemplateClickCallback;

    .line 442
    sput-object v1, Lcom/alipay/android/app/assist/MspAssistUtil;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 628
    sput-object v1, Lcom/alipay/android/app/assist/MspAssistUtil;->d:Lcom/alipay/android/app/template/TemplatePasswordService;

    .line 711
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->e:Ljava/lang/String;

    .line 712
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->f:Ljava/lang/String;

    .line 713
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->g:Ljava/lang/Object;

    .line 748
    const-string/jumbo v0, "a502"

    sput-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->h:Ljava/lang/String;

    .line 885
    new-instance v0, Lcom/alipay/android/app/assist/d;

    invoke-direct {v0}, Lcom/alipay/android/app/assist/d;-><init>()V

    sput-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->j:Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;

    .line 1047
    sput-object v1, Lcom/alipay/android/app/assist/MspAssistUtil;->k:Landroid/content/res/Resources;

    .line 1056
    sput-object v1, Lcom/alipay/android/app/assist/MspAssistUtil;->l:Lcom/alipay/android/app/alikeyboard/FlybirdTemplateKeyboardService;

    .line 114
    return-void
.end method

.method public static A()V
    .locals 2

    .prologue
    .line 1043
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1044
    const-string/jumbo v1, "20000125"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V

    .line 1045
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->e:Ljava/lang/String;

    .line 1046
    return-void
.end method

.method public static B()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 1050
    sget-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->k:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 1051
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    const-string/jumbo v1, "android-phone-wallet-phonecashier"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/BundleContext;->getResourcesByBundle(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->k:Landroid/content/res/Resources;

    .line 1053
    :cond_0
    sget-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->k:Landroid/content/res/Resources;

    return-object v0
.end method

.method public static C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1087
    invoke-static {}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getInstance()Lcom/alipay/mobile/framework/locale/LocaleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getAlipayLocaleDes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static D()V
    .locals 1

    .prologue
    .line 1091
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->k:Landroid/content/res/Resources;

    .line 1092
    return-void
.end method

.method static synthetic E()Z
    .locals 1

    .prologue
    .line 907
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic F()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
    .locals 1

    .prologue
    .line 869
    sget-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->i:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    return-object v0
.end method

.method static synthetic G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    sget-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic H()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 713
    sget-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->g:Ljava/lang/Object;

    return-object v0
.end method

.method private static I()Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;
    .locals 2

    .prologue
    .line 121
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 124
    const-class v1, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(FLjava/lang/String;)Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 474
    invoke-static {p0, p1}, Lcom/alipay/android/app/html/Html;->a(FLjava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 445
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 447
    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 448
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 449
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string/jumbo v2, "showTitleBar"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 451
    const-string/jumbo v2, "showToolBar"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 452
    new-instance v2, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v2}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    .line 453
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 454
    invoke-virtual {v0, p0, v2}, Lcom/alipay/mobile/h5container/service/H5Service;->createPage(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Bundle;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    .line 455
    sput-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    new-instance v1, Lcom/alipay/android/app/assist/f;

    invoke-direct {v1}, Lcom/alipay/android/app/assist/f;-><init>()V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->setHandler(Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;)V

    .line 462
    const-string/jumbo v0, "inflate webview from h5page"

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    .line 463
    sget-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 464
    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;Landroid/app/Activity;I)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 637
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 638
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 640
    const-class v1, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 639
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 643
    sget-object v1, Lcom/alipay/android/app/assist/MspAssistUtil;->d:Lcom/alipay/android/app/template/TemplatePasswordService;

    if-nez v1, :cond_0

    .line 644
    new-instance v1, Lcom/alipay/android/app/assist/i;

    invoke-direct {v1}, Lcom/alipay/android/app/assist/i;-><init>()V

    sput-object v1, Lcom/alipay/android/app/assist/MspAssistUtil;->d:Lcom/alipay/android/app/template/TemplatePasswordService;

    .line 659
    :cond_0
    const/4 v1, 0x1

    if-eq p3, v1, :cond_2

    .line 660
    new-instance v6, Lcom/alipay/android/app/alikeyboard/FlybirdTemplateKeyboardService;

    invoke-direct {v6}, Lcom/alipay/android/app/alikeyboard/FlybirdTemplateKeyboardService;-><init>()V

    .line 664
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/android/app/json/JSONObject;->getJSONObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 665
    :goto_1
    sget-object v7, Lcom/alipay/android/app/assist/MspAssistUtil;->d:Lcom/alipay/android/app/template/TemplatePasswordService;

    const-string/jumbo v1, "-flex"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    move-object v1, p0

    move-object v4, p2

    move-object v5, v3

    .line 663
    invoke-virtual/range {v0 .. v8}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->generateViewForUnreusePageWithKeyboard(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Lcom/alipay/android/app/template/TemplateKeyboardService;Lcom/alipay/android/app/template/TemplatePasswordService;Z)Landroid/view/View;

    move-result-object v0

    .line 667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v9

    .line 668
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "generateViewtime:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "msms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 670
    return-object v0

    :cond_1
    move-object v2, v3

    .line 664
    goto :goto_1

    :cond_2
    move-object v6, v3

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 137
    const-class v1, Lcom/alipay/android/phone/secauthenticator/kcart/KcartService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartService;

    .line 133
    invoke-virtual {v0}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartService;->extract()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .line 139
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 142
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static a(Landroid/text/Spanned;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    invoke-static {p0}, Lcom/alipay/android/app/html/Html;->a(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    .line 337
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getIpInfoByHost(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-result-object v0

    .line 339
    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIp()Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 346
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 347
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 682
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 684
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 685
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 687
    const-class v3, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 686
    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    .line 683
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;->requestMspData(Ljava/util/Map;)Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;

    move-result-object v0

    .line 689
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    .line 690
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "postDataByWalletRpctime:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "msms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 692
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 693
    const-string/jumbo v2, "namespace"

    iget-object v3, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->api_nsp:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    const-string/jumbo v2, "api_name"

    iget-object v3, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->api_nm:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    const-string/jumbo v2, "api_version"

    iget-object v3, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->api_ver:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    const-string/jumbo v2, "code"

    iget-object v3, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->code:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    const-string/jumbo v2, "params"

    iget-object v3, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->params:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    const-string/jumbo v2, "mspParam"

    iget-object v3, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->mspParam:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "namespace:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->api_nsp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 702
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "api_name:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->api_nm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 703
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "api_version:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->api_ver:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 704
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 705
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "params:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->params:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mspparams:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->mspParam:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 708
    return-object v1
.end method

.method public static a(I)V
    .locals 7

    .prologue
    .line 934
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 935
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 937
    const-class v1, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 936
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 938
    if-eqz v0, :cond_0

    .line 940
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->onPayFinish(ILandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 941
    if-eqz v0, :cond_0

    .line 942
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 958
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->a:Lcom/alipay/android/app/template/ITemplateClickCallback;

    .line 959
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->k:Landroid/content/res/Resources;

    .line 962
    :goto_1
    return-void

    .line 942
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/json/JSONObject;

    .line 943
    const-string/jumbo v2, "exception"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 944
    const-string/jumbo v2, "de"

    .line 945
    const-string/jumbo v3, "0060012"

    .line 946
    const-string/jumbo v4, "exception"

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 944
    invoke-static {v2, v3, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 962
    :catch_0
    move-exception v0

    goto :goto_1

    .line 949
    :cond_2
    const-string/jumbo v2, "winName"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 950
    const-string/jumbo v3, "netType"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 951
    const-string/jumbo v4, "mode"

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 952
    const-string/jumbo v5, "status"

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 953
    const-string/jumbo v6, "time"

    invoke-virtual {v0, v6}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 948
    invoke-static {v2, v3, v4, v5, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 492
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 494
    if-nez v0, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    const-class v1, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    .line 499
    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;->getUserInfoSessionId()Ljava/lang/String;

    move-result-object v1

    .line 503
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    const/4 v0, 0x0

    .line 507
    packed-switch p0, :pswitch_data_0

    .line 518
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 519
    const-string/jumbo v2, "orderSuffix"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-static {}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayAssist;->a()Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayAssist;

    move-result-object v2

    .line 521
    new-instance v3, Lcom/alipay/android/app/assist/g;

    invoke-direct {v3}, Lcom/alipay/android/app/assist/g;-><init>()V

    .line 520
    invoke-virtual {v2, v0, v3}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayAssist;->a(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    .line 536
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v2, ""

    .line 537
    const-string/jumbo v3, "20000125"

    .line 536
    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 509
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "biz_type=\"bic\"&bic_type=\"bracelet\"&extern_token=\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 510
    const-string/jumbo v1, "\"&action=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 509
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 513
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "biz_type=\"fingerprint\"&extern_token=\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"&fingerprintSwitch=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 507
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 575
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 576
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "20000125"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_DATA"

    .line 579
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 578
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 582
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 295
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 296
    const-string/jumbo v1, "msp"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->k(Ljava/lang/String;)I

    move-result v1

    .line 295
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 297
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/alipay/android/app/pay/GlobalConstant;->loadProperties(Landroid/content/Context;Ljava/io/InputStream;Z)V

    .line 298
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    invoke-static {p0}, Lcom/alipay/android/app/pay/GlobalConstant;->convertProperties(Landroid/content/Context;)V

    .line 304
    invoke-static {p0}, Lcom/alipay/mobile/common/info/AppInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/AppInfo;

    .line 305
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v0

    .line 306
    sput-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG:Z

    .line 307
    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 310
    const-string/jumbo v1, "content://com.alipay.setting/SafePayServerUrl"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 311
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 313
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    .line 316
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 319
    :cond_1
    return-void

    .line 299
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/widget/EditText;ZLandroid/view/View;Landroid/view/View;)V
    .locals 7

    .prologue
    .line 1059
    sget-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->l:Lcom/alipay/android/app/alikeyboard/FlybirdTemplateKeyboardService;

    if-nez v0, :cond_0

    .line 1060
    new-instance v0, Lcom/alipay/android/app/alikeyboard/FlybirdTemplateKeyboardService;

    invoke-direct {v0}, Lcom/alipay/android/app/alikeyboard/FlybirdTemplateKeyboardService;-><init>()V

    sput-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->l:Lcom/alipay/android/app/alikeyboard/FlybirdTemplateKeyboardService;

    .line 1062
    :cond_0
    if-eqz p1, :cond_1

    .line 1064
    sget-object v2, Lcom/alipay/android/app/template/KeyboardType;->num:Lcom/alipay/android/app/template/KeyboardType;

    .line 1068
    :goto_0
    sget-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->l:Lcom/alipay/android/app/alikeyboard/FlybirdTemplateKeyboardService;

    .line 1069
    const/4 v5, 0x1

    const/16 v6, 0xc8

    move-object v1, p0

    move-object v3, p3

    move-object v4, p2

    .line 1068
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/app/alikeyboard/FlybirdTemplateKeyboardService;->showKeyboard(Landroid/widget/EditText;Lcom/alipay/android/app/template/KeyboardType;Landroid/view/View;Landroid/view/View;ZI)Z

    .line 1070
    return-void

    .line 1066
    :cond_1
    sget-object v2, Lcom/alipay/android/app/template/KeyboardType;->text:Lcom/alipay/android/app/template/KeyboardType;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/template/ITemplateClickCallback;)V
    .locals 0

    .prologue
    .line 116
    sput-object p0, Lcom/alipay/android/app/assist/MspAssistUtil;->a:Lcom/alipay/android/app/template/ITemplateClickCallback;

    return-void
.end method

.method public static a(Ljava/lang/Object;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->I()Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;->readBankCard(Ljava/lang/Object;Landroid/app/Activity;)V

    .line 163
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 918
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 923
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 925
    const-class v1, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 924
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 926
    if-eqz v0, :cond_0

    .line 927
    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->destoryView(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)V
    .locals 3

    .prologue
    .line 608
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 609
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 610
    const-class v1, Lcom/alipay/mobile/security/faceauth/api/FaceAuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/faceauth/api/FaceAuthService;

    .line 612
    new-instance v1, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;

    invoke-direct {v1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;-><init>()V

    .line 614
    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->setAction(I)V

    .line 615
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->setAppID(I)V

    .line 617
    new-instance v2, Lcom/alipay/android/app/assist/h;

    invoke-direct {v2, p1, p0}, Lcom/alipay/android/app/assist/h;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/api/FaceAuthService;->auth(Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;)V

    .line 626
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 330
    invoke-static {}, Lcom/alipay/android/mini/fingerprint/ActionCallBackManager;->a()Lcom/alipay/android/mini/fingerprint/ActionCallBackManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/mini/fingerprint/ActionCallBackManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "logException----"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/android/app/base/util/Tools;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 469
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    .line 470
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->fromString(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    move-result-object v1

    .line 469
    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->exception(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 471
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 1083
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "MspPayApp"

    invoke-static {p0}, Lcom/alipay/android/app/base/util/Tools;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 850
    :try_start_0
    new-instance v0, Lcom/alipay/android/app/assist/FlybirdKeyboard;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/assist/FlybirdKeyboard;-><init>(Landroid/view/View;)V

    .line 852
    invoke-virtual {v0}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    const/4 v0, 0x1

    .line 865
    :goto_0
    return v0

    .line 856
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 857
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 859
    const-class v2, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 858
    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 860
    if-eqz v0, :cond_1

    .line 861
    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->onBackPressed(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 863
    goto :goto_0

    .line 865
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 787
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 789
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 790
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 792
    const-class v1, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 791
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 794
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 795
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 797
    new-instance v3, Lcom/alipay/android/app/assist/k;

    invoke-direct {v3, p4}, Lcom/alipay/android/app/assist/k;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)V

    .line 813
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, p3}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 815
    const-string/jumbo v2, "forceUpdate"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 816
    const-string/jumbo v2, "forceUpdate"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    :goto_0
    move-object v4, p2

    .line 819
    check-cast v4, Landroid/app/Activity;

    const-string/jumbo v1, "-flex"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p1

    move-object v2, p0

    move-object v5, p3

    .line 818
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->handleBirdResponseForUnreusePage(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;Ljava/lang/String;ZZ)Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    move-result-object v0

    .line 820
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v9

    .line 821
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleBirdResponsetime:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "msms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 822
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    if-ne v0, v1, :cond_0

    .line 825
    :goto_1
    return v8

    :cond_0
    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    move v7, v8

    goto :goto_0
.end method

.method public static a(Lcom/alipay/android/app/data/InteractionData;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    if-eqz p0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/alipay/android/app/data/InteractionData;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 197
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 202
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 205
    const-class v1, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    .line 201
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 217
    return-object v0

    .line 193
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicHeader;

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/http/message/BasicHeader;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    .line 542
    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getApdidToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 999
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 1000
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1002
    const-class v1, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1001
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 1003
    if-eqz v0, :cond_0

    .line 1004
    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->onQuikpayActivityCreate(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1013
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 1014
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1016
    const-class v1, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1015
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 1017
    if-eqz v0, :cond_0

    .line 1018
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->callOnreload(Ljava/lang/String;Landroid/view/View;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1022
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 829
    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 830
    sget-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->a:Lcom/alipay/android/app/template/ITemplateClickCallback;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 831
    const-string/jumbo v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 832
    if-eqz v3, :cond_0

    array-length v0, v3

    if-ltz v0, :cond_0

    .line 833
    array-length v4, v3

    move v0, v1

    .line 834
    :goto_0
    if-lt v0, v4, :cond_2

    .line 844
    :cond_0
    sget-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->a:Lcom/alipay/android/app/template/ITemplateClickCallback;

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/ITemplateClickCallback;->onClickCallback(Ljava/lang/String;)V

    .line 846
    :cond_1
    return-void

    .line 835
    :cond_2
    aget-object v5, v3, v0

    .line 837
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 836
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 838
    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 839
    if-eqz v5, :cond_3

    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_3

    .line 840
    aget-object v6, v5, v1

    aget-object v5, v5, v8

    invoke-virtual {v2, v6, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 351
    invoke-static {p1}, Lcom/alipay/android/app/source/utils/UrlUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v1

    .line 355
    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->setErrorByHost(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->I()Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;->isQihooGuardOpened()Z

    move-result v0

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    .line 547
    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1073
    sget-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->l:Lcom/alipay/android/app/alikeyboard/FlybirdTemplateKeyboardService;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 1074
    sget-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->l:Lcom/alipay/android/app/alikeyboard/FlybirdTemplateKeyboardService;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/alikeyboard/FlybirdTemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    .line 1076
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1079
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "MspPayApp"

    invoke-interface {v0, v1, p0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    return-void
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 174
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->I()Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;->isQihooInstalled()Z

    move-result v0

    .line 178
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->I()Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;->readQihooSMS()Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 551
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    .line 552
    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "apdid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 554
    return-object v0
.end method

.method static synthetic d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 601
    sput-object p0, Lcom/alipay/android/app/assist/MspAssistUtil;->c:Ljava/lang/String;

    return-void
.end method

.method public static e()V
    .locals 3

    .prologue
    .line 221
    new-instance v0, Lcom/alipay/android/app/assist/e;

    invoke-direct {v0}, Lcom/alipay/android/app/assist/e;-><init>()V

    .line 259
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v1

    .line 260
    const-string/jumbo v2, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.exit()"

    .line 259
    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice(Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    .line 261
    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 965
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "keyboard-lj"

    const-string/jumbo v2, "MspAssistUtil-hideKeyboard-enter"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    :try_start_0
    check-cast p0, Landroid/app/Activity;

    .line 968
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 969
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/app/alikeyboard/KeyboardManager;->b(I)Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;

    move-result-object v0

    .line 970
    if-eqz v0, :cond_0

    .line 971
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "keyboard-lj"

    const-string/jumbo v3, "MspAssistUtil-hideKeyboard-hide"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    invoke-virtual {v0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->hideKeyboard()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 974
    :catch_0
    move-exception v0

    .line 975
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "keyboard-lj"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 712
    sput-object p0, Lcom/alipay/android/app/assist/MspAssistUtil;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 711
    sput-object p0, Lcom/alipay/android/app/assist/MspAssistUtil;->e:Ljava/lang/String;

    return-void
.end method

.method public static f()Z
    .locals 2

    .prologue
    .line 264
    new-instance v0, Lcom/alipay/android/app/util/ChannelConfig;

    invoke-direct {v0}, Lcom/alipay/android/app/util/ChannelConfig;-><init>()V

    .line 265
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 267
    invoke-virtual {v1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 265
    invoke-virtual {v0, v1}, Lcom/alipay/android/app/util/ChannelConfig;->a(Landroid/content/Context;)V

    .line 268
    const-string/jumbo v1, "isSandbox"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/util/ChannelConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    .line 270
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 269
    goto :goto_0
.end method

.method public static g()Landroid/content/Context;
    .locals 1

    .prologue
    .line 275
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static h()V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->KERNEL_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->MSP_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->FROM_WHICH:Ljava/lang/String;

    return-object v0
.end method

.method public static l()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public static m()V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method public static n()V
    .locals 0

    .prologue
    .line 391
    return-void
.end method

.method public static o()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method

.method public static p()V
    .locals 0

    .prologue
    .line 399
    return-void
.end method

.method public static q()V
    .locals 0

    .prologue
    .line 403
    return-void
.end method

.method public static r()V
    .locals 0

    .prologue
    .line 407
    return-void
.end method

.method public static s()V
    .locals 3

    .prologue
    .line 423
    :try_start_0
    const-string/jumbo v0, "edittextutil"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 428
    const-string/jumbo v2, "lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 427
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 430
    :try_start_1
    invoke-static {v1}, Lcom/alipay/mobile/phonecashier/service/util/PhoneCashierUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    const-string/jumbo v1, "app_plugins"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-static {v0}, Lcom/alipay/mobile/phonecashier/service/util/PhoneCashierUtil;->a(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static t()Ljava/lang/String;
    .locals 2

    .prologue
    .line 558
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    .line 559
    const-string/jumbo v1, "actionToken"

    .line 558
    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static u()V
    .locals 1

    .prologue
    .line 564
    sget-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    .line 566
    :try_start_0
    sget-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 567
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->b:Lcom/alipay/mobile/h5container/api/H5Page;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static v()V
    .locals 1

    .prologue
    .line 716
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->e:Ljava/lang/String;

    .line 717
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->f:Ljava/lang/String;

    .line 718
    new-instance v0, Lcom/alipay/android/app/assist/j;

    invoke-direct {v0}, Lcom/alipay/android/app/assist/j;-><init>()V

    invoke-static {v0}, Lcom/alipay/android/app/util/GlobalExcutorUtil;->a(Ljava/lang/Runnable;)V

    .line 737
    return-void
.end method

.method public static w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 744
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 745
    sget-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 751
    sget-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static y()V
    .locals 2

    .prologue
    .line 985
    :try_start_0
    new-instance v0, Lcom/alipay/android/app/logic/decorator/RpcRequestDecorator;

    invoke-direct {v0}, Lcom/alipay/android/app/logic/decorator/RpcRequestDecorator;-><init>()V

    .line 986
    new-instance v0, Lcom/alipay/android/app/logic/request/RequestConfig;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lcom/alipay/android/app/logic/request/RequestConfig;-><init>(Ljava/lang/String;)V

    .line 987
    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alipay/android/app/logic/decorator/RpcRequestDecorator;->a(Lcom/alipay/android/app/logic/request/RequestConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 988
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    .line 989
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 990
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/MspInitAssistService;->initFirstCreate(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static z()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1026
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 1027
    sget-object v1, Lcom/alipay/android/app/assist/MspAssistUtil;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 1028
    :try_start_0
    sget-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1029
    sget-object v0, Lcom/alipay/android/app/assist/MspAssistUtil;->f:Ljava/lang/String;

    monitor-exit v1

    .line 1038
    :goto_0
    return-object v0

    .line 1032
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 1033
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1035
    const-class v2, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1034
    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    .line 1031
    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;->getUserInfo()Ljava/util/Map;

    move-result-object v0

    .line 1037
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 1038
    const-string/jumbo v2, "userId"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1027
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
