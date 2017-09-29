.class public Lcom/alipay/android/app/template/DynamicTemplateQuickPayCache;
.super Ljava/lang/Object;
.source "DynamicTemplateQuickPayCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/DynamicTemplateQuickPayCache;->a:Z

    .line 13
    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/alipay/android/app/template/TemplateManager;->getInstance()Lcom/alipay/android/app/template/TemplateManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/app/template/TemplateManager;->getLocalTemplateWithRes(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v0

    .line 54
    sget-object v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-static {v0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->valueOf(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/alipay/android/app/template/DynamicTemplateQuickPayCache;->a:Z

    if-nez v0, :cond_0

    .line 20
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "cache"

    const-string/jumbo v2, "cache start msms"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    const-string/jumbo v1, "android-phone-wallet-phonecashier"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/BundleContext;->getResourcesByBundle(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "amc.js"

    const-string/jumbo v2, "amc.js"

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/android/app/template/util/UiUtil;->loadAssetsFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flybird/FBDocumentAssistor;->putAssetRes(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "amc.css"

    const-string/jumbo v2, "amc.css"

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/android/app/template/util/UiUtil;->loadAssetsFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flybird/FBDocumentAssistor;->putAssetRes(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "amc.i18n"

    const-string/jumbo v2, "amc.i18n"

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/android/app/template/util/UiUtil;->loadAssetsFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flybird/FBDocumentAssistor;->putAssetRes(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "amc-lite.js"

    const-string/jumbo v2, "amc-lite.js"

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/android/app/template/util/UiUtil;->loadAssetsFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flybird/FBDocumentAssistor;->putAssetRes(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "QUICKPAY@cashier-pre-confirm-flex"

    invoke-static {v1, v0}, Lcom/alipay/android/app/template/DynamicTemplateQuickPayCache;->a(Ljava/lang/String;Landroid/content/res/Resources;)V

    const-string/jumbo v1, "QUICKPAY@cashier-channel-logo-flex"

    invoke-static {v1, v0}, Lcom/alipay/android/app/template/DynamicTemplateQuickPayCache;->a(Ljava/lang/String;Landroid/content/res/Resources;)V

    const-string/jumbo v1, "QUICKPAY@deposit-index-flex"

    invoke-static {v1, v0}, Lcom/alipay/android/app/template/DynamicTemplateQuickPayCache;->a(Ljava/lang/String;Landroid/content/res/Resources;)V

    const-string/jumbo v1, "QUICKPAY@frontpay-channel-logo-flex"

    invoke-static {v1, v0}, Lcom/alipay/android/app/template/DynamicTemplateQuickPayCache;->a(Ljava/lang/String;Landroid/content/res/Resources;)V

    const-string/jumbo v1, "QUICKPAY@cashier-card-detail-flex"

    invoke-static {v1, v0}, Lcom/alipay/android/app/template/DynamicTemplateQuickPayCache;->a(Ljava/lang/String;Landroid/content/res/Resources;)V

    const-string/jumbo v1, "QUICKPAY@cashier-card-no-flex"

    invoke-static {v1, v0}, Lcom/alipay/android/app/template/DynamicTemplateQuickPayCache;->a(Ljava/lang/String;Landroid/content/res/Resources;)V

    const-string/jumbo v1, "QUICKPAY@open-pwd-check-flex"

    invoke-static {v1, v0}, Lcom/alipay/android/app/template/DynamicTemplateQuickPayCache;->a(Ljava/lang/String;Landroid/content/res/Resources;)V

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/template/DynamicTemplateQuickPayCache$1;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/app/template/DynamicTemplateQuickPayCache$1;-><init>(Lcom/alipay/android/app/template/DynamicTemplateQuickPayCache;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "cache"

    const-string/jumbo v2, "cache end msms"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_0
    return-void
.end method
