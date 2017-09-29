.class Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$2;
.super Ljava/lang/Object;
.source "H5ContentProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$2;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$2;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->b(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$2;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->c(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5PackageParser;->parsePackage(Landroid/os/Bundle;Ljava/util/Map;)I

    move-result v8

    .line 94
    if-ne v8, v4, :cond_0

    .line 95
    const-string/jumbo v0, "appId=%s^version=%s^publicId=%s^url=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 96
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$2;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$2;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->b(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "appVersion"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 97
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$2;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->b(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "publicId"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$2;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->d(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 95
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    .line 99
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 100
    if-eqz v0, :cond_0

    .line 101
    const-string/jumbo v1, "H5_AL_SESSION_VERIFYTAR_FAIL"

    const-string/jumbo v2, "diagnose"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "tarPath="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$2;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->f(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    const/4 v5, 0x0

    .line 101
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    if-nez v8, :cond_2

    move v0, v6

    .line 106
    :goto_0
    const-string/jumbo v1, "H5ContentProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "appId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$2;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " initialized "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    if-nez v0, :cond_1

    .line 108
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 110
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    const-string/jumbo v2, "com.alipay.mobile.android.h5app.installstatus"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$2;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->e(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$2;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->g(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 115
    return-void

    :cond_2
    move v0, v7

    .line 105
    goto :goto_0
.end method
