.class public final Lcom/fido/android/framework/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static final AGENT_API:I = 0x1

.field public static final COMPANY_NAME:Ljava/lang/String; = "Nok Nok Labs"

.field private static final DEFAULT_API_VERSION:I = 0x1

.field private static final MFAC_PACKAGE_NAME_PREFIX:Ljava/lang/String; = "com.noknok."

.field private static final NO_API_FOUND:I = -0x1

.field private static final TM_API:I = 0x1

.field private static final agentVersionCode:I = 0x1

.field private static final agentVersionName:Ljava/lang/String; = "2.0.2."

.field private static final serviceVersionCode:I = 0x1

.field private static final serviceVersionName:Ljava/lang/String; = "2.0.2."

.field private static final tmVersionCode:I = 0x1

.field private static final tmVersionName:Ljava/lang/String; = "2.0.2."


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authorizeTmServiceClient(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.noknok."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    const-string/jumbo v2, "com.noknok."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkServiceVersion(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)I
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 85
    if-nez v3, :cond_0

    move v0, v1

    .line 107
    :goto_0
    return v0

    .line 89
    :cond_0
    const/16 v4, 0x20

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 91
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 95
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 96
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "com.noknok."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v4}, Lcom/fido/android/framework/Version;->readVersion(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result v4

    if-gt v2, v4, :cond_3

    .line 100
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    .line 105
    goto :goto_0

    :cond_5
    move v0, v1

    .line 107
    goto :goto_0
.end method

.method public static checkTmVersion(Landroid/content/Context;Landroid/content/ComponentName;)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 18
    invoke-static {p0, p1}, Lcom/fido/android/framework/Version;->readVersion(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result v1

    .line 20
    if-gt v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private static readVersion(Landroid/content/Context;Landroid/content/ComponentName;)I
    .locals 2

    .prologue
    .line 24
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 30
    const-string/jumbo v1, "API"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 32
    if-gtz v0, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 39
    :cond_0
    :goto_0
    return v0

    .line 37
    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method
