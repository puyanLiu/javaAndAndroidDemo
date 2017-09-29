.class final Lcom/alipay/mobile/socialsdk/contact/ui/bd;
.super Ljava/lang/Object;
.source "RealNameSettingActivity.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bd;->a:Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSwitchListener(ZLandroid/view/View;)V
    .locals 2

    .prologue
    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bd;->a:Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->setShowMyRealName(Z)V

    .line 89
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
