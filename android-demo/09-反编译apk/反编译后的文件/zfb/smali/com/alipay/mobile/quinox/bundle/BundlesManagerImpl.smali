.class public Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;
.super Ljava/lang/Object;
.source "BundlesManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/bundle/BundlesManager;


# instance fields
.field private a:Lcom/alipay/mobile/quinox/LauncherApplication;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Set;

.field private f:Ljava/util/Set;

.field private g:Ljava/util/Map;

.field private h:Ljava/util/Map;

.field private final i:Ljava/util/Map;

.field private j:Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;

.field private k:Lcom/alipay/mobile/quinox/bundle/h;

.field private final l:Z

.field private m:Ljava/util/zip/ZipFile;

.field private n:Lnet/lingala/zip4j/core/b;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i:Ljava/util/Map;

    .line 145
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->isDebug()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->l:Z

    .line 146
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 147
    new-instance v0, Lcom/alipay/mobile/quinox/bundle/h;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    iget-boolean v2, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->l:Z

    invoke-direct {v0, v1, p0}, Lcom/alipay/mobile/quinox/bundle/h;-><init>(Landroid/content/Context;Lcom/alipay/mobile/quinox/bundle/BundlesManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->k:Lcom/alipay/mobile/quinox/bundle/h;

    .line 148
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    .line 149
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->h:Ljava/util/Map;

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-string/jumbo v1, "plugins"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/bundle/b;->a(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-string/jumbo v1, "plugins_opt"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->c:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-string/jumbo v1, "plugins_lib"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->d:Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->e:Ljava/util/Set;

    .line 162
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->f:Ljava/util/Set;

    .line 163
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/util/Map;)V
    .locals 7

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i()Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    move-result-object v1

    .line 855
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    .line 856
    new-instance v3, Ldalvik/system/DexClassLoader;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v3, v0, v4, v5, v6}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 859
    :cond_0
    return-void
.end method

