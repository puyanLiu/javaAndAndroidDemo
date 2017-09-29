.class Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;
.super Ljava/lang/Object;
.source "AlipayUserLoginFragment.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;)Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    return-object v0
.end method


# virtual methods
.method public onVerifyResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 516
    const-string/jumbo v0, "AlipayUserLoginFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Facelogin VerifyIdentity result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string/jumbo v0, "1000"

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    const-string/jumbo v1, "withface"

    invoke-virtual {v0, p1, v1}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->loginWithToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :goto_0
    return-void

    .line 521
    :cond_0
    const-string/jumbo v0, "AlipayUserLoginFragment"

    const-string/jumbo v1, "Facelogin token is null"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 524
    :cond_1
    const-string/jumbo v0, "1001"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 525
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->addLocalFaceLoginFailCount()V

    .line 526
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    iget-object v3, v3, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->positiveText:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    iget-object v5, v4, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->negativeText:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    iget-object v6, v4, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->negativeListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 527
    :cond_2
    const-string/jumbo v0, "1"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 528
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    invoke-virtual {v3}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$string;->comfirm:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    invoke-virtual {v4}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/ali/user/mobile/security/ui/R$string;->permission_grant:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1$1;

    invoke-direct {v6, p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1$1;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;)V

    move-object v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 535
    :cond_3
    const-string/jumbo v0, "3004"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 536
    const-string/jumbo v0, "AlipayUserLoginFragment"

    const-string/jumbo v1, "Facelogin VerifyIdentity timeout"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 538
    :cond_4
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    invoke-virtual {v3}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$string;->comfirm:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0
.end method
