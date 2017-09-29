.class final Lcom/alipay/mobile/quinox/bundle/j;
.super Landroid/content/ContextWrapper;
.source "ExtractFailedPolicy.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/LauncherApplication;

.field final synthetic b:Lcom/alipay/mobile/quinox/bundle/i;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/bundle/i;Lcom/alipay/mobile/quinox/LauncherApplication;)V
    .locals 1

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/j;->b:Lcom/alipay/mobile/quinox/bundle/i;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/bundle/j;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/j;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/j;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getOldResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/j;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
