.class public Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;
.super Ljava/lang/Object;
.source "RecommandOnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->c:Landroid/os/Handler;

    .line 42
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 43
    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->b:Landroid/content/Context;

    .line 44
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0

    .prologue
    .line 129
    invoke-static {p0}, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/phone/home/manager/r;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/home/manager/r;-><init>(Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 116
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 117
    return-void
.end method

.method static synthetic c(Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method private c(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 3

    .prologue
    .line 121
    invoke-static {p1}, Lcom/alipay/android/phone/home/manager/BindTaobaoHelper;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Lcom/ali/user/mobile/common/api/AliUserLogin;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/common/api/AliUserLogin;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/android/phone/home/manager/s;

    invoke-direct {v2, p0, v0, p1}, Lcom/alipay/android/phone/home/manager/s;-><init>(Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;Lcom/ali/user/mobile/common/api/AliUserLogin;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-static {p1}, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    goto :goto_0
.end method

.method private static d(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 4

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->nativeApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_1

    .line 131
    const-string/jumbo v0, "strategyStage1"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getExtra(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 133
    const-string/jumbo v0, "strategyStage1"

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

    .line 136
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    .line 140
    :goto_1
    return-void

    .line 133
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 134
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private e(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 4

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 219
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 203
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 205
    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 206
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    goto :goto_0

    .line 210
    :cond_1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 211
    const-string/jumbo v1, "TARGET"

    const-string/jumbo v2, "DETAIL"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string/jumbo v1, "APP_ID"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v2, "20000002"

    .line 214
    const-string/jumbo v3, "10000111"

    .line 213
    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "RecommandOnClickListener"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 50
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedFetchStrategyStage(Z)V

    .line 51
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isOffline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "RecommandOnClickListener"

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "clickApp:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    const-string/jumbo v5, "strategyStage1"

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 56
    iget-object v4, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->e(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    goto/16 :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_2

    .line 64
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->c(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    goto/16 :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setInstallSilent(Z)V

    goto/16 :goto_0

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 72
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedUpgrade()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 73
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v2, :cond_4

    .line 74
    iget-object v5, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "RecommandOnClickListener"

    const-string/jumbo v3, "updateApp"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "strategyStage1"

    invoke-virtual {v5, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/android/phone/openplatform/R$string;->k:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/android/phone/openplatform/R$string;->m:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/phone/home/manager/v;

    invoke-direct {v4, p0, v5}, Lcom/alipay/android/phone/home/manager/v;-><init>(Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    iget-object v5, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/android/phone/openplatform/R$string;->j:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_5

    .line 77
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->c(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 78
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->b(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    goto/16 :goto_0

    .line 81
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setInstallSilent(Z)V

    .line 82
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->autoUpgradeAndLaunch()V

    goto/16 :goto_0

    .line 86
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_7

    .line 87
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isPkgAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 88
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->installApp()Z

    .line 90
    :cond_7
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->c(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    goto/16 :goto_0

    .line 93
    :cond_8
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_9

    .line 94
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->e(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    goto/16 :goto_0

    .line 95
    :cond_9
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_a

    .line 97
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->c(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 98
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->b(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    goto/16 :goto_0

    .line 100
    :cond_a
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setInstallSilent(Z)V

    .line 101
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->autoUpgradeAndLaunch()V

    goto/16 :goto_0
.end method
