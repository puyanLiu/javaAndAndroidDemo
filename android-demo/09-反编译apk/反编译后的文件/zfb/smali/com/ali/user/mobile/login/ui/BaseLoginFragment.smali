.class public abstract Lcom/ali/user/mobile/login/ui/BaseLoginFragment;
.super Lcom/ali/user/mobile/base/BaseFragment;
.source "BaseLoginFragment.java"

# interfaces
.implements Lcom/ali/user/mobile/context/LoginHandler;


# static fields
.field protected static final LOGIN_RESPONSE:I = 0x1


# instance fields
.field private final a:Ljava/lang/String;

.field protected isFromRegist:Z

.field protected mApplicationContext:Landroid/content/Context;

.field protected mAttachedActivity:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

.field protected mHandler:Landroid/os/Handler;

.field protected mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

.field protected mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

.field protected mToken:Ljava/lang/String;

.field protected mUrlFetchService:Lcom/ali/user/mobile/service/UrlFetchService;

.field protected mUserLoginService:Lcom/ali/user/mobile/service/UserLoginService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseFragment;-><init>()V

    .line 49
    const-string/jumbo v0, "BaseLoginFragment"

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->a:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->isFromRegist:Z

    .line 62
    new-instance v0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$UnifyLoginHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$UnifyLoginHandler;-><init>(Lcom/ali/user/mobile/login/ui/BaseLoginFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mHandler:Landroid/os/Handler;

    .line 47
    return-void
.end method


# virtual methods
.method protected afterLogin(Lcom/ali/user/mobile/login/LoginParam;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    iget-object v0, v0, Lcom/ali/user/mobile/login/LoginParam;->externParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    iget-object v0, v0, Lcom/ali/user/mobile/login/LoginParam;->externParams:Ljava/util/Map;

    const-string/jumbo v1, "securityId"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->checkCodeId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->checkCode:Ljava/lang/String;

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    return-void

    .line 109
    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string/jumbo v1, "mLoginParam == null afterLogin"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract getLoginAccount()Ljava/lang/String;
.end method

.method protected getLoginHistoryManager()Lcom/ali/user/mobile/login/LoginHistoryManager;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/db/LoginHistoryDao;->get(Landroid/content/Context;)Lcom/ali/user/mobile/db/LoginHistoryDao;

    move-result-object v0

    return-object v0
.end method

.method protected getLoginHistorys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/login/LoginHistory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->getLoginHistoryManager()Lcom/ali/user/mobile/login/LoginHistoryManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/login/LoginHistoryManager;->getHistoryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getLoginType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    const-string/jumbo v0, "alipay"

    return-object v0
.end method

.method protected handleLoginException(Lcom/alipay/mobile/common/rpc/RpcException;)Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method protected initRdsFocusChange(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    invoke-virtual {v0, p1, p2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initFocusChange(Landroid/view/View;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method protected initRdsPage(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initPage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method protected initRdsScreenTouch(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    invoke-virtual {v0, p1, p2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initScreenTouch(Landroid/view/View;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method protected initRdsTextChange(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    invoke-virtual {v0, p1, p2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initTextChange(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public login(Lcom/ali/user/mobile/login/LoginParam;)V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->loggining:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->showProgress(Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    .line 85
    new-instance v0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$1;-><init>(Lcom/ali/user/mobile/login/ui/BaseLoginFragment;Lcom/ali/user/mobile/login/LoginParam;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 67
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mApplicationContext:Landroid/content/Context;

    .line 68
    check-cast p1, Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mAttachedActivity:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    .line 69
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getUserLoginService()Lcom/ali/user/mobile/service/UserLoginService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mUserLoginService:Lcom/ali/user/mobile/service/UserLoginService;

    .line 70
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getUrlFetchService()Lcom/ali/user/mobile/service/UrlFetchService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mUrlFetchService:Lcom/ali/user/mobile/service/UrlFetchService;

    .line 71
    new-instance v0, Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v2, "LoginPage"

    invoke-direct {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    .line 72
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseFragment;->onDetach()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mAttachedActivity:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    .line 78
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->destroy()V

    .line 79
    return-void
.end method

.method public onLoginFail(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 2

    .prologue
    .line 233
    const-string/jumbo v0, "BaseLoginFragment"

    const-string/jumbo v1, "onLoginFail"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getLoginCaller()Lcom/ali/user/mobile/login/OnLoginCaller;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    .line 236
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/ali/user/mobile/login/OnLoginCaller;->failLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V

    .line 239
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.ali.user.sdk.login.FAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->sendBroadCast(Landroid/content/Intent;)V

    .line 240
    return-void
.end method

.method public onLoginPostFinish(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 4

    .prologue
    .line 183
    const-string/jumbo v0, "BaseLoginFragment"

    const-string/jumbo v1, "onLoginPostFinish"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/ali/user/mobile/log/PerformanceLogAgent;->isMonitorPerformanceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Lcom/ali/user/mobile/log/PerformanceLogAgent;->LoginEnd()V

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->dismissProgress()V

    .line 190
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->isBizFinish()Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    const-string/jumbo v0, "BaseLoginFragment"

    const-string/jumbo v1, "app do not finish biz process, only stop progress"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->saveLoginHistory(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 196
    invoke-static {}, Lcom/ali/user/mobile/login/LoginActivityCollections;->getInstance()Lcom/ali/user/mobile/login/LoginActivityCollections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/LoginActivityCollections;->destroy()V

    .line 197
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->destroy()V

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.ali.user.sdk.login.SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    const-string/jumbo v1, "from_register"

    iget-boolean v2, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->isFromRegist:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    const-string/jumbo v1, "havanaId"

    iget-wide v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->hid:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->sendBroadCast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onLoginPreFinish(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 3

    .prologue
    .line 133
    const-string/jumbo v0, "BaseLoginFragment"

    const-string/jumbo v1, "onLoginPreFinish"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->onLoginResponse(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getLoginCaller()Lcom/ali/user/mobile/login/OnLoginCaller;

    move-result-object v0

    .line 136
    if-nez v0, :cond_0

    .line 137
    const-string/jumbo v0, "BaseLoginFragment"

    const-string/jumbo v1, "loginCaller == null\uff0c do onLoginPostFinish"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->onLoginPostFinish(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 159
    :goto_0
    return-void

    .line 140
    :cond_0
    const-string/jumbo v1, "YWUC-JTTYZH-C101"

    const-string/jumbo v2, "postFinishLogin"

    invoke-virtual {p0, v1, v2}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v1, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$2;-><init>(Lcom/ali/user/mobile/login/ui/BaseLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    invoke-interface {v0, p1, v1}, Lcom/ali/user/mobile/login/OnLoginCaller;->postFinishLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V

    goto :goto_0

    .line 156
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ali/user/mobile/log/PerformanceLogAgent;->setMonitorPerformanceEnable(Z)V

    .line 157
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->onLoginFail(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    goto :goto_0
.end method

.method public onLoginResponse(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z
    .locals 3

    .prologue
    .line 167
    const-string/jumbo v0, "BaseLoginFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLoginResponse,code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mToken:Ljava/lang/String;

    .line 170
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    .line 172
    const-string/jumbo v1, "200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "1000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->onLoginResponseSuccess(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 174
    const/4 v0, 0x1

    .line 177
    :goto_0
    return v0

    .line 176
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->onLoginResponseError(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 177
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLoginResponseError(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method protected onLoginResponseSuccess(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public onNewLoginParam(Lcom/ali/user/mobile/login/LoginParam;)V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method protected onRdsControlClick(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/login/rds/RDSWraper;->onControlClick(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method protected saveLoginHistory(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 2

    .prologue
    .line 206
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->isSaveHistory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    const-string/jumbo v0, "BaseLoginFragment"

    const-string/jumbo v1, "do not save history"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :goto_0
    return-void

    .line 210
    :cond_0
    new-instance v0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$3;-><init>(Lcom/ali/user/mobile/login/ui/BaseLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected sendBroadCast(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 310
    return-void
.end method

.method public toRegist(Lcom/ali/user/mobile/register/RegistParam;)V
    .locals 3

    .prologue
    .line 314
    const-string/jumbo v0, "yhzc-1227-01"

    const-string/jumbo v1, "djzc"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mApplicationContext:Landroid/content/Context;

    const-class v2, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 320
    :cond_0
    if-eqz p1, :cond_1

    .line 321
    const-string/jumbo v1, "regist_param"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 323
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->startActivity(Landroid/content/Intent;)V

    .line 324
    return-void
.end method

.method protected writeClickLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "Login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->writeClickLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method protected writeClickLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->getLoginAccount()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mToken:Ljava/lang/String;

    invoke-static {p1, p2, p3, v0, v1}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method protected writeOpenkLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "Login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->getLoginAccount()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->mToken:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method
