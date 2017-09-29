.class public final Lcom/alipay/mobile/quinox/resources/b;
.super Ljava/lang/Object;
.source "BundleResourceHelper.java"


# instance fields
.field private a:Ljava/lang/ClassLoader;

.field private b:Ljava/lang/ClassLoader;

.field private c:Ljava/lang/ClassLoader;

.field private d:Ljava/lang/reflect/Method;

.field private e:Ljava/lang/reflect/Method;

.field private f:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/alipay/mobile/quinox/resources/b;->d:Ljava/lang/reflect/Method;

    .line 25
    iput-object v0, p0, Lcom/alipay/mobile/quinox/resources/b;->e:Ljava/lang/reflect/Method;

    .line 26
    iput-object v0, p0, Lcom/alipay/mobile/quinox/resources/b;->f:Ljava/lang/reflect/Method;

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/resources/b;->b:Ljava/lang/ClassLoader;

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/b;->b:Ljava/lang/ClassLoader;

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/resources/b;->a:Ljava/lang/ClassLoader;

    .line 33
    :try_start_0
    const-string/jumbo v0, "dalvik.system.VMStack"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 36
    :try_start_1
    const-string/jumbo v1, "getClasses"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/resources/b;->d:Ljava/lang/reflect/Method;

    .line 37
    iget-object v1, p0, Lcom/alipay/mobile/quinox/resources/b;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    :goto_0
    :try_start_2
    const-string/jumbo v1, "getClasses"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/resources/b;->e:Ljava/lang/reflect/Method;

    .line 44
    iget-object v1, p0, Lcom/alipay/mobile/quinox/resources/b;->e:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 50
    :goto_1
    :try_start_3
    const-string/jumbo v1, "getClosestUserClassLoader"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/ClassLoader;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/ClassLoader;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/resources/b;->f:Ljava/lang/reflect/Method;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/b;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 59
    :goto_2
    return-void

    .line 39
    :catch_0
    move-exception v1

    :try_start_4
    const-string/jumbo v1, "LauncherApplication"

    const-string/jumbo v2, "Failed to reflect \'getClasses(int)\'."

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 57
    :catch_1
    move-exception v0

    const-string/jumbo v0, "LauncherApplication"

    const-string/jumbo v1, "Failed to reflect \'dalvik.system.VMStack\'."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 46
    :catch_2
    move-exception v1

    :try_start_5
    const-string/jumbo v1, "LauncherApplication"

    const-string/jumbo v2, "Failed to reflect \'getClasses(int, boolean)\'."

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 54
    :catch_3
    move-exception v0

    const-string/jumbo v0, "LauncherApplication"

    const-string/jumbo v1, "Failed to reflect \'getClosestUserClassLoader(ClassLoader, ClassLoader)\'."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2
.end method


# virtual methods
.method public final a()Ljava/lang/ClassLoader;
    .locals 8

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 70
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/b;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/b;->d:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 80
    :goto_0
    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/b;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 82
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/b;->e:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v0

    .line 87
    :cond_0
    :goto_1
    if-eqz v3, :cond_6

    array-length v0, v3

    if-le v0, v1, :cond_6

    .line 88
    array-length v4, v3

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_6

    .line 89
    aget-object v1, v3, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 90
    instance-of v5, v1, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    if-eqz v5, :cond_3

    .line 99
    :goto_3
    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/b;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    .line 101
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/b;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/mobile/quinox/resources/b;->a:Ljava/lang/ClassLoader;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alipay/mobile/quinox/resources/b;->b:Ljava/lang/ClassLoader;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 102
    instance-of v2, v0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v2, :cond_4

    .line 116
    :cond_1
    :goto_4
    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const-string/jumbo v3, "LauncherApplication"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object v3, v2

    goto :goto_0

    .line 83
    :catch_1
    move-exception v0

    .line 84
    const-string/jumbo v4, "LauncherApplication"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 88
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 104
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/b;->c:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_5

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/b;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/mobile/quinox/resources/b;->a:Ljava/lang/ClassLoader;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alipay/mobile/quinox/resources/b;->c:Ljava/lang/ClassLoader;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 106
    instance-of v2, v0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    if-nez v2, :cond_1

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/quinox/resources/b;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/mobile/quinox/resources/b;->b:Ljava/lang/ClassLoader;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alipay/mobile/quinox/resources/b;->c:Ljava/lang/ClassLoader;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 112
    :catch_2
    move-exception v0

    .line 113
    const-string/jumbo v2, "LauncherApplication"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    move-object v0, v1

    goto :goto_4

    :cond_6
    move-object v1, v2

    goto :goto_3
.end method
