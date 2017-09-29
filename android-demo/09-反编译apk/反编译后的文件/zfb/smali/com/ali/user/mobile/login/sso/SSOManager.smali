.class public Lcom/ali/user/mobile/login/sso/SSOManager;
.super Ljava/lang/Object;
.source "SSOManager.java"


# static fields
.field private static e:Lcom/ali/user/mobile/login/sso/SSOManager;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/ali/user/mobile/login/sso/SSOFacade;

.field private d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

.field private f:Lcom/ali/user/mobile/login/sso/SSOInfo;

.field private g:Ljava/util/concurrent/locks/Lock;

.field private h:Ljava/util/concurrent/locks/Condition;

.field ssoLoginDone:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string/jumbo v0, "SSOManager.login"

    iput-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->a:Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->f:Lcom/ali/user/mobile/login/sso/SSOInfo;

    .line 120
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->g:Ljava/util/concurrent/locks/Lock;

    .line 121
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->h:Ljava/util/concurrent/locks/Condition;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->ssoLoginDone:Z

    .line 48
    iput-object p1, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->b:Landroid/content/Context;

    .line 49
    new-instance v0, Lcom/ali/user/mobile/login/sso/SSOFacade;

    iget-object v1, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/login/sso/SSOFacade;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->c:Lcom/ali/user/mobile/login/sso/SSOFacade;

    .line 50
    new-instance v0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    iget-object v1, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->b:Landroid/content/Context;

    .line 51
    new-instance v2, Lcom/ali/user/mobile/login/sso/DefaultSsoRemoteRequestParam;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getSsoRequestParam()Lcom/ali/user/mobile/login/sso/SSORequestParam;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ali/user/mobile/login/sso/DefaultSsoRemoteRequestParam;-><init>(Lcom/ali/user/mobile/login/sso/SSORequestParam;)V

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;-><init>(Landroid/content/Context;Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;)V

    .line 50
    iput-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    .line 52
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/ali/user/mobile/login/sso/SSOInfo;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->ssoLoginDone:Z

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 129
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->b:Landroid/content/Context;

    new-instance v3, Lcom/ali/user/mobile/login/sso/SSOManager$1;

    invoke-direct {v3, p0, p1}, Lcom/ali/user/mobile/login/sso/SSOManager$1;-><init>(Lcom/ali/user/mobile/login/sso/SSOManager;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->loginWithType(Ljava/lang/String;ZLandroid/content/Context;Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;)V

    .line 182
    :goto_0
    iget-boolean v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->ssoLoginDone:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 190
    :goto_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->f:Lcom/ali/user/mobile/login/sso/SSOInfo;

    return-object v0

    .line 183
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    :try_start_2
    const-string/jumbo v1, "SSOManager.login"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "\u89e3\u6790\u5f02\u5e38\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 187
    :catchall_0
    move-exception v0

    .line 188
    iget-object v1, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 189
    throw v0
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/login/sso/SSOManager;Lcom/ali/user/mobile/login/sso/SSOInfo;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->f:Lcom/ali/user/mobile/login/sso/SSOInfo;

    return-void
.end method

.method static synthetic access$1(Lcom/ali/user/mobile/login/sso/SSOManager;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->g:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ali/user/mobile/login/sso/SSOManager;)Ljava/util/concurrent/locks/Condition;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->h:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/login/sso/SSOManager;
    .locals 2

    .prologue
    .line 41
    const-class v1, Lcom/ali/user/mobile/login/sso/SSOManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/login/sso/SSOManager;->e:Lcom/ali/user/mobile/login/sso/SSOManager;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/ali/user/mobile/login/sso/SSOManager;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/sso/SSOManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/login/sso/SSOManager;->e:Lcom/ali/user/mobile/login/sso/SSOManager;

    .line 44
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/login/sso/SSOManager;->e:Lcom/ali/user/mobile/login/sso/SSOManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized createSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 250
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "SSOManager.login"

    const-string/jumbo v1, "createSsoToken"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :try_start_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->c:Lcom/ali/user/mobile/login/sso/SSOFacade;

    .line 254
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getAlipaySsoInfo()Lcom/ali/user/mobile/login/sso/SSOInfo;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getTaobaoSsoInfo()Lcom/ali/user/mobile/login/sso/SSOInfo;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 253
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/sso/SSOFacade;->createSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/mobile/login/sso/SSOInfo;Lcom/ali/user/mobile/login/sso/SSOInfo;)Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenResult;
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 256
    if-nez v0, :cond_1

    move v1, v7

    .line 257
    :goto_0
    if-eqz v1, :cond_0

    .line 258
    :try_start_2
    const-string/jumbo v2, "SSOManager.login"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "writeSsoToken, result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenResult;->success:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SSOManager.login"

    const-string/jumbo v3, "\u521b\u5efa\u7684alipaySsoToken:"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenResult;->alipaySsoToken:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenResult;->alipaySsoToken:Ljava/lang/String;

    iget-object v3, v0, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenResult;->loginId:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {p0, v2, v3, p1, v4}, Lcom/ali/user/mobile/login/sso/SSOManager;->writeAlipaySsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v2, "SSOManager.login"

    const-string/jumbo v3, "\u521b\u5efa\u7684taobaoSsoToken:"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenResult;->taobaoSsoToken:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenResult;->taobaoSsoToken:Ljava/lang/String;

    iget-object v0, v0, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenResult;->nick:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {p0, v2, v0, v3}, Lcom/ali/user/mobile/login/sso/SSOManager;->writeTaobaoSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    :cond_0
    :goto_1
    :try_start_3
    const-string/jumbo v0, "SSOManager.login"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "createSsoToken result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 269
    monitor-exit p0

    return v1

    .line 256
    :cond_1
    :try_start_4
    iget-boolean v1, v0, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenResult;->success:Z
    :try_end_4
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    move v1, v7

    .line 261
    :goto_2
    :try_start_5
    const-string/jumbo v2, "SSOManager.login"

    const-string/jumbo v3, "RpcException when createSsoToken"

    invoke-static {v2, v3, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CONNECTERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 263
    :catch_1
    move-exception v0

    move v1, v7

    .line 264
    :goto_3
    :try_start_6
    const-string/jumbo v2, "SSOManager.login"

    const-string/jumbo v3, "Exception when createSsoToken"

    invoke-static {v2, v3, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 263
    :catch_2
    move-exception v0

    goto :goto_3

    .line 260
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public getAlipaySsoInfo()Lcom/ali/user/mobile/login/sso/SSOInfo;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->alipayAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->a(Ljava/lang/String;)Lcom/ali/user/mobile/login/sso/SSOInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSsoLoginWrapper()Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    return-object v0
.end method

.method public getTaobaoSsoInfo()Lcom/ali/user/mobile/login/sso/SSOInfo;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->taobaoAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->a(Ljava/lang/String;)Lcom/ali/user/mobile/login/sso/SSOInfo;

    move-result-object v0

    return-object v0
.end method

.method public logout()V
    .locals 2

    .prologue
    .line 62
    const-string/jumbo v0, "SSOManager.login"

    const-string/jumbo v1, "\u6ce8\u9500\u652f\u4ed8\u5b9d\u548c\u6dd8\u5b9dssotoken"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/sso/SSOManager;->logoutAlipay()V

    .line 64
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/sso/SSOManager;->logoutTaobao()V

    .line 65
    return-void
.end method

.method public logout(Lcom/ali/user/mobile/login/sso/SSOInfo;)V
    .locals 3

    .prologue
    .line 68
    const-string/jumbo v0, "SSOManager.login"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "logout ssoInfo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->nickName:Ljava/lang/String;

    iget-object v1, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->accountType:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/sso/SSOManager;->logout(Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    :cond_0
    return-void
.end method

.method public logout(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 75
    const-string/jumbo v1, "SSOManager.login"

    const-string/jumbo v2, "\u6ce8\u9500sso, nick:%s, accountType:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    invoke-virtual {v1, p1, p2}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->logout(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 82
    :goto_0
    const-string/jumbo v1, "SSOManager.login"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6ce8\u9500sso\u7ed3\u679c:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return v0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v2, v1}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public logoutAlipay()V
    .locals 2

    .prologue
    .line 90
    const-string/jumbo v0, "SSOManager.login"

    const-string/jumbo v1, "logoutAlipay"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getAlipaySsoInfo()Lcom/ali/user/mobile/login/sso/SSOInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->logout(Lcom/ali/user/mobile/login/sso/SSOInfo;)V

    .line 92
    return-void
.end method

.method public logoutTaobao()V
    .locals 2

    .prologue
    .line 98
    const-string/jumbo v0, "SSOManager.login"

    const-string/jumbo v1, "logoutTaobao"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getTaobaoSsoInfo()Lcom/ali/user/mobile/login/sso/SSOInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->logout(Lcom/ali/user/mobile/login/sso/SSOInfo;)V

    .line 100
    return-void
.end method

.method public declared-synchronized shareTaobaoSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 230
    monitor-enter p0

    .line 232
    :try_start_0
    const-string/jumbo v0, "SSOManager.login"

    const-string/jumbo v2, "\u5199\u5165sso token, type:%s, nike:%s, img:%s, token:%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 233
    iget-object v5, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    invoke-virtual {v5}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->taobaoAccountType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p1, v3, v4

    .line 232
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    iget-object v2, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    invoke-virtual {v2}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->taobaoAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->shareSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 241
    :goto_0
    :try_start_1
    const-string/jumbo v1, "SSOManager.login"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "writeTaobaoSsoToken\u7ed3\u679c:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    monitor-exit p0

    return v0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    :try_start_2
    const-string/jumbo v2, "SSOManager.login"

    const-string/jumbo v3, "shareSsoToken exception"

    invoke-static {v2, v3, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public verifyAlipaySSoToken(Lcom/ali/user/mobile/login/sso/SSOInfo;Lcom/ali/user/mobile/login/sso/SSoVerifyListener;)V
    .locals 6

    .prologue
    .line 325
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->c:Lcom/ali/user/mobile/login/sso/SSOFacade;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/login/sso/SSOFacade;->verifySSoToken(Lcom/ali/user/mobile/login/sso/SSOInfo;)Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;

    move-result-object v1

    .line 327
    if-nez v1, :cond_1

    .line 328
    if-eqz p2, :cond_0

    .line 329
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/ali/user/mobile/login/sso/SSoVerifyListener;->onFail(Landroid/os/Bundle;)V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 333
    const-string/jumbo v0, "memo"

    iget-object v3, v1, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->memo:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string/jumbo v0, "resultCode"

    iget-object v3, v1, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string/jumbo v0, "ssoInfo"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 337
    iget-boolean v0, v1, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->success:Z

    if-eqz v0, :cond_2

    .line 338
    if-eqz p2, :cond_0

    .line 339
    invoke-interface {p2, v2}, Lcom/ali/user/mobile/login/sso/SSoVerifyListener;->onSuccess(Landroid/os/Bundle;)V

    goto :goto_0

    .line 341
    :cond_2
    const-string/jumbo v0, "1002"

    iget-object v3, v1, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 342
    if-eqz p2, :cond_0

    .line 343
    const-string/jumbo v0, "https://www.alipay.com/webviewbridge?type=sso"

    .line 345
    :try_start_0
    const-string/jumbo v3, "GBK"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 350
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    iget-object v4, v1, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->h5Url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 352
    iget-object v1, v1, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->h5Url:Ljava/lang/String;

    const-string/jumbo v5, "?"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    const-string/jumbo v1, "&loginId="

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 353
    const-string/jumbo v4, "&appName="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ali/user/mobile/info/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 354
    const-string/jumbo v4, "&callbackUrl="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    const-string/jumbo v1, "url"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-interface {p2, v2}, Lcom/ali/user/mobile/login/sso/SSoVerifyListener;->onUserConfirm(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 347
    :catch_0
    move-exception v3

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 352
    :cond_3
    const-string/jumbo v1, "?loginId="

    goto :goto_2

    .line 362
    :cond_4
    if-eqz p2, :cond_0

    .line 363
    invoke-interface {p2, v2}, Lcom/ali/user/mobile/login/sso/SSoVerifyListener;->onFail(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public verifyAlipaySsoToken(Lcom/ali/user/mobile/login/sso/SSoVerifyListener;)V
    .locals 2

    .prologue
    .line 308
    const-string/jumbo v0, "SSOManager.login"

    const-string/jumbo v1, "alipaySsoLogin"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getAlipaySsoInfo()Lcom/ali/user/mobile/login/sso/SSOInfo;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/ali/user/mobile/login/sso/SSOInfo;->ssoToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/ali/user/mobile/login/sso/SSOInfo;->nickName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 311
    invoke-virtual {p0, v0, p1}, Lcom/ali/user/mobile/login/sso/SSOManager;->verifyAlipaySSoToken(Lcom/ali/user/mobile/login/sso/SSOInfo;Lcom/ali/user/mobile/login/sso/SSoVerifyListener;)V

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    const-string/jumbo v0, "SSOManager.login"

    const-string/jumbo v1, "\u6ca1\u6709\u89e3\u6790\u5230sso token\uff0c\u542f\u52a8\u8d26\u5bc6\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    if-eqz p1, :cond_0

    .line 315
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ali/user/mobile/login/sso/SSoVerifyListener;->onFail(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public verifySSoToken(Lcom/ali/user/mobile/login/sso/SSOInfo;)Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->c:Lcom/ali/user/mobile/login/sso/SSOFacade;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/login/sso/SSOFacade;->verifySSoToken(Lcom/ali/user/mobile/login/sso/SSOInfo;)Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;

    move-result-object v0

    return-object v0
.end method

.method public verifyTaobaoSsoToken()Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;
    .locals 2

    .prologue
    .line 283
    const-string/jumbo v0, "SSOManager.login"

    const-string/jumbo v1, "verifyTaobaoSsoToken"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getTaobaoSsoInfo()Lcom/ali/user/mobile/login/sso/SSOInfo;

    move-result-object v0

    .line 287
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->verifyTaobaoSsoToken(Lcom/ali/user/mobile/login/sso/SSOInfo;)Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    move-result-object v0

    return-object v0
.end method

.method public verifyTaobaoSsoToken(Lcom/ali/user/mobile/login/sso/SSOInfo;)Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;
    .locals 3

    .prologue
    .line 291
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->ssoToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->nickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->c:Lcom/ali/user/mobile/login/sso/SSOFacade;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/login/sso/SSOFacade;->verifyTaobaoSsoToken(Lcom/ali/user/mobile/login/sso/SSOInfo;)Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenRes;

    move-result-object v1

    .line 293
    if-eqz v1, :cond_1

    iget-boolean v0, v1, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenRes;->success:Z

    if-eqz v0, :cond_1

    .line 294
    new-instance v0, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;-><init>()V

    .line 295
    iget-object v2, v1, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenRes;->headImg:Ljava/lang/String;

    iput-object v2, v0, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;->headImg:Ljava/lang/String;

    .line 296
    iget-boolean v2, v1, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenRes;->directLogin:Z

    iput-boolean v2, v0, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;->isDirectLogin:Z

    .line 297
    iget-object v2, v1, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenRes;->loginToken:Ljava/lang/String;

    iput-object v2, v0, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;->loginToken:Ljava/lang/String;

    .line 298
    iget-object v1, v1, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenRes;->taobaoNick:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;->taobaoNick:Ljava/lang/String;

    .line 304
    :goto_0
    return-object v0

    .line 302
    :cond_0
    const-string/jumbo v0, "SSOManager.login"

    const-string/jumbo v1, "\u6ca1\u6709\u83b7\u53d6\u5230\u6216\u8005\u975e\u6cd5\u7684ssoInfo"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized writeAlipaySsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 202
    monitor-enter p0

    .line 204
    :try_start_0
    const-string/jumbo v0, "SSOManager.login"

    const-string/jumbo v2, "\u5199\u5165sso token, type:%s, nike:%s, userid:%s, img:%s, token:%s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 205
    iget-object v5, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    invoke-virtual {v5}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->alipayAccountType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    aput-object p1, v3, v4

    .line 204
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    iget-object v2, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    invoke-virtual {v2}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->alipayAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, p2, p4, v2}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->shareSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 213
    :goto_0
    :try_start_1
    const-string/jumbo v1, "SSOManager.login"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "writeAlipaySsoToken\u7ed3\u679c:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    monitor-exit p0

    return v0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    :try_start_2
    const-string/jumbo v2, "SSOManager.login"

    const-string/jumbo v3, "shareSsoToken exception"

    invoke-static {v2, v3, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeTaobaoSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/ali/user/mobile/login/sso/SSOManager;->shareTaobaoSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
