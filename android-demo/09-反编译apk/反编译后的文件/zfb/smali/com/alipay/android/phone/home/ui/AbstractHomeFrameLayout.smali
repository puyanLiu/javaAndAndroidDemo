.class public abstract Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;
.source "AbstractHomeFrameLayout.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field public static b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field protected static c:Ljava/lang/String;


# instance fields
.field protected a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

.field protected final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

.field protected f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field protected g:Z

.field protected h:Landroid/content/Context;

.field protected i:Landroid/os/Handler;

.field private final j:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->d:Ljava/util/List;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->g:Z

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->i:Landroid/os/Handler;

    .line 303
    new-instance v0, Lcom/alipay/android/phone/home/ui/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/ui/a;-><init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->j:Landroid/content/BroadcastReceiver;

    .line 58
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->h:Landroid/content/Context;

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 61
    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 60
    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 62
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 63
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 62
    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    const-string/jumbo v1, "tarVerifyFail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    const-string/jumbo v3, "registerReceiver h5AppReceiver"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 71
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 198
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "appList.size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->i:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/f;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/home/ui/f;-><init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected appStatusUpdate(Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method protected checkHomeAppLastOne()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 257
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 259
    const-class v2, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 260
    if-nez v0, :cond_0

    move v0, v1

    .line 269
    :goto_0
    return v0

    .line 262
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getHomeAppsFromLocal()Ljava/util/List;

    move-result-object v0

    .line 263
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 264
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 269
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_3

    move v0, v1

    goto :goto_0

    .line 264
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 265
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isOffline()Z

    move-result v4

    if-nez v4, :cond_1

    .line 266
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 269
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected installStatusUpdate(Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method protected jumpToSaomafu()V
    .locals 2

    .prologue
    .line 239
    const-string/jumbo v0, "20000056"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/phone/home/manager/LaunchAppUtils;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 240
    return-void
.end method

.method protected jumpToSaoyisao()V
    .locals 3

    .prologue
    .line 246
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 247
    const-string/jumbo v1, "sourceId"

    const-string/jumbo v2, "20000001#topIcon"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string/jumbo v1, "10000007"

    invoke-static {v1, v0}, Lcom/alipay/android/phone/home/manager/LaunchAppUtils;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 249
    return-void
.end method

.method protected memoryAppsChange(Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    return-void
.end method

.method public onReLogin()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->g:Z

    .line 77
    return-void
.end method

.method public abstract onRefresh()V
.end method

.method protected refreshAppListData(Z)V
    .locals 3

    .prologue
    .line 175
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    const-string/jumbo v2, "refreshAppListData"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->addObserver(Ljava/util/Observer;)V

    .line 178
    if-eqz p1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getHomeAppsFromLocal()Ljava/util/List;

    move-result-object v0

    .line 180
    invoke-direct {p0, v0}, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->a(Ljava/util/List;)V

    .line 194
    :goto_0
    return-void

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/phone/home/ui/e;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/e;-><init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 188
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->whenRefreshApplistData()V

    .line 192
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected refreshHomeAppsData()V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->isFetchingHomeUrgentApps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    const-string/jumbo v2, "refreshHomeAppsData() return"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :goto_0
    return-void

    .line 223
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/phone/home/ui/g;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/g;-><init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 232
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected showLastAppDialog()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 273
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/openplatform/R$string;->u:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 275
    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/openplatform/R$string;->s:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 276
    iget-object v3, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/android/phone/openplatform/R$string;->v:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 277
    new-instance v4, Lcom/alipay/android/phone/home/ui/h;

    invoke-direct {v4, p0}, Lcom/alipay/android/phone/home/ui/h;-><init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;)V

    move-object v6, v5

    .line 274
    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 284
    return-void
.end method

.method protected showMoreAppFullAlert()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 287
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/openplatform/R$string;->u:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 289
    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/openplatform/R$string;->r:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 290
    iget-object v3, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/android/phone/openplatform/R$string;->v:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 291
    new-instance v4, Lcom/alipay/android/phone/home/ui/i;

    invoke-direct {v4, p0}, Lcom/alipay/android/phone/home/ui/i;-><init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;)V

    move-object v6, v5

    .line 288
    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 298
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 99
    if-nez p2, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    if-eqz v0, :cond_4

    .line 104
    check-cast p2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    .line 105
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 106
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->i:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/b;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/phone/home/ui/b;-><init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    :cond_2
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 114
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->i:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/c;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/phone/home/ui/c;-><init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    :cond_3
    invoke-virtual {p0, p2}, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->appStatusUpdate(Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;)V

    goto :goto_0

    .line 124
    :cond_4
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    if-eqz v0, :cond_7

    .line 125
    check-cast p2, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    .line 126
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "installStatusUpdate:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 129
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->i:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/d;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/phone/home/ui/d;-><init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    :cond_5
    :goto_1
    invoke-virtual {p0, p2}, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->installStatusUpdate(Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;)V

    goto :goto_0

    .line 136
    :cond_6
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 137
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 138
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 139
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 140
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/openplatform/R$string;->w:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto :goto_1

    .line 150
    :cond_7
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 151
    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;->getParentStageCode()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "MemoryAppsChangeNotifyparentStageCode ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    check-cast p2, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;

    .line 154
    const-string/jumbo v1, "indexStage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 156
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0, v5}, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->refreshAppListData(Z)V

    goto/16 :goto_0

    .line 160
    :cond_8
    const-string/jumbo v1, "topAppStage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 162
    invoke-virtual {p0, p2}, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->memoryAppsChange(Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;)V

    goto/16 :goto_0

    .line 164
    :cond_9
    const-string/jumbo v1, "strategyStage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0, p2}, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->memoryAppsChange(Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;)V

    goto/16 :goto_0
.end method

.method protected whenRefreshApplistData()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method
