.class Lcom/ali/user/mobile/login/ui/BaseLoginFragment$1;
.super Ljava/lang/Object;
.source "BaseLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/ali/user/mobile/login/LoginParam;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/BaseLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/BaseLoginFragment;Lcom/ali/user/mobile/login/LoginParam;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$1;->a:Lcom/ali/user/mobile/login/LoginParam;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 88
    const-string/jumbo v0, "BaseLoginFragment"

    const-string/jumbo v1, "login ing..."

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mUserLoginService:Lcom/ali/user/mobile/service/UserLoginService;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$1;->a:Lcom/ali/user/mobile/login/LoginParam;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/service/UserLoginService;->unifyLogin(Lcom/ali/user/mobile/login/LoginParam;)Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginFragment;

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$1;->a:Lcom/ali/user/mobile/login/LoginParam;

    invoke-virtual {v1, v2, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->afterLogin(Lcom/ali/user/mobile/login/LoginParam;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginFragment;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->dismissProgress()V

    .line 95
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginFragment;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.ali.user.sdk.login.FAIL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->sendBroadCast(Landroid/content/Intent;)V

    .line 96
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginFragment;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->handleLoginException(Lcom/alipay/mobile/common/rpc/RpcException;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    throw v0
.end method
