.class public Lcom/alipay/security/mobile/api/AuthenticatorApi;
.super Ljava/lang/Object;
.source "AuthenticatorApi.java"


# static fields
.field public static TYPE_BRACELET:I

.field public static TYPE_FINGERPRINT:I

.field public static sSystemFingerPrintNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/alipay/security/mobile/auth/Constants;->TYPE_FINGERPRINT:I

    sput v0, Lcom/alipay/security/mobile/api/AuthenticatorApi;->TYPE_FINGERPRINT:I

    .line 39
    sget v0, Lcom/alipay/security/mobile/auth/Constants;->TYPE_BRACELET:I

    sput v0, Lcom/alipay/security/mobile/api/AuthenticatorApi;->TYPE_BRACELET:I

    .line 44
    const/4 v0, 0x0

    sput v0, Lcom/alipay/security/mobile/api/AuthenticatorApi;->sSystemFingerPrintNumber:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 164
    invoke-static {v0, p1}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->create(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v0

    return-object v0
.end method

.method private static getAuthModelByAuthType(Landroid/content/Context;IILjava/lang/String;)Lcom/alipay/security/mobile/api/BICDataModel;
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 49
    sget-object v11, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v11

    .line 50
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 54
    :try_start_1
    invoke-static {v0, p1}, Lcom/alipay/security/mobile/api/AuthenticatorApi;->create(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v2

    .line 55
    new-instance v1, Lcom/alipay/security/mobile/api/AuthenticatorApi$1;

    invoke-direct {v1}, Lcom/alipay/security/mobile/api/AuthenticatorApi$1;-><init>()V

    invoke-interface {v2, v0, v1, p3}, Lcom/alipay/security/mobile/auth/IAuthenticator;->init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 60
    const/16 v1, 0x6f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x69

    if-eq v0, v1, :cond_0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_1

    .line 64
    :cond_0
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v10

    .line 90
    :goto_0
    return-object v0

    .line 67
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 68
    :try_start_3
    invoke-interface {v2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->registedFingerPrintNumber()I

    move-result v1

    sput v1, Lcom/alipay/security/mobile/api/AuthenticatorApi;->sSystemFingerPrintNumber:I

    .line 71
    :cond_2
    invoke-interface {v2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->getAuthInfo()Lcom/alipay/security/mobile/auth/AuthInfo;

    move-result-object v3

    .line 73
    invoke-interface {v2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 75
    const/4 v1, 0x2

    .line 76
    invoke-static {p3}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 77
    invoke-interface {v2, p3}, Lcom/alipay/security/mobile/auth/IAuthenticator;->checkUserStatus(Ljava/lang/String;)I

    move-result v1

    .line 80
    :cond_3
    const/4 v7, 0x6

    .line 81
    const/16 v2, 0x7f

    if-ne v0, v2, :cond_4

    .line 82
    const/4 v7, 0x5

    .line 85
    :cond_4
    new-instance v0, Lcom/alipay/security/mobile/api/BICDataModel;

    invoke-virtual {v3}, Lcom/alipay/security/mobile/auth/AuthInfo;->getType()I

    move-result v2

    invoke-virtual {v3}, Lcom/alipay/security/mobile/auth/AuthInfo;->getProtocolType()I

    move-result v4

    invoke-virtual {v3}, Lcom/alipay/security/mobile/auth/AuthInfo;->getProtocolVersion()I

    move-result v5

    invoke-virtual {v3}, Lcom/alipay/security/mobile/auth/AuthInfo;->getVendor()I

    move-result v6

    invoke-virtual {v3}, Lcom/alipay/security/mobile/auth/AuthInfo;->getPhoneModle()Ljava/lang/String;

    move-result-object v9

    move v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/alipay/security/mobile/api/BICDataModel;-><init>(IIIIIIILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0

    .line 90
    :catch_0
    move-exception v0

    monitor-exit v11

    move-object v0, v10

    goto :goto_0
.end method

.method public static getPayAuthData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 129
    sget-object v1, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, p1}, Lcom/alipay/security/mobile/api/AuthenticatorApi;->getAuthModelByAuthType(Landroid/content/Context;IILjava/lang/String;)Lcom/alipay/security/mobile/api/BICDataModel;

    move-result-object v3

    .line 137
    sget v4, Lcom/alipay/security/mobile/api/AuthenticatorApi;->sSystemFingerPrintNumber:I

    if-lez v4, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/alipay/security/mobile/api/BICDataModel;->getClientStatus()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 139
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, p1}, Lcom/alipay/security/mobile/api/AuthenticatorApi;->getAuthModelByAuthType(Landroid/content/Context;IILjava/lang/String;)Lcom/alipay/security/mobile/api/BICDataModel;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/security/mobile/api/BICDataModel;->getClientStatus()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 147
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_1
    invoke-static {v2}, Lcom/alipay/security/mobile/api/BICDataUtil;->toDataJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getRegAuthData(Landroid/content/Context;IILjava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 97
    sget-object v10, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v10

    .line 98
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 103
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p3}, Lcom/alipay/security/mobile/api/AuthenticatorApi;->getAuthModelByAuthType(Landroid/content/Context;IILjava/lang/String;)Lcom/alipay/security/mobile/api/BICDataModel;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_0

    .line 106
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p3}, Lcom/alipay/security/mobile/api/AuthenticatorApi;->getAuthModelByAuthType(Landroid/content/Context;IILjava/lang/String;)Lcom/alipay/security/mobile/api/BICDataModel;

    move-result-object v9

    .line 112
    if-eqz v9, :cond_1

    .line 113
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_1
    if-eqz v9, :cond_2

    .line 117
    new-instance v0, Lcom/alipay/security/mobile/api/BICDataModel;

    invoke-virtual {v9}, Lcom/alipay/security/mobile/api/BICDataModel;->getClientStatus()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v9}, Lcom/alipay/security/mobile/api/BICDataModel;->getProtocalType()I

    move-result v4

    invoke-virtual {v9}, Lcom/alipay/security/mobile/api/BICDataModel;->getProtocalVersion()I

    move-result v5

    invoke-virtual {v9}, Lcom/alipay/security/mobile/api/BICDataModel;->getVendor()I

    move-result v6

    invoke-virtual {v9}, Lcom/alipay/security/mobile/api/BICDataModel;->getServiceVersion()I

    move-result v7

    invoke-virtual {v9}, Lcom/alipay/security/mobile/api/BICDataModel;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Lcom/alipay/security/mobile/api/BICDataModel;->getPhoneModel()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/alipay/security/mobile/api/BICDataModel;-><init>(IIIIIIILjava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_2
    invoke-static {v11}, Lcom/alipay/security/mobile/api/BICDataUtil;->toDataJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method
