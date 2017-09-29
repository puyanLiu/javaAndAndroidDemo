.class public abstract Lcom/alipay/mobile/beehive/template/fragment/BaseResultFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseResultFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 18
    return-void
.end method

.method public abstract showResult(Lcom/alipay/mobile/beehive/template/model/BaseResult;)V
.end method
