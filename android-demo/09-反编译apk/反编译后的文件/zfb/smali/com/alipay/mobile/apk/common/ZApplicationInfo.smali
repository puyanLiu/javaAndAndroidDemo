.class public Lcom/alipay/mobile/apk/common/ZApplicationInfo;
.super Landroid/content/pm/ApplicationInfo;
.source "ZApplicationInfo.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getArchiveFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/apk/common/ZApplicationInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setArchiveFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/apk/common/ZApplicationInfo;->a:Ljava/lang/String;

    .line 32
    return-void
.end method
