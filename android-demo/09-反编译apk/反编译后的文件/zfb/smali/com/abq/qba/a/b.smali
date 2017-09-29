.class public final Lcom/abq/qba/a/b;
.super Lcom/alipay/mobile/apk/common/AbstractEngine;
.source "BundleAppEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/apk/common/AbstractEngine;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;
    .locals 1

    .prologue
    .line 22
    invoke-static {p1}, Lcom/abq/qba/a/e;->a(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    return-object v0
.end method

.method public final getUnsupportedCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/abq/qba/a/c;->a:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final isSupported(Landroid/app/Application;)Z
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/abq/qba/a/a;

    invoke-direct {v0, p1}, Lcom/abq/qba/a/a;-><init>(Landroid/app/Application;)V

    .line 33
    invoke-virtual {v0}, Lcom/abq/qba/a/a;->a()Z

    move-result v0

    return v0
.end method

.method public final makeActivity(Lcom/alipay/mobile/apk/common/ZActivityInfo;Landroid/app/Activity;Landroid/app/Application;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public final makeActivity(Lcom/alipay/mobile/apk/common/ZActivityInfo;Landroid/app/Activity;Ljava/lang/ClassLoader;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 67
    invoke-static {p1, p2, p3}, Lcom/abq/qba/a/e;->a(Lcom/alipay/mobile/apk/common/ZActivityInfo;Landroid/app/Activity;Ljava/lang/ClassLoader;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final makeApplication(Lcom/alipay/mobile/apk/common/ZApplicationInfo;Landroid/app/Application;)Landroid/app/Application;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onActivityShellPause()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public final onActivityShellResume()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public final setDexClassLoader(Ldalvik/system/DexClassLoader;)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public final startActivity(Landroid/app/Activity;Lcom/alipay/mobile/apk/common/ZActivityInfo;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
