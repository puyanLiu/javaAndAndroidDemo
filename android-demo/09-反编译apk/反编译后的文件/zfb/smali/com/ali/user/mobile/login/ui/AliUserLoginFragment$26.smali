.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->c:Ljava/lang/String;

    .line 1070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerifyResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1073
    const-string/jumbo v0, "AliUserLoginFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "VerifyIdentity result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const-string/jumbo v0, "1000"

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1075
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->a:Ljava/lang/String;

    const-string/jumbo v2, "withchecktoken"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginWithToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    :cond_0
    :goto_0
    return-void

    .line 1077
    :cond_1
    const-string/jumbo v0, "AliUserLoginFragment"

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

    .line 1078
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 1079
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

    .line 1080
    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toast(Ljava/lang/String;I)V

    goto :goto_0

    .line 1081
    :cond_3
    const-string/jumbo v0, "1003"

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method
