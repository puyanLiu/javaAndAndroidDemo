.class public Lcom/alipay/mobile/quinox/BundleContext;
.super Ljava/lang/Object;
.source "BundleContext.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Quinox_BundleContext"


# instance fields
.field private a:Lcom/alipay/mobile/quinox/LauncherApplication;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 33
    return-void
.end method


# virtual methods
.method public addExternalBundle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 101
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "can\'t in main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundlesManager()Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    move-result-object v0

    .line 105
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 52
    instance-of v1, v0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    if-eqz v1, :cond_0

    .line 53
    check-cast v0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    .line 54
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 57
    :cond_0
    return-object v0
.end method

.method public findPackagesByBundleName(Ljava/lang/String;)Ljava/util/Set;
    .locals 6

    .prologue
    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bundleName can\'t be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundlesManager()Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    move-result-object v1

    .line 68
    invoke-interface {v1, p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->e()[Ljava/lang/String;

    move-result-object v2

    .line 71
    if-eqz v2, :cond_2

    array-length v1, v2

    if-lez v1, :cond_2

    .line 72
    new-instance v0, Ljava/util/HashSet;

    array-length v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 73
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 74
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 75
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_2
    return-object v0
.end method

.method public getAllBundleNames()Ljava/util/Collection;
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundlesManager()Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->h()Ljava/util/Collection;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    .line 45
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_0
    return-object v2
.end method

.method public getBundleFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundlesManager()Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    move-result-object v0

    .line 95
    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBundleNameByComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundlesManager()Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    move-result-object v0

    .line 86
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->d(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResourcesByBundle(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 5

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    iget-object v1, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundlesManager()Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    move-result-object v1

    .line 185
    invoke-interface {v1, p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v2

    .line 186
    if-eqz v2, :cond_0

    .line 188
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getOldResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a(Lcom/alipay/mobile/quinox/bundle/a;Landroid/content/res/Resources;[Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 189
    const-string/jumbo v1, "Quinox_BundleContext"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Bundle=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], founded by name: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-object v0

    .line 190
    :catch_0
    move-exception v1

    .line 191
    const-string/jumbo v2, "Quinox_BundleContext"

    const-string/jumbo v3, "replace mResource error"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 194
    :cond_0
    const-string/jumbo v1, "Quinox_BundleContext"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can\'t find Bundle by name ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundlesManager()Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    move-result-object v0

    .line 139
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v1

    .line 140
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->i()Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;

    move-result-object v2

    if-nez v2, :cond_0

    .line 143
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a(Lcom/alipay/mobile/quinox/bundle/a;)V

    .line 144
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;

    .line 146
    :cond_0
    return-object v1
.end method

.method public registerBundleObserver(Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundlesManager()Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    move-result-object v0

    .line 201
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a(Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;)V

    .line 202
    return-void
.end method

.method public removeExternalBundle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundlesManager()Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    move-result-object v0

    .line 111
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->f(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public varargs replaceResources(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundlesManager()Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    move-result-object v1

    .line 157
    invoke-interface {v1, p2}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->d(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v2

    .line 158
    if-eqz v2, :cond_0

    .line 159
    const-string/jumbo v0, "Quinox_BundleContext"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Bundle=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "], founded by component: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "mResources"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 162
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 163
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    .line 165
    invoke-interface {v1, v2, v0, p3}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a(Lcom/alipay/mobile/quinox/bundle/a;Landroid/content/res/Resources;[Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 166
    invoke-virtual {v3, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    const-string/jumbo v1, "replace mResource error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->upload(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_0
    const-string/jumbo v0, "Quinox_BundleContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can\'t find Bundle by component ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public revertBundles(Ljava/util/List;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 129
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "can\'t in main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundlesManager()Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    move-result-object v0

    .line 133
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public unregisterBundleObserver()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundlesManager()Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->k()V

    .line 207
    return-void
.end method

.method public updateBundles(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "can\'t in main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundlesManager()Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    move-result-object v0

    .line 122
    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method
