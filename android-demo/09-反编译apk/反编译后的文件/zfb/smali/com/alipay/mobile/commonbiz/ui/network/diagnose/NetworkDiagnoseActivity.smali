.class public Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "NetworkDiagnoseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseActivity;->b:Z

    .line 12
    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseActivity;->a:Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;

    return-object v0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseActivity;->b:Z

    .line 63
    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-boolean v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseActivity;->b:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/base/commonbiz/R$string;->network_diagnose_alert_title:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {p0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/base/commonbiz/R$string;->network_diagnose_alert_comfirm:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {p0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/alipay/mobile/base/commonbiz/R$string;->network_diagnose_alert_cancle:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v4, p0

    move-object v6, v1

    .line 48
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseActivity;->finish()V

    .line 68
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget v0, Lcom/alipay/mobile/base/commonbiz/R$layout;->network_diagnose_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseActivity;->setContentView(I)V

    .line 27
    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->diagnose_container:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseActivity;->findViewById(I)Landroid/view/View;

    .line 29
    new-instance v0, Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseServiceImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseServiceImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseActivity;->a:Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseActivity;->a:Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;->isCanDiagnose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$id;->diagnose_container:I

    .line 32
    new-instance v2, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;

    invoke-direct {v2}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;-><init>()V

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 37
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$id;->diagnose_container:I

    .line 35
    new-instance v2, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkNotConnectedFragment;

    invoke-direct {v2}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkNotConnectedFragment;-><init>()V

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onDestroy()V

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseActivity;->a:Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;->cancel()V

    .line 43
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
