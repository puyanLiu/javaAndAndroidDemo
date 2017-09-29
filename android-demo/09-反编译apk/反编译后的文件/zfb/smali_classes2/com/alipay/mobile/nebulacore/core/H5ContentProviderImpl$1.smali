.class Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "H5ContentProviderImpl.java"


# static fields
.field private static final synthetic b:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "H5ContentProviderImpl.java"

    const-class v2, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.mobile.nebulacore.core.H5ContentProviderImpl$1"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x13e

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    .line 316
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .prologue
    .line 1
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v8

    const/4 v0, 0x1

    aget-object v6, v1, v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "app_id"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    const-string/jumbo v1, "H5ContentProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "received app installed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const-string/jumbo v0, "H5ContentProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " ignore app download event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    instance-of v0, v6, Landroid/content/Intent;

    if-eqz v0, :cond_2

    const-string/jumbo v1, "Monitor"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceive:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v6

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    :goto_2
    const-string/jumbo v2, "H5ContentProviderImpl"

    const-string/jumbo v3, "onReceive app_id Exception"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "H5ContentProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "parse package for app "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->b(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->c(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5PackageParser;->parsePackage(Landroid/os/Bundle;Ljava/util/Map;)I

    move-result v9

    if-nez v9, :cond_5

    const-string/jumbo v0, "appId=%s^version=%s^publicId=%s^url=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->b(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "appVersion"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->b(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "publicId"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->d(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    if-eqz v0, :cond_4

    const-string/jumbo v1, "H5_AL_SESSION_UPDATEPACKAGE_SUCCESS"

    const-string/jumbo v2, "diagnose"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->e(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x2

    if-ne v9, v0, :cond_1

    const-string/jumbo v0, "appId=%s^version=%s^publicId=%s^url=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->b(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "appVersion"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->b(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "publicId"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->d(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    if-eqz v0, :cond_6

    const-string/jumbo v1, "H5_AL_SESSION_VERIFYTAR_FAIL"

    const-string/jumbo v2, "diagnose"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "tarPath="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->a:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->f(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string/jumbo v0, "H5ContentProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "parse package result "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    move-exception v1

    goto/16 :goto_2
.end method
