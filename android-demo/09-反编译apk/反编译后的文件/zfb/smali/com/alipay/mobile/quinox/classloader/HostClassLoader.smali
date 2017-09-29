.class public Lcom/alipay/mobile/quinox/classloader/HostClassLoader;
.super Ldalvik/system/PathClassLoader;
.source "HostClassLoader.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;


# instance fields
.field private a:Lcom/alipay/mobile/quinox/LauncherApplication;

.field private b:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

.field private c:Ldalvik/system/PathClassLoader;

.field private d:[Ldalvik/system/DexFile;

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

.field private h:Ljava/util/Set;

.field private final i:[Ljava/io/IOException;

.field private j:Ljava/util/List;

.field private k:Ljava/lang/reflect/Method;

.field private l:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ldalvik/system/PathClassLoader;Lcom/alipay/mobile/quinox/bundle/BundlesManager;[Ldalvik/system/DexFile;[Ljava/io/IOException;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p2, p3, p4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->j:Ljava/util/List;

    .line 46
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->l:Z

    .line 53
    iput-object p5, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->c:Ldalvik/system/PathClassLoader;

    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/LauncherApplication;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 56
    invoke-interface {p6}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->f()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->e:[Ljava/lang/String;

    .line 57
    invoke-interface {p6}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->g()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->f:[Ljava/lang/String;

    .line 58
    iput-object p6, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->g:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    .line 59
    iput-object p7, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:[Ldalvik/system/DexFile;

    .line 60
    iput-object p8, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->i:[Ljava/io/IOException;

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SM-N900"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 63
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5

    .prologue
    .line 214
    :try_start_0
    const-class v0, Ljava/lang/ClassLoader;

    const-string/jumbo v1, "findLoadedClass"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 216
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 217
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->c:Ldalvik/system/PathClassLoader;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 218
    if-nez v0, :cond_0

    .line 219
    const-class v0, Ljava/lang/ClassLoader;

    const-string/jumbo v1, "findClass"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 221
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 222
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->c:Ldalvik/system/PathClassLoader;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_0
    return-object v0

    .line 226
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "can\'t find class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 11

    .prologue
    const/16 v10, 0x13

    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:[Ldalvik/system/DexFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:[Ldalvik/system/DexFile;

    array-length v0, v0

    if-gtz v0, :cond_2

    .line 72
    :cond_0
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 137
    :cond_1
    return-object v0

    .line 74
    :cond_2
    const/4 v0, 0x0

    .line 76
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v10, :cond_6

    .line 77
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 79
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->k:Ljava/lang/reflect/Method;

    if-nez v1, :cond_3

    .line 81
    :try_start_0
    const-class v1, Ldalvik/system/DexFile;

    const-string/jumbo v3, "loadClassBinaryName"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/ClassLoader;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/util/List;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->k:Ljava/lang/reflect/Method;

    .line 82
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->k:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:[Ldalvik/system/DexFile;

    array-length v5, v4

    move v3, v2

    move-object v1, v0

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v0, v4, v3

    .line 89
    if-eqz v0, :cond_c

    .line 90
    const/16 v6, 0x2e

    const/16 v7, 0x2f

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 94
    :try_start_1
    iget-object v7, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->k:Ljava/lang/reflect/Method;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v6, 0x1

    aput-object p0, v8, v6

    const/4 v6, 0x2

    iget-object v9, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->j:Ljava/util/List;

    aput-object v9, v8, v6

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    :goto_2
    if-nez v0, :cond_5

    .line 99
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_1

    .line 84
    :catch_0
    move-exception v1

    const-string/jumbo v1, "HostClassLoader"

    const-string/jumbo v3, "Failed to reflect Method: loadClassBinaryName"

    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :catch_1
    move-exception v0

    .line 96
    const-string/jumbo v6, "HostClassLoader"

    const-string/jumbo v7, "Failed to invoke Method: loadClassBinaryName"

    invoke-static {v6, v7, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 112
    :cond_5
    if-nez v0, :cond_1

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    iget-object v3, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:[Ldalvik/system/DexFile;

    array-length v4, v3

    move v0, v2

    :goto_4
    if-ge v0, v4, :cond_9

    aget-object v2, v3, v0

    .line 115
    if-nez v2, :cond_8

    .line 116
    const-string/jumbo v2, "null"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 103
    :cond_6
    iget-object v3, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:[Ldalvik/system/DexFile;

    array-length v4, v3

    move v1, v2

    :goto_6
    if-ge v1, v4, :cond_5

    aget-object v5, v3, v1

    .line 104
    if-eqz v5, :cond_7

    .line 105
    invoke-virtual {v5, p1, p0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 107
    if-nez v0, :cond_5

    .line 108
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 118
    :cond_8
    invoke-virtual {v2}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 121
    :cond_9
    new-instance v2, Ljava/lang/ClassNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "HostClassLoader didn\'t find class \""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\" on path: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v10, :cond_b

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->i:[Ljava/io/IOException;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->i:[Ljava/io/IOException;

    array-length v0, v0

    if-lez v0, :cond_a

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->i:[Ljava/io/IOException;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 130
    invoke-virtual {v2, v0}, Ljava/lang/ClassNotFoundException;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 135
    :cond_b
    throw v2

    :cond_c
    move-object v0, v1

    goto/16 :goto_3
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->h:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->pattern(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->patternHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->h:Ljava/util/Set;

    if-nez v0, :cond_3

    .line 146
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->e:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->e:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->getBundleClassLoader(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->h:Ljava/util/Set;

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->h:Ljava/util/Set;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/Class;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_5

    .line 171
    :cond_4
    :goto_1
    return-object v0

    .line 156
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->patternHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 157
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 161
    :cond_6
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 163
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->f:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->loadClassFromDepends(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 167
    if-nez v0, :cond_4

    .line 168
    throw v1
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 6

    .prologue
    .line 177
    const/4 v1, 0x0

    .line 180
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->l:Z

    if-nez v0, :cond_1

    .line 183
    const-class v0, Ljava/lang/ClassLoader;

    const-string/jumbo v2, "findLoadedClass"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 185
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 186
    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->c:Ldalvik/system/PathClassLoader;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    if-nez v0, :cond_0

    .line 192
    invoke-super {p0, p1, p2}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    .line 194
    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public loadClassFromCurrent(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->patternHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public loadClassFromDepends(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 260
    .line 261
    if-eqz p2, :cond_5

    array-length v0, p2

    if-lez v0, :cond_5

    .line 265
    array-length v3, p2

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, p2, v2

    .line 266
    invoke-static {v4}, Lcom/alipay/android/phone/thirdparty/common/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 267
    iget-object v5, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->getBundleClassLoader(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;

    move-result-object v5

    .line 271
    if-eqz v5, :cond_1

    .line 273
    :try_start_0
    invoke-interface {v5, p1}, Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;->loadClassFromCurrent(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 278
    if-eqz v1, :cond_3

    .line 292
    :cond_0
    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 293
    const-string/jumbo v2, "HostClassLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "HostClassLoader:[className="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "].dependBundle.lazyBundleNames="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/alipay/android/phone/thirdparty/common/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 296
    iget-object v3, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    invoke-virtual {v3, p1, v0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_6

    .line 299
    :try_start_1
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;->loadClassFromCurrent(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 304
    if-nez v0, :cond_4

    :goto_2
    move-object v1, v0

    .line 305
    goto :goto_1

    .line 282
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->g:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v5, v4}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->isInHost(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 283
    if-nez v0, :cond_2

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    :catch_0
    move-exception v4

    goto :goto_3

    .line 301
    :catch_1
    move-exception v0

    goto :goto_1

    :cond_4
    move-object v1, v0

    .line 311
    :cond_5
    return-object v1

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method
