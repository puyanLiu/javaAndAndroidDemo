.class public Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;
.super Ldalvik/system/PathClassLoader;
.source "BootstrapClassLoader.java"


# static fields
.field private static final f:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private a:Lcom/alipay/mobile/quinox/LauncherApplication;

.field private b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

.field private c:Ljava/util/Map;

.field private d:Lcom/alipay/mobile/quinox/classloader/c;

.field private e:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/alipay/mobile/quinox/classloader/a;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/classloader/a;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->f:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;Ldalvik/system/PathClassLoader;Lcom/alipay/mobile/quinox/bundle/BundlesManager;)V
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 79
    iput-object p3, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    .line 80
    invoke-direct {p0, p2}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a(Ldalvik/system/PathClassLoader;)V

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->c:Ljava/util/Map;

    .line 82
    new-instance v0, Lcom/alipay/mobile/quinox/classloader/c;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/quinox/classloader/c;-><init>(Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;Lcom/alipay/mobile/quinox/bundle/BundlesManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->d:Lcom/alipay/mobile/quinox/classloader/c;

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sget-object v1, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->f:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/quinox/classloader/b;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/quinox/classloader/b;-><init>(Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;Ljava/util/concurrent/ExecutorService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->d()V

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;)Lcom/alipay/mobile/quinox/bundle/BundlesManager;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/Class;
    .locals 3

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;

    .line 340
    :try_start_0
    invoke-interface {v0, p0}, Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;->loadClassFromCurrent(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 344
    if-eqz v0, :cond_2

    .line 345
    :cond_0
    :goto_1
    return-object v0

    .line 342
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 136
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "BootClassLoader"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    goto :goto_0

    .line 141
    :cond_0
    return-object p0
.end method

.method private a(Ldalvik/system/PathClassLoader;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 89
    .line 93
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    .line 94
    const-string/jumbo v0, "dalvik.system.BaseDexClassLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "pathList"

    invoke-static {p1, v0, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->fieldGet(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v0, v4, :cond_3

    .line 97
    const-string/jumbo v0, "dexElementsSuppressedExceptions"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->fieldGet(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/IOException;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v0

    .line 99
    :goto_0
    :try_start_1
    const-string/jumbo v0, "dexElements"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->fieldGet(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 101
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    new-array v7, v0, [Ldalvik/system/DexFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    :goto_1
    :try_start_2
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 104
    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 105
    const-string/jumbo v1, "dexFile"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->fieldGet(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/DexFile;

    aput-object v0, v7, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 109
    :cond_0
    :try_start_3
    const-string/jumbo v0, "mDexs"

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->fieldGet(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 110
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    new-array v7, v0, [Ldalvik/system/DexFile;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 111
    :goto_2
    :try_start_4
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 112
    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/DexFile;

    aput-object v0, v7, v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 111
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_1
    move-object v8, v1

    .line 119
    :cond_2
    :goto_3
    new-instance v0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v4

    iget-object v6, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;-><init>(Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ldalvik/system/PathClassLoader;Lcom/alipay/mobile/quinox/bundle/BundlesManager;[Ldalvik/system/DexFile;[Ljava/io/IOException;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->e:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    .line 123
    return-void

    .line 115
    :catch_0
    move-exception v0

    move-object v8, v1

    move-object v7, v1

    :goto_4
    const-string/jumbo v1, "DexfileError"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v7, v1

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v8, v1

    goto :goto_4

    :cond_3
    move-object v8, v1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->h()Ljava/util/Collection;

    move-result-object v0

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 177
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 178
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 179
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    .line 182
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->c()I

    move-result v2

    const v3, 0xa98670

    if-eq v2, v3, :cond_0

    .line 183
    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->d:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/quinox/classloader/c;->b(Lcom/alipay/mobile/quinox/bundle/a;)V

    goto :goto_0

    .line 186
    :cond_1
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    .locals 7

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 206
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v1, p2}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v2

    .line 207
    if-eqz v2, :cond_0

    .line 208
    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/a;->f()[Ljava/lang/String;

    move-result-object v3

    .line 209
    if-eqz v3, :cond_0

    array-length v1, v3

    if-lez v1, :cond_0

    .line 210
    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 211
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->d:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/quinox/classloader/c;->a(Lcom/alipay/mobile/quinox/bundle/a;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    move-result-object v0

    .line 213
    const-string/jumbo v1, "BootstrapClassLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "createLazyBundleClassLoader(className="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", exportPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", bundleName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "): classLoader="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_0
    return-object v0

    .line 210
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final a()Lcom/alipay/mobile/quinox/classloader/HostClassLoader;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->e:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    return-object v0
.end method

.method public final a(Lcom/alipay/mobile/quinox/bundle/a;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->d:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/classloader/c;->b(Lcom/alipay/mobile/quinox/bundle/a;)V

    .line 194
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;)V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 256
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 257
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v1

    .line 258
    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v2, p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->isInHost(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->e:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    .line 278
    :cond_0
    :goto_0
    return-object v0

    .line 262
    :cond_1
    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "InitExecutor #"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    const-string/jumbo v0, "BootstrapClassLoader"

    const-string/jumbo v2, "getQuinoxClassLoader() in current thread."

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->d:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/classloader/c;->a(Lcom/alipay/mobile/quinox/bundle/a;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->d:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/classloader/c;->a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    .line 278
    :cond_3
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->c(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4

    .prologue
    .line 313
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->d(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v1

    .line 314
    if-eqz v1, :cond_1

    .line 315
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;

    move-result-object v0

    .line 316
    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->c()I

    move-result v2

    const v3, 0xa98670

    if-ne v2, v3, :cond_0

    .line 317
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a(Lcom/alipay/mobile/quinox/bundle/a;)V

    .line 318
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;

    move-result-object v0

    .line 320
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->e:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    if-eq v0, v1, :cond_1

    .line 321
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;->loadClassFromCurrent(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->e:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public getBundleClassLoader(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 288
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 289
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v1

    .line 290
    if-nez v1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-object v0

    .line 294
    :cond_1
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "InitExecutor #"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    const-string/jumbo v0, "BootstrapClassLoader"

    const-string/jumbo v2, "getBundleClassLoaderSync() in current thread."

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->d:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/classloader/c;->a(Lcom/alipay/mobile/quinox/bundle/a;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    move-result-object v0

    goto :goto_0

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->d:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/classloader/c;->a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    .line 305
    :cond_3
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->c(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    move-result-object v0

    goto :goto_0
.end method
