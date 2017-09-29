.class public Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;
.super Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;
.source "FragmentActivityShell.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private a:I

.field private b:Landroid/content/res/Resources$Theme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->b:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->b:Landroid/content/res/Resources$Theme;

    .line 38
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->b:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->b:Landroid/content/res/Resources$Theme;

    iget v1, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->b:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 52
    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->TAG:Ljava/lang/String;

    .line 53
    invoke-super {p0, p1}, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->finish()V

    .line 89
    :goto_0
    return-void

    .line 58
    :cond_1
    new-instance v1, Lcom/alipay/mobile/apk/common/ZActivityInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/apk/common/ZActivityInfo;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->activityInfo:Lcom/alipay/mobile/apk/common/ZActivityInfo;

    .line 59
    iget-object v1, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->activityInfo:Lcom/alipay/mobile/apk/common/ZActivityInfo;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/apk/common/ZActivityInfo;->name:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/alipay/mobile/quinox/engine/BundleEngine;->getBundleContext()Lcom/alipay/mobile/quinox/engine/BundleContext;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->activityInfo:Lcom/alipay/mobile/apk/common/ZActivityInfo;

    iget-object v1, v1, Lcom/alipay/mobile/apk/common/ZActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/engine/BundleContext;->getBundleNameByComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/engine/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 64
    if-nez v1, :cond_2

    .line 65
    sget-object v0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "bundleClassLoader == null, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->activityInfo:Lcom/alipay/mobile/apk/common/ZActivityInfo;

    iget-object v1, v1, Lcom/alipay/mobile/apk/common/ZActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-super {p0, p1}, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->finish()V

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->getInstance(Landroid/app/Application;)Lcom/alipay/mobile/quinox/engine/ApkEngineManager;

    move-result-object v2

    const-string/jumbo v3, "BundleAppEngine"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->getEngine(Ljava/lang/String;)Lcom/alipay/mobile/apk/common/AbstractEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    .line 73
    iget-object v2, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    if-nez v2, :cond_3

    .line 74
    sget-object v0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "defaultEngine == null, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->activityInfo:Lcom/alipay/mobile/apk/common/ZActivityInfo;

    iget-object v1, v1, Lcom/alipay/mobile/apk/common/ZActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-super {p0, p1}, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->finish()V

    goto :goto_0

    .line 79
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->activityInfo:Lcom/alipay/mobile/apk/common/ZActivityInfo;

    invoke-virtual {v2, v3, p0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->makeActivity(Lcom/alipay/mobile/apk/common/ZActivityInfo;Landroid/app/Activity;Ljava/lang/ClassLoader;)Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->targetActivity:Landroid/app/Activity;

    .line 80
    iget-object v1, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/engine/BundleContext;->replaceResources(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->b:Landroid/content/res/Resources$Theme;

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 88
    invoke-super {p0, p1}, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->onCreate(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public setTheme(I)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->setTheme(I)V

    .line 31
    iput p1, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->a:I

    .line 32
    return-void
.end method
