.class public Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;
.super Ljava/lang/Object;
.source "HomeAppsOnItemClickListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final a:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->c:Landroid/os/Handler;

    .line 58
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 60
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->b:Landroid/content/Context;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0

    .prologue
    .line 227
    invoke-static {p0}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->d(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 2

    .prologue
    .line 209
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/phone/home/manager/m;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/home/manager/m;-><init>(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 214
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 215
    return-void
.end method

.method static synthetic c(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method private c(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 3

    .prologue
    .line 219
    invoke-static {p1}, Lcom/alipay/android/phone/home/manager/BindTaobaoHelper;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Lcom/ali/user/mobile/common/api/AliUserLogin;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/common/api/AliUserLogin;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/android/phone/home/manager/n;

    invoke-direct {v2, p0, v0, p1}, Lcom/alipay/android/phone/home/manager/n;-><init>(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;Lcom/ali/user/mobile/common/api/AliUserLogin;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 225
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-static {p1}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->d(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    goto :goto_0
.end method

.method private static d(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 4

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->nativeApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_1

    .line 229
    const-string/jumbo v0, "firstScreen"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getExtra(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 231
    const-string/jumbo v0, "firstScreen"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getExtra(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    .line 238
    :goto_1
    return-void

    .line 231
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 232
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private e(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 4

    .prologue
    .line 295
    if-nez p1, :cond_0

    .line 317
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 301
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 303
    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 304
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 305
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    goto :goto_0

    .line 308
    :cond_1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 309
    const-string/jumbo v1, "TARGET"

    const-string/jumbo v2, "DETAIL"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string/jumbo v1, "APP_ID"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v2, "20000002"

    .line 312
    const-string/jumbo v3, "10000111"

    .line 311
    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "HomeAppsOnItemClickListener"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 66
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "HomeAppsOnItemClickListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onItemClick, index:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 69
    instance-of v2, v0, Landroid/widget/WrapperListAdapter;

    if-eqz v2, :cond_3

    .line 70
    check-cast v0, Landroid/widget/WrapperListAdapter;

    invoke-interface {v0}, Landroid/widget/WrapperListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    .line 72
    :goto_0
    invoke-virtual {v0, p3}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->b(I)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v5

    .line 73
    if-eqz v5, :cond_2

    .line 74
    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->e()Ljava/util/List;

    sget-object v2, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v2, :cond_0

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setInstallSilent(Z)V

    :cond_0
    sput-object v5, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    instance-of v2, v5, Lcom/alipay/android/phone/home/app/HomeMoreApp;

    if-eqz v2, :cond_4

    invoke-virtual {v5, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isRedPointShow()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getMoreAppNewFlag()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setMoreAppNewFlag(Z)V

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedRefreshHome(Z)V

    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->d()V

    .line 76
    :cond_2
    :goto_1
    return-void

    .line 71
    :cond_3
    check-cast v0, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    goto :goto_0

    .line 74
    :cond_4
    invoke-static {v5, v6}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Z)V

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedRefreshHome(Z)V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isOffline()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isRedPointShow()Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "firstScreen"

    invoke-virtual {v5, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedShowNewFlag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->hideNewFlag()V

    :cond_5
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isRedPointShow()Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "firstScreen"

    invoke-virtual {v5, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedShowNewFlag(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isHasAdCornerMark()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v5}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v0, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetId:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetId:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "HomeAppsOnItemClickListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "error click app:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "firstScreen"

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setHasAdCornerMark(Z)V

    :cond_7
    :goto_2
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isRedPointShow()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "#AppCenter#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->ackClick(Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "HomeAppsOnItemClickListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "clickApp:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "firstScreen"

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_a

    invoke-direct {p0, v5}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->e(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "HomeAppsOnItemClickListener"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "normal click app:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "firstScreen"

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    sget-object v3, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->c:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    invoke-virtual {v3}, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    const-string/jumbo v4, "CLICK"

    invoke-virtual {v0, v3, v2, v4}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->userFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_b

    invoke-direct {p0, v5}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->c(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v5, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setInstallSilent(Z)V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedUpgrade()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v2, :cond_d

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "HomeAppsOnItemClickListener"

    const-string/jumbo v3, "updateApp"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "firstScreen"

    invoke-virtual {v5, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/android/phone/openplatform/R$string;->k:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/android/phone/openplatform/R$string;->m:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/phone/home/manager/q;

    invoke-direct {v4, p0, v5}, Lcom/alipay/android/phone/home/manager/q;-><init>(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    iget-object v5, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/android/phone/openplatform/R$string;->j:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_e

    invoke-direct {p0, v5}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->c(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    invoke-direct {p0, v5}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->b(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v5, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setInstallSilent(Z)V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->autoUpgradeAndLaunch()V

    goto/16 :goto_1

    :cond_f
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_10

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isPkgAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->installApp()Z

    :cond_10
    invoke-direct {p0, v5}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->c(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    goto/16 :goto_1

    :cond_11
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_12

    invoke-direct {p0, v5}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->e(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    goto/16 :goto_1

    :cond_12
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_13

    invoke-direct {p0, v5}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->c(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    invoke-direct {p0, v5}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->b(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    goto/16 :goto_1

    :cond_13
    invoke-virtual {v5, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setInstallSilent(Z)V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->autoUpgradeAndLaunch()V

    goto/16 :goto_1
.end method
