.class public final Lcom/uc/webview/export/extension/UCCore;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# static fields
.field public static final LOAD_POLICY_SPECIFIED_ONLY:Ljava/lang/String; = "SPECIFIED_ONLY"

.field public static final LOAD_POLICY_SPECIFIED_OR_UCMOBILE:Ljava/lang/String; = "SPECIFIED_OR_UCMOBILE"

.field public static final LOAD_POLICY_UCMOBILE_ONLY:Ljava/lang/String; = "UCMOBILE_ONLY"

.field public static final LOAD_POLICY_UCMOBILE_OR_SPECIFIED:Ljava/lang/String; = "UCMOBILE_OR_SPECIFIED"

.field public static final OPTION_BREAKPAD_CONFIG:Ljava/lang/String; = "BREAKPAD_CONFIG"

.field public static final OPTION_CONTEXT:Ljava/lang/String; = "CONTEXT"

.field public static final OPTION_CORE_VERSION_EXCLUDE:Ljava/lang/String; = "core_ver_excludes"

.field public static final OPTION_DEX_FILE_PATH:Ljava/lang/String; = "dexFilePath"

.field public static final OPTION_HARDWARE_ACCELERATED:Ljava/lang/String; = "AC"

.field public static final OPTION_LOAD_POLICY:Ljava/lang/String; = "loadPolicy"

.field public static final OPTION_MULTI_CORE_TYPE:Ljava/lang/String; = "MULTI_CORE_TYPE"

.field public static final OPTION_PROVIDED_KEYS:Ljava/lang/String; = "provided_keys"

.field public static final OPTION_SO_FILE_PATH:Ljava/lang/String; = "soFilePath"

.field public static final OPTION_UC_PLAYER_ROOT:Ljava/lang/String; = "ucPlayerRoot"

.field public static final OPTION_USE_SYSTEM_WEBVIEW:Ljava/lang/String; = "SYSTEM_WEBVIEW"

.field public static final OPTION_USE_UC_PLAYER:Ljava/lang/String; = "ucPlayer"

.field public static final OPTION_VERIFY_POLICY:Ljava/lang/String; = "VERIFY_POLICY"

.field public static final OPTION_WEBVIEW_POLICY:Ljava/lang/String; = "WEBVIEW_POLICY"

.field public static final VERIFY_POLICY_ALL:I = 0x7

.field public static final VERIFY_POLICY_BROWSER_IF:I = 0x2

.field public static final VERIFY_POLICY_CORE_IMPL:I = 0x4

.field public static final VERIFY_POLICY_NONE:I = 0x0

.field public static final VERIFY_POLICY_SDK_SHELL:I = 0x1

.field public static final WEBVIEW_POLICY_WAIT_UNTIL_EXCEPTION:I = 0x3

.field public static final WEBVIEW_POLICY_WAIT_UNTIL_FALLBACK_SYSTEM:I = 0x2

.field public static final WEBVIEW_POLICY_WAIT_UNTIL_LOADED:I = 0x1

.field private static a:Lcom/uc/webview/export/utility/SetupTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/uc/webview/export/utility/SetupTask;

    invoke-direct {v0}, Lcom/uc/webview/export/utility/SetupTask;-><init>()V

    sput-object v0, Lcom/uc/webview/export/extension/UCCore;->a:Lcom/uc/webview/export/utility/SetupTask;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/uc/webview/export/utility/SetupTask;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/uc/webview/export/extension/UCCore;->a:Lcom/uc/webview/export/utility/SetupTask;

    return-object v0
.end method

.method public static extractWebCoreLibraryIfNeeded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 649
    invoke-static {p0, p1, p2, p3}, Lcom/uc/webview/export/utility/SetupTask;->decompress7zSo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 650
    return-void
.end method

