.class Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$8;
.super Ljava/lang/Object;
.source "AliUserRegisterAvatarActivity.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$8;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$8;->a:Ljava/lang/String;

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerifyResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 585
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "goVerifyIdentity result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string/jumbo v0, "1000"

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$8;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$8;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->doMobileRegPreVerify(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "VerifyIdentity fail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string/jumbo v0, "1001"

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "1006"

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$8;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$8;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->verify_identity_fail:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    .line 592
    :cond_3
    const-string/jumbo v0, "1003"

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$8;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$8;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->system_error_try_later:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method
