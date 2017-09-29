.class public final Lcom/alipay/android/phone/businesscommon/advertisement/d/e;
.super Ljava/lang/Object;
.source "AdSyncServiceHelper.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# instance fields
.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "CDP_USER_KEY"

    sput-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->a:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "CDP_GLOBAL_KEY"

    sput-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->b:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->e:Ljava/util/Map;

    .line 37
    const-class v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/b;->c(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 36
    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    sget-object v1, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->a:Ljava/lang/String;

    const-string/jumbo v2, "CDP-USER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v1, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->b:Ljava/lang/String;

    const-string/jumbo v2, "CDP-GLOBAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->e:Ljava/util/Map;

    const-string/jumbo v2, "com.eg.android.AlipayGphone"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    sget-object v1, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->a:Ljava/lang/String;

    const-string/jumbo v2, "CDP-USER-MYCF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v1, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->b:Ljava/lang/String;

    const-string/jumbo v2, "CDP-GLOBAL-MYCF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->e:Ljava/util/Map;

    const-string/jumbo v2, "com.antfortune.wealth"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;-><init>()V

    return-void
.end method

.method public static a()Lcom/alipay/android/phone/businesscommon/advertisement/d/e;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/d/f;->a()Lcom/alipay/android/phone/businesscommon/advertisement/d/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public final a(Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AdSyncServiceHelper\u6ce8\u518c\u56de\u8c03\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->a(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 75
    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AdSyncServiceHelper:this packageName not register in AdSystem! "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->e(Ljava/lang/String;)V

    move v0, v2

    .line 100
    :goto_0
    return v0

    .line 80
    :cond_0
    sget-object v1, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->d:Ljava/lang/String;

    .line 81
    sget-object v1, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->c:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    sget-object v1, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->d:Ljava/lang/String;

    sget-object v4, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 86
    sget-object v4, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->c:Ljava/lang/String;

    sget-object v5, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->c:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v4, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v4, v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->setDeviceAndUserbasedbiz(Ljava/util/Map;Ljava/util/Map;)V

    .line 91
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 92
    new-array v1, v3, [Ljava/lang/String;

    sget-object v4, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->d:Ljava/lang/String;

    aput-object v4, v1, v2

    new-array v4, v3, [Ljava/lang/String;

    sget-object v5, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->c:Ljava/lang/String;

    aput-object v5, v4, v2

    .line 91
    invoke-virtual {v0, v1, v4}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->setDefaultRegisterDeviceAndUserbasedbiz([Ljava/lang/String;[Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    sget-object v1, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    sget-object v1, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    sget-object v1, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 98
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    sget-object v1, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    move v0, v3

    .line 100
    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportCmdReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 138
    const-string/jumbo v0, "AdSyncServiceHelper.reportCmdHandled:"

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->a(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/d/e;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportCommandHandled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method
