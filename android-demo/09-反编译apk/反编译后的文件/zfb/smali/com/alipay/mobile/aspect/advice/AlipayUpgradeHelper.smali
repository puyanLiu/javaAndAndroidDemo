.class public Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;
.super Ljava/lang/Object;
.source "AlipayUpgradeHelper.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static e:Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;->e:Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;

    .line 13
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;->c:Z

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;->a:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;->e:Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;->e:Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;

    .line 39
    :cond_0
    sget-object v0, Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;->e:Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;

    return-object v0
.end method

.method private d()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 60
    .line 61
    iget-object v1, p0, Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "version"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 64
    sget-object v3, Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 65
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string/jumbo v3, "ctch1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "ctch1"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;->d:Ljava/lang/String;

    .line 66
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    :cond_1
    :goto_0
    return v0

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;->d:Ljava/lang/String;

    const-string/jumbo v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "\\."

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v1, v0

    :goto_1
    const/4 v4, 0x4

    if-ge v1, v4, :cond_1

    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-le v4, v5, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-ne v4, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 71
    :catch_0
    move-exception v1

    .line 72
    const-string/jumbo v2, "AlipayUpgradeHelper"

    const-string/jumbo v3, "isUpgrade(Exception)"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;
    .locals 4

    .prologue
    .line 51
    sget-object v0, Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "AlipayUpgradeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getPackageName "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v1, Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    const-string/jumbo v0, "_performance_config"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 53
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;->b:Landroid/content/SharedPreferences;

    .line 55
    invoke-direct {p0}, Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;->c:Z

    .line 56
    return-object p0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;->c:Z

    return v0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 123
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;->e:Lcom/alipay/mobile/aspect/advice/AlipayUpgradeHelper;

    .line 124
    return-void
.end method
