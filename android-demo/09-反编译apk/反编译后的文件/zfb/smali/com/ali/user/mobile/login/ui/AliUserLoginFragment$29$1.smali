.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29$1;
.super Lcom/ali/user/mobile/h5/AUH5Plugin;
.source "AliUserLoginFragment.java"


# instance fields
.field final synthetic this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29$1;->this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29;

    .line 1190
    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFail()V
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29$1;->this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29;

    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29;->access$0(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29;)Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 1200
    return-void
.end method

.method protected onSuccess()V
    .locals 3

    .prologue
    .line 1193
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29$1;->getIntentExtra()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1194
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29$1;->this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29;

    invoke-static {v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29;->access$0(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29;)Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    move-result-object v1

    const-string/jumbo v2, "withmsg"

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginWithToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    return-void
.end method