.method private a(Ljava/util/Set;Lcom/alipay/mobile/quinox/bundle/a;Ljava/util/Set;)V
    .locals 5

    .prologue
    .line 1306
    iget-object v0, p2, Lcom/alipay/mobile/quinox/bundle/a;->c:Ljava/lang/String;

    .line 1307
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1309
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1310
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1312
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "-quinox"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1313
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v2

    .line 1316
    if-eqz v2, :cond_1

    .line 1317
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1322
    iget-object v0, v2, Lcom/alipay/mobile/quinox/bundle/a;->n:Ljava/util/Set;

    .line 1323
    invoke-direct {p0, p1, v2, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/util/Set;Lcom/alipay/mobile/quinox/bundle/a;Ljava/util/Set;)V

    goto :goto_0

    .line 1326
    :cond_1
    iget-boolean v2, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->l:Z

    if-eqz v2, :cond_0

    .line 1327
    const-string/jumbo v2, "BundleResources"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Can\'t find depended Bundle by bundleName=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1332
    :cond_2
    const-string/jumbo v1, "BundleResources"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getShallowDepends: (bundle=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "], has no depends."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 471
    move v2, v1

    .line 472
    :goto_0
    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    .line 474
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :goto_1
    return v0

    .line 477
    :catch_0
    move-exception v3

    .line 478
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "extractBundleFromApk("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") an exception occurs: retry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 480
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 481
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->upload(Ljava/lang/String;)V

    .line 482
    new-instance v4, Lcom/alipay/mobile/quinox/bundle/i;

    invoke-direct {v4}, Lcom/alipay/mobile/quinox/bundle/i;-><init>()V

    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v4, v5, v3, v2}, Lcom/alipay/mobile/quinox/bundle/i;->a(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/Throwable;I)V

    .line 472
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 489
    move v2, v1

    .line 490
    :goto_0
    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    .line 492
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_1
    return v0

    .line 495
    :catch_0
    move-exception v3

    .line 496
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "extractSosFromBundle("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", dls="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->array2String([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") an exception occurs: retry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 498
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 499
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->upload(Ljava/lang/String;)V

    .line 500
    new-instance v4, Lcom/alipay/mobile/quinox/bundle/i;

    invoke-direct {v4}, Lcom/alipay/mobile/quinox/bundle/i;-><init>()V

    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v4, v5, v3, v2}, Lcom/alipay/mobile/quinox/bundle/i;->a(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/Throwable;I)V

    .line 490
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/util/Set;Z)Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 688
    const-string/jumbo v0, "dynamicLoadToCheck"

    const-string/jumbo v2, "upgrade"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 690
    new-instance v6, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 691
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 692
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 693
    invoke-static {v2}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->h(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v8

    .line 694
    iget-object v0, v8, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v0

    .line 696
    if-eqz p4, :cond_2

    .line 697
    if-eqz v0, :cond_0

    iget-object v9, v8, Lcom/alipay/mobile/quinox/bundle/a;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/a;->b:Ljava/lang/String;

    invoke-static {v9, v0}, Lcom/alipay/mobile/quinox/utils/StringUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v3

    .line 701
    :goto_1
    iget-object v9, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->k:Lcom/alipay/mobile/quinox/bundle/h;

    invoke-virtual {v9, v8}, Lcom/alipay/mobile/quinox/bundle/h;->a(Lcom/alipay/mobile/quinox/bundle/a;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-eqz v0, :cond_5

    .line 702
    iget-object v0, v8, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    invoke-virtual {v6, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move v0, v1

    .line 697
    goto :goto_1

    .line 699
    :cond_2
    if-eqz v0, :cond_3

    iget-object v9, v8, Lcom/alipay/mobile/quinox/bundle/a;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/a;->b:Ljava/lang/String;

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1

    .line 704
    :cond_5
    const-string/jumbo v0, "BundlesManagerImpl"

    const-string/jumbo v1, "MonitorPoint_DynamicLoad_UpgradeErr"

    iget-object v3, v8, Lcom/alipay/mobile/quinox/bundle/a;->c:Ljava/lang/String;

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 706
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'s checkSign failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_6
    const-string/jumbo v0, "BundlesManagerImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "updateBundles() ignore: path="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " is not exist."

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 713
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 714
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->h:Ljava/util/Map;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 715
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 716
    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 717
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 718
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 723
    :cond_8
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->k:Lcom/alipay/mobile/quinox/bundle/h;

    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2}, Lcom/alipay/mobile/quinox/bundle/h;->a(Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i()Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    move-result-object v4

    .line 730
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 733
    invoke-direct {p0, v6}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b(Ljava/util/Map;)V

    .line 735
    if-eqz p2, :cond_a

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 736
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 737
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v0

    .line 738
    if-eqz v0, :cond_9

    .line 739
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Lcom/alipay/mobile/quinox/bundle/a;)V

    goto :goto_3

    .line 724
    :catch_0
    move-exception v0

    const-string/jumbo v1, "MonitorPoint_DynamicLoad_UpgradeErr"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 726
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'s dependencies error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 746
    :cond_a
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v3

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 747
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v9

    .line 748
    if-eqz v9, :cond_b

    .line 749
    invoke-virtual {p0, v9}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Lcom/alipay/mobile/quinox/bundle/a;)V

    .line 751
    :cond_b
    invoke-virtual {v4, v0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->isInHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v3

    :goto_5
    and-int/2addr v0, v2

    move v2, v0

    .line 752
    goto :goto_4

    :cond_c
    move v0, v1

    .line 751
    goto :goto_5

    .line 753
    :cond_d
    if-eqz p2, :cond_f

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 754
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 755
    invoke-virtual {v4, v0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->isInHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v3

    :goto_7
    and-int/2addr v2, v0

    .line 756
    goto :goto_6

    :cond_e
    move v0, v1

    .line 755
    goto :goto_7

    .line 759
    :cond_f
    if-eqz v2, :cond_13

    .line 760
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    .line 761
    invoke-virtual {v4, v0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a(Lcom/alipay/mobile/quinox/bundle/a;)V

    .line 762
    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->getBundleClassLoader(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;

    goto :goto_8

    .line 764
    :cond_10
    invoke-direct {p0, v6}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->c(Ljava/util/Map;)V

    .line 765
    if-eqz p2, :cond_12

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 766
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 767
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v0

    .line 768
    if-eqz v0, :cond_11

    .line 769
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->c(Lcom/alipay/mobile/quinox/bundle/a;)V

    goto :goto_9

    .line 773
    :cond_12
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setupResources()V

    .line 780
    :goto_a
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->h:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 781
    if-eqz p2, :cond_14

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 782
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 783
    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->h:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 776
    :cond_13
    invoke-direct {p0, v6}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/util/Map;)V

    goto :goto_a

    .line 786
    :cond_14
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/util/Collection;)V

    .line 788
    invoke-interface {p3, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 789
    return v2
.end method

.method static synthetic b(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1063
    const/4 v2, 0x0

    .line 1065
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1066
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "armeabi"

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, p1, v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1067
    if-nez v0, :cond_0

    .line 1076
    :goto_0
    return-void

    .line 1070
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1071
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1072
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->copyFile(Ljava/io/BufferedInputStream;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1074
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    .line 1075
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 1076
    :cond_1
    throw v0

    .line 1074
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private b(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 1170
    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    .line 1208
    :cond_0
    :goto_0
    return-void

    .line 1174
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1175
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    const/4 v1, 0x0

    .line 1180
    array-length v6, p2

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    :goto_1
    if-ge v3, v6, :cond_9

    aget-object v7, p2, v3

    .line 1181
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 1182
    if-nez v0, :cond_2

    .line 1185
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 1187
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "lib"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1188
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 1189
    if-nez v1, :cond_3

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1190
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "lib"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1191
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 1193
    :cond_3
    if-nez v1, :cond_a

    .line 1194
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "lib"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "armeabi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1195
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    move-object v4, v1

    .line 1198
    :goto_2
    if-eqz v4, :cond_8

    .line 1199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    cmp-long v1, v1, v10

    if-nez v1, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v10

    cmp-long v1, v1, v10

    if-eqz v1, :cond_5

    :cond_4
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1, v9}, Lcom/alipay/mobile/quinox/utils/FileUtil;->copyFile(Ljava/io/BufferedInputStream;Ljava/io/File;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 1200
    :cond_5
    const-string/jumbo v1, "BootLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "copy so: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " success."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    :cond_6
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1

    .line 1199
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_7
    throw v0

    .line 1202
    :cond_8
    const-string/jumbo v1, "BootLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "copy so: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " error, not exist."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1205
    :cond_9
    if-eqz v0, :cond_0

    .line 1206
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    goto/16 :goto_0

    .line 1199
    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_a
    move-object v4, v1

    goto/16 :goto_2
.end method

.method private b(Ljava/util/Map;)V
    .locals 8

    .prologue
    .line 862
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    .line 866
    iget-object v1, v0, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    .line 867
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v4

    .line 869
    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/alipay/mobile/quinox/bundle/a;->b:Ljava/lang/String;

    invoke-static {v2, v1, v5}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateBundleFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 870
    const-string/jumbo v2, "dynamicLoadToCheck"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "install:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " dest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const-string/jumbo v2, "BundlesManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " install: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "     dest: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    const/4 v2, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/FileUtil;->copyFile(Ljava/io/BufferedInputStream;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 874
    iget-object v1, v0, Lcom/alipay/mobile/quinox/bundle/a;->l:[Ljava/lang/String;

    invoke-direct {p0, v5, v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 875
    invoke-virtual {v0, v5}, Lcom/alipay/mobile/quinox/bundle/a;->a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    goto/16 :goto_0

    .line 873
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_0
    throw v0

    .line 877
    :cond_1
    return-void

    .line 873
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private b([Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 512
    if-eqz p1, :cond_3

    array-length v0, p1

    if-lez v0, :cond_3

    .line 513
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 516
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v0, p1, v1

    .line 517
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v3

    .line 518
    if-eqz v3, :cond_1

    .line 519
    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 521
    iget-object v0, v3, Lcom/alipay/mobile/quinox/bundle/a;->n:Ljava/util/Set;

    .line 522
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 523
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 524
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "-quinox"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 525
    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->f:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 516
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 531
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->f:Ljava/util/Set;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 533
    :cond_3
    return-void
.end method

.method private c(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1267
    return-void
.end method

.method private static h(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;
    .locals 1

    .prologue
    .line 666
    new-instance v0, Lcom/alipay/mobile/quinox/bundle/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/bundle/a;-><init>(Ljava/lang/String;)V

    .line 667
    return-object v0
.end method

.method private l()V
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "key_ensure_native_libs_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v3}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getProductVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-string/jumbo v4, "framework_preferences"

    invoke-virtual {v0, v4, v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 220
    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 221
    const-string/jumbo v5, "BundlesManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ensureNativeLibs.getBoolean("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    if-eqz v0, :cond_6

    .line 224
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->m()V

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "lib"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "lib"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "armeabi"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, "lib.*\\.so"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 232
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->m:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_7

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->m:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v9

    .line 236
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 238
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {v7, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 240
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_1
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 248
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a()Ljava/util/Iterator;

    move-result-object v6

    .line 249
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "lib"

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ".so"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 253
    :cond_2
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 254
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 255
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v7, v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->d:Ljava/lang/String;

    invoke-direct {v7, v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 261
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 264
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 265
    const-string/jumbo v8, "BundlesManagerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ensureNativeLibs.extractBundleFromApk("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-direct {p0, v0, v7}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    .line 268
    goto :goto_2

    .line 269
    :cond_5
    if-eqz v1, :cond_6

    .line 270
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 271
    const-string/jumbo v0, "BundlesManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ensureNativeLibs.putBoolean("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "=false)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_6
    :goto_3
    return-void

    .line 274
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->n:Lnet/lingala/zip4j/core/b;

    if-eqz v0, :cond_6

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->n:Lnet/lingala/zip4j/core/b;

    invoke-virtual {v0}, Lnet/lingala/zip4j/core/b;->a()Ljava/util/List;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    .line 279
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/f;

    .line 280
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/f;->j()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {v7, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 282
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 286
    :catch_0
    move-exception v0

    .line 287
    const-string/jumbo v7, "BundlesManagerImpl"

    invoke-static {v7, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    :cond_9
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 294
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a()Ljava/util/Iterator;

    move-result-object v7

    .line 295
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 296
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "lib"

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v9, ".so"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 299
    :cond_a
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 300
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 301
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 304
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v9}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v8, v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_b

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_b

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->d:Ljava/lang/String;

    invoke-direct {v8, v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 307
    :cond_b
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 311
    :cond_c
    :try_start_1
    iget-object v8, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->n:Lnet/lingala/zip4j/core/b;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnet/lingala/zip4j/core/b;->a(Ljava/lang/String;)Lnet/lingala/zip4j/model/f;

    move-result-object v8

    .line 312
    iget-object v9, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->n:Lnet/lingala/zip4j/core/b;

    iget-object v10, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->d:Ljava/lang/String;

    invoke-virtual {v9, v8, v10, v0}, Lnet/lingala/zip4j/core/b;->a(Lnet/lingala/zip4j/model/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string/jumbo v8, "BundlesManagerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ensureNativeLibs.extractBundleFromApk("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v9, ")"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 314
    :catch_1
    move-exception v0

    .line 316
    const-string/jumbo v1, "BundlesManagerImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v2

    .line 319
    goto :goto_6

    .line 320
    :cond_d
    if-eqz v1, :cond_6

    .line 321
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 322
    const-string/jumbo v0, "BundlesManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ensureNativeLibs.putBoolean("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "=false)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private m()V
    .locals 4

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->m:Ljava/util/zip/ZipFile;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->n:Lnet/lingala/zip4j/core/b;

    if-nez v0, :cond_1

    .line 1086
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1088
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->m:Ljava/util/zip/ZipFile;

    if-nez v0, :cond_0

    .line 1090
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->m:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->m:Ljava/util/zip/ZipFile;

    if-nez v0, :cond_1

    .line 1098
    :try_start_1
    new-instance v0, Lnet/lingala/zip4j/core/b;

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/core/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->n:Lnet/lingala/zip4j/core/b;

    .line 1099
    const-string/jumbo v0, "BundlesManagerImpl"

    const-string/jumbo v1, "success to create zip4j.ZipFile"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .line 1105
    :cond_1
    :goto_1
    return-void

    .line 1091
    :catch_0
    move-exception v0

    .line 1092
    const-string/jumbo v2, "BundlesManagerImpl"

    const-string/jumbo v3, "failed to access the apk file."

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1100
    :catch_1
    move-exception v0

    .line 1101
    const-string/jumbo v1, "BundlesManagerImpl"

    const-string/jumbo v2, "failed to access the apk file (2)."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public final varargs declared-synchronized a(Lcom/alipay/mobile/quinox/bundle/a;Landroid/content/res/Resources;[Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1379
    monitor-enter p0

    :try_start_0
    iget-object v6, p1, Lcom/alipay/mobile/quinox/bundle/a;->c:Ljava/lang/String;

    .line 1382
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1383
    const-string/jumbo v0, "BundleResources"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "remove CachedResources [bundle="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", depends="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/alipay/mobile/quinox/utils/StringUtil;->array2String([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    .line 1388
    if-nez v0, :cond_8

    .line 1389
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetManager;

    .line 1390
    const-class v0, Landroid/content/res/AssetManager;

    const-string/jumbo v3, "addAssetPath"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1392
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1393
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v5, v0, v4

    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->addChromeResources(Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)V

    .line 1396
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1397
    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/alipay/mobile/quinox/bundle/a;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/mobile/quinox/bundle/a;->n:Ljava/util/Set;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz p3, :cond_3

    array-length v2, p3

    if-lez v2, :cond_3

    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v7

    array-length v8, p3

    add-int/2addr v7, v8

    invoke-direct {v2, v7}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    const-string/jumbo v4, "BundleResources"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "getShallowDepends() : Host Bundle Self=["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, "], _depends="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0, p1, v2}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/util/Set;Lcom/alipay/mobile/quinox/bundle/a;Ljava/util/Set;)V

    .line 1398
    :goto_1
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1399
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    .line 1400
    iget-boolean v4, v0, Lcom/alipay/mobile/quinox/bundle/a;->j:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1401
    iget-object v4, v0, Lcom/alipay/mobile/quinox/bundle/a;->i:Ljava/lang/String;

    .line 1402
    const-string/jumbo v7, "127"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1403
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1404
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1397
    :cond_3
    :try_start_1
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_4
    if-eqz p3, :cond_1

    array-length v4, p3

    if-lez v4, :cond_1

    new-instance v2, Ljava/util/HashSet;

    array-length v4, p3

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "BundleResources"

    const-string/jumbo v4, "getShallowDepends: (bundle==null)"

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_1

    .line 1415
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1416
    const-string/jumbo v0, "BundleResources"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Host Bundle Self=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], has no depended Bundle."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    :cond_7
    if-eqz p2, :cond_9

    .line 1421
    new-instance v0, Lcom/alipay/mobile/quinox/resources/c;

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/quinox/resources/c;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Lcom/alipay/mobile/quinox/bundle/a;Ljava/util/List;)V

    .line 1433
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setLocaleToResources(Landroid/content/res/Resources;)V

    .line 1434
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i:Ljava/util/Map;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1439
    :cond_8
    monitor-exit p0

    return-object v0

    .line 1425
    :cond_9
    :try_start_2
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1426
    invoke-virtual {v2}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 1428
    new-instance v0, Lcom/alipay/mobile/quinox/resources/c;

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/quinox/resources/c;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Lcom/alipay/mobile/quinox/bundle/a;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public final varargs a(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1109
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->m()V

    .line 1111
    const/4 v0, 0x0

    .line 1112
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->m:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_0

    .line 1113
    array-length v4, p3

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, p3, v3

    .line 1114
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "lib"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1115
    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->m:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 1116
    if-eqz v1, :cond_1

    .line 1118
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->m:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1119
    if-eqz v0, :cond_1

    .line 1128
    :cond_0
    if-nez v0, :cond_2

    .line 1129
    array-length v3, p3

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, p3, v1

    .line 1130
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "lib"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1131
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1132
    if-nez v0, :cond_2

    .line 1133
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1122
    :catch_0
    move-exception v1

    .line 1123
    const-string/jumbo v5, "BundlesManagerImpl"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1113
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 1138
    :cond_2
    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->n:Lnet/lingala/zip4j/core/b;

    if-eqz v1, :cond_5

    .line 1139
    array-length v3, p3

    :goto_2
    if-ge v2, v3, :cond_5

    aget-object v1, p3, v2

    .line 1140
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "lib"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1142
    :try_start_1
    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->n:Lnet/lingala/zip4j/core/b;

    invoke-virtual {v4, v1}, Lnet/lingala/zip4j/core/b;->a(Ljava/lang/String;)Lnet/lingala/zip4j/model/f;

    move-result-object v4

    .line 1143
    if-nez v4, :cond_4

    .line 1144
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1145
    const-string/jumbo v4, "BundlesManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "null == fileHandler : path="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    :cond_3
    :goto_3
    if-nez v0, :cond_5

    .line 1154
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 1148
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->n:Lnet/lingala/zip4j/core/b;

    invoke-virtual {v1, v4}, Lnet/lingala/zip4j/core/b;->a(Lnet/lingala/zip4j/model/f;)Lnet/lingala/zip4j/io/d;
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_3

    .line 1150
    :catch_1
    move-exception v1

    .line 1151
    const-string/jumbo v4, "BundlesManagerImpl"

    invoke-static {v4, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1158
    :cond_5
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1001
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1014
    :cond_0
    :goto_0
    return-object v0

    .line 1005
    :cond_1
    const-string/jumbo v1, "com.alipay."

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "."

    const-string/jumbo v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "-build"

    const-string/jumbo v3, ""

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1010
    :try_start_0
    invoke-static {v1, p3}, Lcom/alipay/mobile/quinox/bundle/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1011
    :catch_0
    move-exception v1

    .line 1012
    const-string/jumbo v2, "BundlesManagerImpl"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;)Ljava/util/Set;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 794
    const-string/jumbo v1, "dynamicLoadToCheck"

    const-string/jumbo v2, "revert"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 849
    :cond_0
    :goto_0
    return-object v0

    .line 798
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 800
    new-instance v3, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v4, "apps"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 801
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 802
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 807
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v4, "bundles.cfg"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 808
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_1
    new-instance v5, Lcom/alipay/mobile/quinox/bundle/g;

    invoke-direct {v5, p0, p1, v3, v2}, Lcom/alipay/mobile/quinox/bundle/g;-><init>(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;Ljava/util/List;Ljava/io/File;Ljava/util/List;)V

    invoke-static {v1, v0, v4, v5}, Lcom/alipay/mobile/quinox/bundle/b;->a(Ljava/io/BufferedInputStream;Ljava/util/List;Ljava/util/Map;Lcom/alipay/mobile/quinox/bundle/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 834
    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 838
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 839
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 840
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 831
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 832
    :goto_3
    :try_start_2
    const-string/jumbo v3, "BundlesManagerImpl"

    const-string/jumbo v4, "Failed to load .apk/asset/bundles.cfg"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 834
    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_4
    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0

    .line 843
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 844
    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/util/List;Ljava/util/List;Ljava/util/Set;Z)Z

    .line 846
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 847
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFileImmediately(Ljava/lang/String;)Z

    goto :goto_5

    :cond_4
    move-object v0, v1

    .line 849
    goto/16 :goto_0

    .line 834
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 831
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public final a(Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;)V
    .locals 0

    .prologue
    .line 1458
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->j:Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;

    .line 1459
    return-void
.end method

.method public final a(Lcom/alipay/mobile/quinox/bundle/a;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 885
    const-string/jumbo v0, "dynamicLoadToCheck"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "deleteBundleData:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const-class v4, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;

    monitor-enter v4

    .line 888
    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b:Ljava/lang/String;

    const-string/jumbo v3, "delete_bundles.cfg"

    invoke-direct {v5, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_6

    .line 892
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 893
    :try_start_2
    invoke-static {v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readStringArray(Ljava/io/BufferedInputStream;)[Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v3

    .line 897
    :try_start_3
    invoke-static {v0}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 901
    :goto_0
    if-eqz p1, :cond_4

    .line 902
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 903
    if-eqz v3, :cond_1

    array-length v6, v3

    if-lez v6, :cond_1

    .line 904
    array-length v6, v3

    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v3, v2

    .line 905
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 908
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 904
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 895
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "read "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " failed"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 897
    :try_start_5
    invoke-static {v0}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    move-object v3, v1

    .line 898
    goto :goto_0

    .line 897
    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 940
    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    .line 913
    :cond_1
    :try_start_6
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v2

    .line 914
    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 915
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 917
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 919
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 922
    :try_start_7
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b:Ljava/lang/String;

    const-string/jumbo v8, "delete_bundles.cfg"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 923
    :try_start_8
    invoke-static {v2, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeStringArray(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 927
    :try_start_9
    invoke-static {v2}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 940
    :cond_3
    :goto_4
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return-void

    .line 925
    :catch_1
    move-exception v0

    :goto_5
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "write "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 927
    :try_start_b
    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_6
    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0

    .line 929
    :cond_4
    if-eqz v3, :cond_3

    array-length v0, v3

    if-lez v0, :cond_3

    .line 931
    const/4 v0, 0x1

    .line 932
    array-length v6, v3

    move v1, v0

    move v0, v2

    :goto_7
    if-ge v0, v6, :cond_5

    aget-object v2, v3, v0

    .line 933
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFileImmediately(Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 932
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 935
    :cond_5
    if-eqz v1, :cond_3

    .line 936
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    .line 927
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_6

    .line 925
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 897
    :catchall_4
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_3

    .line 895
    :catch_3
    move-exception v3

    goto/16 :goto_2

    :cond_6
    move-object v3, v1

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/alipay/mobile/quinox/bundle/b;->a(Ljava/util/List;Ljava/util/Map;Lcom/alipay/mobile/quinox/bundle/e;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b([Ljava/lang/String;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->isUpgrade()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "bundles.cfg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/alipay/mobile/quinox/bundle/f;

    invoke-direct {v4, p0, v2}, Lcom/alipay/mobile/quinox/bundle/f;-><init>(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;Ljava/lang/String;)V

    invoke-static {v1, v0, v3, v4}, Lcom/alipay/mobile/quinox/bundle/b;->a(Ljava/io/BufferedInputStream;Ljava/util/List;Ljava/util/Map;Lcom/alipay/mobile/quinox/bundle/e;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 175
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->l()V

    .line 177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 178
    const-string/jumbo v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 179
    if-eqz v2, :cond_8

    array-length v0, v2

    if-lez v0, :cond_8

    .line 180
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 182
    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_4

    aget-object v5, v2, v1

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    .line 186
    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/a;->n:Ljava/util/Set;

    .line 188
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 189
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    iget-object v6, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 167
    :catch_0
    move-exception v0

    const-string/jumbo v3, "BundlesManagerImpl"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    const-string/jumbo v3, "readCfg-exception:"

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->upload(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 172
    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_3
    const-string/jumbo v2, "BundlesManagerImpl"

    const-string/jumbo v3, "Failed to load .apk/assets/bundles.cfg"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_5
    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0

    .line 182
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 195
    :cond_4
    const-string/jumbo v0, "BundlesManagerImpl"

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 201
    :cond_5
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 202
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 207
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 208
    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 210
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 215
    :cond_8
    return-void

    .line 172
    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4
.end method

.method public final a(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 2

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->j:Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;

    if-eqz v0, :cond_0

    .line 1476
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->j:Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;->onBundleLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1481
    :cond_0
    :goto_0
    return-void

    .line 1477
    :catch_0
    move-exception v0

    .line 1478
    const-string/jumbo v1, "BundlesManagerImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/util/Collection;)V
    .locals 2

    .prologue
    .line 1020
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->e:Ljava/util/Set;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/bundle/b;->a([Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    :goto_0
    monitor-exit p0

    return-void

    .line 1021
    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "writeCfg-exception:"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1023
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 1024
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->upload(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1020
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 554
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 556
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 557
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 558
    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->f:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 562
    :cond_1
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z
    .locals 1

    .prologue
    .line 673
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/util/List;Ljava/util/List;Ljava/util/Set;Z)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;
    .locals 1

    .prologue
    .line 1245
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected final b(Lcom/alipay/mobile/quinox/bundle/a;)V
    .locals 2

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    iget-object v1, p1, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    return-void
.end method

.method public final c(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;
    .locals 3

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1251
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1253
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    .line 1254
    iget-object v2, v0, Lcom/alipay/mobile/quinox/bundle/a;->i:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1258
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected final c(Lcom/alipay/mobile/quinox/bundle/a;)V
    .locals 2

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    iget-object v1, p1, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    return-void
.end method

.method public final d(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;
    .locals 6

    .prologue
    .line 983
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a()Ljava/util/Iterator;

    move-result-object v2

    .line 985
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 987
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    .line 988
    iget-object v3, v0, Lcom/alipay/mobile/quinox/bundle/a;->h:[Ljava/lang/String;

    .line 989
    if-eqz v3, :cond_0

    array-length v1, v3

    if-lez v1, :cond_0

    .line 990
    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 991
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 997
    :goto_1
    return-object v0

    .line 990
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 997
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 945
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->k:Lcom/alipay/mobile/quinox/bundle/h;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/h;->a()V

    .line 948
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->k:Lcom/alipay/mobile/quinox/bundle/h;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 950
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setupResources()V

    .line 951
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->recover()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 962
    :cond_0
    :goto_1
    return-void

    .line 952
    :catch_0
    move-exception v0

    .line 953
    const-string/jumbo v1, "BundlesManagerImpl"

    const-string/jumbo v2, "[verify] recover version error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 957
    :catch_1
    move-exception v0

    .line 958
    const-string/jumbo v1, "BundlesManagerImpl"

    const-string/jumbo v2, "writeCfg-[verify] write cfg error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 959
    const-string/jumbo v1, "verify: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final declared-synchronized e(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 587
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i()Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    move-result-object v0

    .line 588
    invoke-static {p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->h(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v6

    .line 589
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->k:Lcom/alipay/mobile/quinox/bundle/h;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/quinox/bundle/h;->a(Lcom/alipay/mobile/quinox/bundle/a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 590
    const-string/jumbo v0, "BundlesManagerImpl"

    const-string/jumbo v1, "MonitorPoint_DynamicLoad_addExternalErr"

    iget-object v3, v6, Lcom/alipay/mobile/quinox/bundle/a;->c:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 592
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'s checkSign failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/alipay/mobile/quinox/bundle/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 595
    :cond_0
    :try_start_1
    iget-object v1, v6, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    .line 596
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v2

    .line 597
    if-eqz v2, :cond_1

    iget-object v3, v6, Lcom/alipay/mobile/quinox/bundle/a;->b:Ljava/lang/String;

    iget-object v4, v2, Lcom/alipay/mobile/quinox/bundle/a;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/StringUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 599
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\'s BundleVersion is lower :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v6, Lcom/alipay/mobile/quinox/bundle/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " vs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lcom/alipay/mobile/quinox/bundle/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 604
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 605
    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 607
    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->h:Ljava/util/Map;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 608
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    :try_start_2
    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->k:Lcom/alipay/mobile/quinox/bundle/h;

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Lcom/alipay/mobile/quinox/bundle/h;->a(Ljava/util/Map;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 617
    :try_start_3
    invoke-direct {p0, v4}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b(Ljava/util/Map;)V

    .line 619
    if-eqz v2, :cond_2

    .line 620
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Lcom/alipay/mobile/quinox/bundle/a;)V

    .line 622
    :cond_2
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 623
    const-string/jumbo v0, "BundlesManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "The added bundle is already loaded, [path="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "], so you should restart app to take effect"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->h:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 633
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/util/Collection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 635
    monitor-exit p0

    return-object v1

    .line 611
    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "MonitorPoint_DynamicLoad_addExternalErr"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 613
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v6, Lcom/alipay/mobile/quinox/bundle/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'s dependencies error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/alipay/mobile/quinox/bundle/a;->n:Ljava/util/Set;

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_3
    invoke-virtual {v0, v6}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a(Lcom/alipay/mobile/quinox/bundle/a;)V

    .line 627
    iget-object v2, v6, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->getBundleClassLoader(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;

    .line 628
    invoke-direct {p0, v4}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->c(Ljava/util/Map;)V

    .line 629
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setupResources()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public final e()Ljava/util/Map;
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    return-object v0
.end method

.method public final declared-synchronized f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 640
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->h(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v0

    .line 641
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->c(Lcom/alipay/mobile/quinox/bundle/a;)V

    .line 642
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i()Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    move-result-object v1

    .line 643
    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    monitor-exit p0

    return-void

    .line 640
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 966
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 967
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 968
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v0

    .line 969
    if-eqz v0, :cond_0

    .line 970
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 973
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 974
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 975
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    .line 976
    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 978
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected final g(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    return-object v0
.end method

.method public final g()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 570
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 571
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 572
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v0

    .line 573
    if-eqz v0, :cond_0

    .line 574
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 577
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 578
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 579
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    .line 580
    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 582
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 649
    instance-of v1, v0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    if-eqz v1, :cond_0

    .line 651
    check-cast v0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    .line 655
    return-object v0

    .line 653
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "classloader error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isInHost(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized j()V
    .locals 3

    .prologue
    .line 1445
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    :goto_0
    monitor-exit p0

    return-void

    .line 1447
    :catch_0
    move-exception v0

    .line 1448
    :try_start_1
    const-string/jumbo v1, "BundlesManagerImpl"

    const-string/jumbo v2, "clearCachedBundleResources"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1445
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 1466
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->j:Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;

    .line 1467
    return-void
.end method
