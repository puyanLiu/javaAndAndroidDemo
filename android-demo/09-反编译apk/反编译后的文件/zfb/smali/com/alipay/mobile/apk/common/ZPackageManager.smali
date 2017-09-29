.class public Lcom/alipay/mobile/apk/common/ZPackageManager;
.super Ljava/lang/Object;
.source "ZPackageManager.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/alipay/mobile/apk/common/ZPackageManager;->a:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public getPackageArchiveInfo(Ljava/lang/String;I)Lcom/alipay/mobile/apk/common/ZPackageInfo;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/apk/common/ZPackageManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 30
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 34
    :cond_0
    new-instance v0, Lcom/alipay/mobile/apk/common/ZPackageInfo;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/apk/common/ZPackageInfo;-><init>(Landroid/content/pm/PackageInfo;)V

    .line 35
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/apk/common/ZPackageInfo;->setArchiveFilePath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/apk/common/ZPackageManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 48
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 49
    return-object v0
.end method
