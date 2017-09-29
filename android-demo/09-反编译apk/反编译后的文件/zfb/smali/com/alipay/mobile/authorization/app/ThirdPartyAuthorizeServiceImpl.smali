.class public Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;
.source "ThirdPartyAuthorizeServiceImpl.java"


# instance fields
.field private a:Lcom/alipay/mobileapp/biz/rpc/appauth/facade/MobileAppAuthServiceFacade;

.field private b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private final c:Ljava/lang/Object;

.field private d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->c:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method private static a(Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;)Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;

    invoke-direct {v0}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;-><init>()V

    .line 120
    invoke-virtual {p0}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;->getAgreementDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->setAgreementDesc(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;->getAgreementUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->setAgreementUrl(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;->getAuthCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->setAuthCode(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;->isSignStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->setSignStatus(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;->getResultStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->setResultCode(I)V

    .line 125
    return-object v0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 201
    monitor-enter p0

    .line 203
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ThirdPartyAuthorizeServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u8fdb\u5165\u9501"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 205
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ThirdPartyAuthorizeServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u9501\u88ab\u91ca\u653e"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 102
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 101
    iput-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeException;

    const/4 v2, 0x1

    .line 108
    sget v3, Lcom/alipay/mobile/openplatform/R$string;->o:I

    .line 107
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeException;

    const/4 v2, 0x0

    .line 114
    sget v3, Lcom/alipay/mobile/openplatform/R$string;->o:I

    .line 113
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 116
    :cond_2
    return-void
.end method


# virtual methods
.method public authSign(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 131
    invoke-direct {p0, p2}, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->a(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    invoke-direct {v1}, Lcom/alipay/mobile/authorization/app/AuthorizationContext;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    .line 135
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 136
    const-string/jumbo v2, "appId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string/jumbo v2, "protocol_url"

    invoke-virtual {p3}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->getAgreementUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string/jumbo v2, "authType"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "10000112"

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->c:Ljava/lang/Object;

    const-string/jumbo v1, "authorization_lock"

    invoke-static {v0, v1}, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/authorization/app/AuthorizationContext;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/authorization/app/AuthorizationContext;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, p2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;->onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/authorization/app/AuthorizationContext;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-interface {p4}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;->onUserCancel()V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ThirdPartyAuthorizeServiceImpl"

    const-string/jumbo v3, "load app error"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    invoke-interface {p4}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;->onAuthFailed()V

    goto :goto_0

    .line 152
    :cond_1
    :try_start_1
    invoke-interface {p4}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;->onAuthFailed()V
    :try_end_1
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public authSignFromDeskTop(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 169
    new-instance v0, Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    invoke-direct {v0}, Lcom/alipay/mobile/authorization/app/AuthorizationContext;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    .line 172
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;

    invoke-direct {v0, p5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string/jumbo v1, "fromDesktop"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    const-string/jumbo v1, "protocol_url"

    invoke-virtual {p3}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->getAgreementUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->c:Ljava/lang/Object;

    const-string/jumbo v1, "authorization_lock"

    invoke-static {v0, v1}, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/authorization/app/AuthorizationContext;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/authorization/app/AuthorizationContext;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, p2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;->onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/authorization/app/AuthorizationContext;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-interface {p4}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;->onUserCancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ThirdPartyAuthorizeServiceImpl"

    const-string/jumbo v3, "load app error"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 187
    :cond_1
    :try_start_1
    invoke-interface {p4}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;->onAuthFailed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getAuthStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0, p2}, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->a(Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;

    invoke-direct {v0}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;-><init>()V

    .line 68
    invoke-virtual {v0, p1}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;->setAppId(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p2}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;->setUserId(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v1, "Android"

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;->setPlatform(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, p3}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;->setAuthType(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->a:Lcom/alipay/mobileapp/biz/rpc/appauth/facade/MobileAppAuthServiceFacade;

    invoke-interface {v1, v0}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/MobileAppAuthServiceFacade;->getAuthStatus(Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;)Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->a(Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;)Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;

    move-result-object v0

    return-object v0
.end method

.method public getAuthStatusValidTid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;
    .locals 4

    .prologue
    .line 78
    new-instance v1, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;

    invoke-direct {v1}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;-><init>()V

    .line 79
    invoke-virtual {v1, p2}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;->setAppId(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1, p1}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;->setUserId(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, p3}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;->setTid(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v0, "Android"

    invoke-virtual {v1, v0}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;->setPlatform(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->a:Lcom/alipay/mobileapp/biz/rpc/appauth/facade/MobileAppAuthServiceFacade;

    invoke-interface {v0, v1}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/MobileAppAuthServiceFacade;->getAuthStatusValidTid(Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;)Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;->getResultStatus()I

    move-result v2

    const/16 v3, 0x3ee

    if-ne v2, v3, :cond_0

    .line 87
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 89
    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    .line 87
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {v1, v0}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;->setTid(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->a:Lcom/alipay/mobileapp/biz/rpc/appauth/facade/MobileAppAuthServiceFacade;

    invoke-interface {v0, v1}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/MobileAppAuthServiceFacade;->getAuthStatusValidTid(Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;)Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;

    move-result-object v0

    .line 96
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->a(Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;)Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;

    move-result-object v0

    return-object v0
.end method

.method public isSigned(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public notifyUnlockAuthorizationApp(ZZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 219
    iget-object v1, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/authorization/app/AuthorizationContext;->a(Z)V

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/authorization/app/AuthorizationContext;->b(Z)V

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->d:Lcom/alipay/mobile/authorization/app/AuthorizationContext;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/authorization/app/AuthorizationContext;->a(Ljava/lang/String;)V

    .line 228
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 226
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "ThirdPartyAuthorizeServiceImpl"

    const-string/jumbo v3, "\u4e0a\u4e0b\u6587\u4e3a\u7a7a\uff0c\u4e0d\u80fd\u91ca\u653e\u6388\u6743\u754c\u9762\u9501"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 48
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 50
    const-class v1, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/MobileAppAuthServiceFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/MobileAppAuthServiceFacade;

    iput-object v0, p0, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;->a:Lcom/alipay/mobileapp/biz/rpc/appauth/facade/MobileAppAuthServiceFacade;

    .line 52
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method
