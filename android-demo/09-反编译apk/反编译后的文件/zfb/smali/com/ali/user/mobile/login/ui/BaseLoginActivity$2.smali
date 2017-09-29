.class Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0xbb8

    .line 75
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->dismissProgress()V

    .line 77
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->login_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->toast(Ljava/lang/String;I)V

    .line 78
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string/jumbo v1, "loginRes == null after setDoublePassword"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const-string/jumbo v0, "BaseLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "doBackgroundLogin result,code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    iget-object v2, v2, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    iget-object v2, v2, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    iget-object v1, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->token:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mToken:Ljava/lang/String;

    .line 83
    const-string/jumbo v0, "200"

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    iget-object v1, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "1000"

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    iget-object v1, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onLoginSuccess(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getLoginHandler()Lcom/ali/user/mobile/context/LoginHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/context/LoginHandler;->onLoginPreFinish(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    goto :goto_0

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->dismissProgress()V

    .line 89
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onLoginFail(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const-string/jumbo v0, "6213"

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    iget-object v1, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    const-string/jumbo v0, "BaseLoginActivity"

    const-string/jumbo v1, "session timeout"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    iget-object v1, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    const/16 v2, 0x7cf

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->alertResult(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 94
    :cond_4
    const-string/jumbo v0, "BaseLoginActivity"

    const-string/jumbo v1, "doBackgroundLogin other error"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    iget-object v1, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
