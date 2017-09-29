.class public Lcom/alipay/security/mobile/agent/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field public static final SERVICE_CLASS_NAME:Ljava/lang/String; = "com.alipay.security.mobile.alipayauthenticatorservice.AuthenticatorService"

.field public static SERVICE_PACKAGE_NAME:Ljava/lang/String;

.field public static agentVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/security/mobile/agent/Version;->SERVICE_PACKAGE_NAME:Ljava/lang/String;

    .line 30
    const/4 v0, 0x4

    sput v0, Lcom/alipay/security/mobile/agent/Version;->agentVersionCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkServiceVersion(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 40
    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Lcom/alipay/security/mobile/agent/Version;->SERVICE_PACKAGE_NAME:Ljava/lang/String;

    const-string/jumbo v2, "com.alipay.security.mobile.alipayauthenticatorservice.AuthenticatorService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/alipay/security/mobile/agent/Version;->readVersion(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result v0

    .line 44
    sget v1, Lcom/alipay/security/mobile/agent/Version;->agentVersionCode:I

    if-gt v1, v0, :cond_0

    .line 45
    const/16 v0, 0x7a

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x69

    goto :goto_0

    :cond_1
    const/16 v0, 0x6a

    goto :goto_0
.end method

.method public static readServiceVersion(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 53
    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Lcom/alipay/security/mobile/agent/Version;->SERVICE_PACKAGE_NAME:Ljava/lang/String;

    const-string/jumbo v2, "com.alipay.security.mobile.alipayauthenticatorservice.AuthenticatorService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/alipay/security/mobile/agent/Version;->readVersion(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method private static readVersion(Landroid/content/Context;Landroid/content/ComponentName;)I
    .locals 3

    .prologue
    .line 64
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/security/mobile/agent/Version;->SERVICE_PACKAGE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 67
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return v0

    .line 69
    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method
