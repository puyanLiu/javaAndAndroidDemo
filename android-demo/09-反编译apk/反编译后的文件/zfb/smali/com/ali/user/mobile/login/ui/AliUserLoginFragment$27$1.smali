.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27$1;
.super Lcom/ali/user/mobile/h5/AUH5Plugin;
.source "AliUserLoginFragment.java"


# instance fields
.field final synthetic this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27;)V
    .locals 0

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27$1;->this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27;

    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected onOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1166
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27$1;->getIntentExtra()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "quit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1168
    :cond_0
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "toForgetPassword success"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27$1;->getPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 1170
    const/4 v0, 0x1

    .line 1172
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
