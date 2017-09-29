.class public Lcom/alipay/security/mobile/bracelet/adapter/BraceletAuthenticatorAdapter;
.super Lcom/alipay/security/mobile/auth/AbstractAuthenticator;
.source "BraceletAuthenticatorAdapter.java"


# instance fields
.field private authenticator:Lcom/alipay/security/mobile/auth/AbstractAuthenticator;

.field private mCommonAuthenticator:Lcom/alipay/security/mobile/auth/AbstractAuthenticator;

.field private mServiceAuthenticator:Lcom/alipay/security/mobile/auth/AbstractAuthenticator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;-><init>()V

    .line 30
    new-instance v0, Lcom/alipay/security/mobile/bracelet/common/CommonBraceletAuthenticator;

    invoke-direct {v0}, Lcom/alipay/security/mobile/bracelet/common/CommonBraceletAuthenticator;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/adapter/BraceletAuthenticatorAdapter;->mCommonAuthenticator:Lcom/alipay/security/mobile/auth/AbstractAuthenticator;

    .line 31
    new-instance v0, Lcom/alipay/security/mobile/bracelet/xiaomi/XiaomiAuthenticator;

    invoke-direct {v0}, Lcom/alipay/security/mobile/bracelet/xiaomi/XiaomiAuthenticator;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/adapter/BraceletAuthenticatorAdapter;->mServiceAuthenticator:Lcom/alipay/security/mobile/auth/AbstractAuthenticator;

    .line 32
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    return-void
.end method

.method public checkUserStatus(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/adapter/BraceletAuthenticatorAdapter;->authenticator:Lcom/alipay/security/mobile/auth/AbstractAuthenticator;

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;->checkUserStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected doAuthenticate(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 104
    return-void
.end method

.method protected doDeregister(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    return-void
.end method

.method protected doRegister(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    return-void
.end method

.method public getAuthInfo()Lcom/alipay/security/mobile/auth/AuthInfo;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/adapter/BraceletAuthenticatorAdapter;->authenticator:Lcom/alipay/security/mobile/auth/AbstractAuthenticator;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;->getAuthInfo()Lcom/alipay/security/mobile/auth/AuthInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/adapter/BraceletAuthenticatorAdapter;->authenticator:Lcom/alipay/security/mobile/auth/AbstractAuthenticator;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 37
    invoke-static {p3}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-string/jumbo v0, "\u521d\u59cb\u5316\u624b\u73afuserID\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/String;)V

    .line 41
    :cond_0
    invoke-static {p1}, Lcom/alipay/security/mobile/bracelet/adapter/AdapterSettingsStorage;->isServiceDeprecated(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p3}, Lcom/alipay/security/mobile/bracelet/adapter/AdapterSettingsStorage;->isServiceDeprecated(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    :cond_1
    const-string/jumbo v0, "Service is deprecated"

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/adapter/BraceletAuthenticatorAdapter;->mCommonAuthenticator:Lcom/alipay/security/mobile/auth/AbstractAuthenticator;

    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/adapter/BraceletAuthenticatorAdapter;->authenticator:Lcom/alipay/security/mobile/auth/AbstractAuthenticator;

    .line 46
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/adapter/BraceletAuthenticatorAdapter;->authenticator:Lcom/alipay/security/mobile/auth/AbstractAuthenticator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;->init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I

    move-result v0

    .line 71
    :cond_2
    :goto_0
    return v0

    .line 48
    :cond_3
    const-string/jumbo v0, "Service is not deprecated"

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/adapter/BraceletAuthenticatorAdapter;->mServiceAuthenticator:Lcom/alipay/security/mobile/auth/AbstractAuthenticator;

    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/adapter/BraceletAuthenticatorAdapter;->authenticator:Lcom/alipay/security/mobile/auth/AbstractAuthenticator;

    .line 50
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/adapter/BraceletAuthenticatorAdapter;->authenticator:Lcom/alipay/security/mobile/auth/AbstractAuthenticator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;->init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I

    move-result v0

    .line 53
    const/16 v3, 0x6f

    if-eq v0, v3, :cond_4

    const/16 v3, 0x69

    if-eq v0, v3, :cond_4

    const/16 v3, 0x6a

    if-eq v0, v3, :cond_4

    const/16 v3, 0x7e

    if-ne v0, v3, :cond_5

    .line 58
    :cond_4
    invoke-static {p1, v2}, Lcom/alipay/security/mobile/bracelet/adapter/AdapterSettingsStorage;->setServiceDeprecated(Landroid/content/Context;Z)V

    .line 65
    :goto_1
    if-nez v1, :cond_2

    .line 66
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/adapter/BraceletAuthenticatorAdapter;->mCommonAuthenticator:Lcom/alipay/security/mobile/auth/AbstractAuthenticator;

    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/adapter/BraceletAuthenticatorAdapter;->authenticator:Lcom/alipay/security/mobile/auth/AbstractAuthenticator;

    .line 67
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/adapter/BraceletAuthenticatorAdapter;->authenticator:Lcom/alipay/security/mobile/auth/AbstractAuthenticator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;->init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 60
    :cond_5
    invoke-static {p3}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/alipay/security/mobile/bracelet/adapter/BraceletAuthenticatorAdapter;->authenticator:Lcom/alipay/security/mobile/auth/AbstractAuthenticator;

    invoke-virtual {v3, p3}, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;->checkUserStatus(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    .line 62
    invoke-static {p1, p3, v2}, Lcom/alipay/security/mobile/bracelet/adapter/AdapterSettingsStorage;->setServiceDeprecated(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method public process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/adapter/BraceletAuthenticatorAdapter;->authenticator:Lcom/alipay/security/mobile/auth/AbstractAuthenticator;

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;->process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->getScanner()Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/bracelet/scan/BraceletScanner;->stopScan()V

    .line 78
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/adapter/BraceletAuthenticatorAdapter;->authenticator:Lcom/alipay/security/mobile/auth/AbstractAuthenticator;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;->process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    .line 79
    return-void
.end method

.method public release()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    return-void
.end method