.method public static getCoreInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    invoke-static {}, Lcom/uc/webview/export/internal/d;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getResponseByUrl(Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 1

    .prologue
    .line 609
    invoke-static {p0}, Lcom/uc/webview/export/internal/d;->e(Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public static getTraffic()Landroid/util/Pair;
    .locals 1

    .prologue
    .line 596
    invoke-static {}, Lcom/uc/webview/export/internal/d;->h()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;ZLcom/uc/webview/export/extension/BreakpadConfig;Ljava/util/Map;)I
    .locals 4

    .prologue
    .line 204
    new-instance v0, Lcom/uc/webview/export/utility/SetupTask;

    invoke-direct {v0}, Lcom/uc/webview/export/utility/SetupTask;-><init>()V

    const-string/jumbo v1, "CONTEXT"

    invoke-virtual {v0, v1, p0}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v0

    const-string/jumbo v1, "BREAKPAD_CONFIG"

    invoke-virtual {v0, v1, p2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v0

    const-string/jumbo v1, "SYSTEM_WEBVIEW"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v2

    .line 209
    if-eqz p3, :cond_0

    .line 210
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 211
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 213
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    goto :goto_0

    .line 217
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/d;->l:Ljava/util/Map;

    const-string/jumbo v1, "sdk_eci"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {v2}, Lcom/uc/webview/export/utility/SetupTask;->start()V

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public static onLowMemory()V
    .locals 1

    .prologue
    .line 526
    sget-object v0, Lcom/uc/webview/export/internal/d;->b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 528
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/d;->b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->onLowMemory()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static onTrimMemory(I)V
    .locals 1

    .prologue
    .line 542
    sget-object v0, Lcom/uc/webview/export/internal/d;->b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 544
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/d;->b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0, p0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->onTrimMemory(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setInitCallback(Lcom/uc/webview/export/extension/InitCallback;)V
    .locals 0

    .prologue
    .line 659
    invoke-static {p0}, Lcom/uc/webview/export/internal/d;->a(Lcom/uc/webview/export/extension/InitCallback;)V

    .line 660
    return-void
.end method

.method public static setLocationManager(Lcom/uc/webview/export/extension/ILocationManager;)V
    .locals 1

    .prologue
    .line 516
    sget-object v0, Lcom/uc/webview/export/internal/d;->b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 517
    sget-object v0, Lcom/uc/webview/export/internal/d;->b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0, p0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->setLocationManagerUC(Lcom/uc/webview/export/extension/ILocationManager;)V

    .line 518
    :cond_0
    return-void
.end method

.method public static setNetworkDelegate(Lcom/uc/webview/export/internal/interfaces/INetworkDelegate;)V
    .locals 6

    .prologue
    .line 627
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/uc/webview/export/internal/d;->b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 628
    const-string/jumbo v0, "network delegate"

    const-string/jumbo v1, "invoke setNetworkDelegate"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/d;->b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    const-string/jumbo v1, "setNetworkDelegate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/uc/webview/export/internal/interfaces/InvokeObject;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Lcom/uc/webview/export/internal/a/b;

    invoke-direct {v5, p0}, Lcom/uc/webview/export/internal/a/b;-><init>(Lcom/uc/webview/export/internal/interfaces/INetworkDelegate;)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 633
    :catch_0
    move-exception v0

    .line 634
    const-string/jumbo v1, "network delegate"

    const-string/jumbo v2, "setNetworkDelegate"

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setNotAvailableUCListener(Lcom/uc/webview/export/extension/NotAvailableUCListener;)V
    .locals 0

    .prologue
    .line 566
    invoke-static {p0}, Lcom/uc/webview/export/internal/d;->a(Lcom/uc/webview/export/extension/NotAvailableUCListener;)V

    .line 567
    return-void
.end method

.method public static setParam(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 677
    invoke-static {p0}, Lcom/uc/webview/export/internal/d;->a(Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method public static setPrintLog(Z)V
    .locals 0

    .prologue
    .line 587
    sput-boolean p0, Lcom/uc/webview/export/internal/utility/Log;->sPrintLog:Z

    .line 588
    return-void
.end method

.method public static setStatDataCallback(Landroid/webkit/ValueCallback;)V
    .locals 0

    .prologue
    .line 669
    sput-object p0, Lcom/uc/webview/export/internal/d;->j:Landroid/webkit/ValueCallback;

    .line 670
    return-void
.end method

.method public static setThirdNetwork(Lcom/uc/webview/export/internal/interfaces/INetwork;Lcom/uc/webview/export/internal/interfaces/INetworkDecider;)V
    .locals 2

    .prologue
    .line 618
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/uc/webview/export/internal/d;->b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 619
    sget-object v0, Lcom/uc/webview/export/internal/d;->b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0, p0, p1}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->setThirdNetwork(Lcom/uc/webview/export/internal/interfaces/INetwork;Lcom/uc/webview/export/internal/interfaces/INetworkDecider;)V

    .line 620
    :cond_0
    return-void
.end method

.method public static setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/uc/webview/export/extension/UCCore;->a:Lcom/uc/webview/export/utility/SetupTask;

    invoke-virtual {v0, p0, p1}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v0

    return-object v0
.end method

.method public static update(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .locals 7

    .prologue
    .line 243
    invoke-static {p0}, Lcom/uc/webview/export/utility/download/UpdateTask;->getUpdateRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    .line 244
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string/jumbo v2, "app_ucmobile"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/uc/webview/export/utility/download/UpdateTask;->getUpdateRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/ucmobile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 253
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string/jumbo v2, "app_odex_ucsdk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/uc/webview/export/utility/Utils;->recursiveDelete(Ljava/io/File;ZLjava/io/File;)V

    .line 258
    :cond_1
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/d;->b(J)V

    .line 259
    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/d;->b(J)V

    .line 260
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/d;->b(J)V

    .line 261
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/d;->b(J)V

    .line 262
    const-wide/16 v0, 0x80

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/d;->b(J)V

    .line 263
    const-wide/16 v0, 0x100

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/d;->b(J)V

    .line 264
    const-wide/16 v0, 0x200

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/d;->b(J)V

    .line 265
    sget-object v0, Lcom/uc/webview/export/internal/d;->l:Ljava/util/Map;

    const-string/jumbo v1, "sdk_ecur0"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/uc/webview/export/internal/d;->l:Ljava/util/Map;

    const-string/jumbo v1, "sdk_ecdl0"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/uc/webview/export/internal/d;->l:Ljava/util/Map;

    const-string/jumbo v1, "sdk_ecv0"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/uc/webview/export/internal/d;->l:Ljava/util/Map;

    const-string/jumbo v1, "sdk_ecuz0"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    new-instance v5, Lcom/uc/webview/export/extension/a;

    invoke-direct {v5}, Lcom/uc/webview/export/extension/a;-><init>()V

    .line 305
    new-instance v0, Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "core.jar"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/uc/webview/export/utility/download/UpdateTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 307
    const-string/jumbo v1, "beginDownload"

    new-instance v2, Lcom/uc/webview/export/extension/r;

    invoke-direct {v2}, Lcom/uc/webview/export/extension/r;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v0

    const-string/jumbo v1, "beginUnZip"

    new-instance v2, Lcom/uc/webview/export/extension/q;

    invoke-direct {v2}, Lcom/uc/webview/export/extension/q;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v0

    const-string/jumbo v1, "check"

    new-instance v2, Lcom/uc/webview/export/extension/p;

    invoke-direct {v2, p2}, Lcom/uc/webview/export/extension/p;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v0

    const-string/jumbo v1, "success"

    new-instance v2, Lcom/uc/webview/export/extension/o;

    invoke-direct {v2, p0}, Lcom/uc/webview/export/extension/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v0

    const-string/jumbo v1, "failed"

    new-instance v2, Lcom/uc/webview/export/extension/n;

    invoke-direct {v2}, Lcom/uc/webview/export/extension/n;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v0

    const-string/jumbo v1, "exception"

    new-instance v2, Lcom/uc/webview/export/extension/l;

    invoke-direct {v2}, Lcom/uc/webview/export/extension/l;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v0

    const-string/jumbo v1, "exists"

    new-instance v2, Lcom/uc/webview/export/extension/k;

    invoke-direct {v2, v6}, Lcom/uc/webview/export/extension/k;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/download/UpdateTask;->start()Lcom/uc/webview/export/utility/download/UpdateTask;

    .line 379
    return-void
.end method

.method public static updateUCPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .locals 7

    .prologue
    .line 390
    invoke-static {p0}, Lcom/uc/webview/export/utility/download/UpdateTask;->getUCPlayerRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    .line 391
    const-wide/16 v0, 0x400

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/d;->b(J)V

    .line 394
    const-wide/16 v0, 0x800

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/d;->b(J)V

    .line 395
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/d;->b(J)V

    .line 396
    const-wide/16 v0, 0x2000

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/d;->b(J)V

    .line 397
    const-wide/16 v0, 0x4000

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/d;->b(J)V

    .line 398
    const-wide/32 v0, 0x8000

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/d;->b(J)V

    .line 399
    const-wide/32 v0, 0x10000

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/d;->b(J)V

    .line 400
    sget-object v0, Lcom/uc/webview/export/internal/d;->l:Ljava/util/Map;

    const-string/jumbo v1, "sdk_ecur1"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/uc/webview/export/internal/d;->l:Ljava/util/Map;

    const-string/jumbo v1, "sdk_ecdl1"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/uc/webview/export/internal/d;->l:Ljava/util/Map;

    const-string/jumbo v1, "sdk_ecv1"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/uc/webview/export/internal/d;->l:Ljava/util/Map;

    const-string/jumbo v1, "sdk_ecuz1"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    new-instance v5, Lcom/uc/webview/export/extension/s;

    invoke-direct {v5}, Lcom/uc/webview/export/extension/s;-><init>()V

    .line 440
    new-instance v0, Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "libu3player.so"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/uc/webview/export/utility/download/UpdateTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 442
    const-string/jumbo v1, "beginDownload"

    new-instance v2, Lcom/uc/webview/export/extension/j;

    invoke-direct {v2}, Lcom/uc/webview/export/extension/j;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v0

    const-string/jumbo v1, "beginUnZip"

    new-instance v2, Lcom/uc/webview/export/extension/i;

    invoke-direct {v2}, Lcom/uc/webview/export/extension/i;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v0

    const-string/jumbo v1, "unzipSuccess"

    new-instance v2, Lcom/uc/webview/export/extension/h;

    invoke-direct {v2}, Lcom/uc/webview/export/extension/h;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v0

    const-string/jumbo v1, "check"

    new-instance v2, Lcom/uc/webview/export/extension/g;

    invoke-direct {v2, p2}, Lcom/uc/webview/export/extension/g;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v0

    const-string/jumbo v1, "success"

    new-instance v2, Lcom/uc/webview/export/extension/f;

    invoke-direct {v2, p0}, Lcom/uc/webview/export/extension/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v0

    const-string/jumbo v1, "failed"

    new-instance v2, Lcom/uc/webview/export/extension/e;

    invoke-direct {v2}, Lcom/uc/webview/export/extension/e;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v0

    const-string/jumbo v1, "exception"

    new-instance v2, Lcom/uc/webview/export/extension/c;

    invoke-direct {v2}, Lcom/uc/webview/export/extension/c;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v0

    const-string/jumbo v1, "exists"

    new-instance v2, Lcom/uc/webview/export/extension/b;

    invoke-direct {v2, v6}, Lcom/uc/webview/export/extension/b;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/download/UpdateTask;->start()Lcom/uc/webview/export/utility/download/UpdateTask;

    .line 508
    return-void
.end method

.method public static uploadCrashLogs()V
    .locals 0

    .prologue
    .line 556
    invoke-static {}, Lcom/uc/webview/export/internal/b;->a()V

    .line 557
    return-void
.end method
