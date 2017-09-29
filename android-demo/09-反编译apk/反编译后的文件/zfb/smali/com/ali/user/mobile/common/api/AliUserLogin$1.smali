.class Lcom/ali/user/mobile/common/api/AliUserLogin$1;
.super Ljava/lang/Object;
.source "AliUserLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;

.field final synthetic this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$1;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iput-object p2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$1;->a:Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 132
    :try_start_0
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getUrlFetchService()Lcom/ali/user/mobile/service/UrlFetchService;

    move-result-object v0

    const-string/jumbo v1, ""

    const-string/jumbo v2, "alipay"

    const-string/jumbo v3, "foundpassword"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-interface/range {v0 .. v5}, Lcom/ali/user/mobile/service/UrlFetchService;->foundH5urls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;

    move-result-object v0

    .line 133
    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$1;->a:Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$1;->a:Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;->onForgotPwdError(Landroid/os/Bundle;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$1;->a:Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;

    if-eqz v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$1;->a:Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;->onPreForgotPwd(Landroid/os/Bundle;)V

    .line 143
    :cond_2
    const-string/jumbo v1, "AliUserLogin"

    const-string/jumbo v2, "forgotLoginPassword fetch h5 result:%s, msg:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;->resultStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;->memo:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;->resultStatus:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;->h5Url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 145
    new-instance v1, Lcom/ali/user/mobile/common/api/AliUserLogin$1$1;

    iget-object v2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$1;->a:Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;

    invoke-direct {v1, p0, v2}, Lcom/ali/user/mobile/common/api/AliUserLogin$1$1;-><init>(Lcom/ali/user/mobile/common/api/AliUserLogin$1;Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;)V

    .line 167
    iget-object v0, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;->h5Url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Ljava/lang/String;Lcom/ali/user/mobile/h5/AUH5Plugin;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    const-string/jumbo v1, "AliUserLogin"

    const-string/jumbo v2, "forgotLoginPassword fetch h5 exceptoin"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    throw v0

    .line 169
    :cond_3
    :try_start_1
    const-string/jumbo v0, "AliUserLogin"

    const-string/jumbo v1, "forgotLoginPassword fetch h5 fail"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$1;->a:Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$1;->a:Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;->onForgotPwdError(Landroid/os/Bundle;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
