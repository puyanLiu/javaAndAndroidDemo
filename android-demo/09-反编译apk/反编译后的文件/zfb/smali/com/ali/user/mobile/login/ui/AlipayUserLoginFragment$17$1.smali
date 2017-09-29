.class Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$17$1;
.super Lcom/ali/user/mobile/h5/AUH5Plugin;
.source "AlipayUserLoginFragment.java"


# instance fields
.field final synthetic this$1:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$17;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$17;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$17$1;->this$1:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$17;

    .line 588
    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected onOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$17$1;->getIntentExtra()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "quit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 593
    :cond_0
    const-string/jumbo v0, "AlipayUserLoginFragment"

    const-string/jumbo v1, "toSecurityCenter return back"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$17$1;->getPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 595
    const/4 v0, 0x1

    .line 597
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
