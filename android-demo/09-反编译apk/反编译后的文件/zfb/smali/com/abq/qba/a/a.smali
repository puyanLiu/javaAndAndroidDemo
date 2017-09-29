.class public final Lcom/abq/qba/a/a;
.super Ljava/lang/Object;
.source "BundleAppCheckPoints.java"


# static fields
.field public static b:Ljava/lang/Throwable;


# instance fields
.field a:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/abq/qba/a/a;->a:Landroid/app/Application;

    .line 22
    return-void
.end method

.method private static b()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 46
    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "addAssetPath"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 48
    if-nez v0, :cond_0

    move v0, v1

    .line 57
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    sput-object v0, Lcom/abq/qba/a/a;->b:Ljava/lang/Throwable;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 57
    goto :goto_0
.end method

.method private c()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lcom/abq/qba/a/a;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "mPackageInfo"

    invoke-static {v2, v3}, Lcom/abq/qba/a/e;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 69
    if-nez v2, :cond_0

    .line 70
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "mPackageInfoField == null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/abq/qba/a/a;->b:Ljava/lang/Throwable;

    .line 94
    :goto_0
    return v0

    .line 74
    :cond_0
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "mClassLoader"

    invoke-static {v2, v3}, Lcom/abq/qba/a/e;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 83
    if-nez v2, :cond_1

    .line 84
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "mClassLoaderField == null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/abq/qba/a/a;->b:Ljava/lang/Throwable;

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    sput-object v1, Lcom/abq/qba/a/a;->b:Ljava/lang/Throwable;

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "mResources"

    invoke-static {v1, v2}, Lcom/abq/qba/a/e;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 89
    if-nez v1, :cond_2

    .line 90
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "mResourcesField == null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/abq/qba/a/a;->b:Ljava/lang/Throwable;

    goto :goto_0

    .line 94
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 26
    :try_start_0
    invoke-static {}, Lcom/abq/qba/a/a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    .line 29
    :cond_1
    invoke-direct {p0}, Lcom/abq/qba/a/a;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    const/4 v0, 0x1

    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
