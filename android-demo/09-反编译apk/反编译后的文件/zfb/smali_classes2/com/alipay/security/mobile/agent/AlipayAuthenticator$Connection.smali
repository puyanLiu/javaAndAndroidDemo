.class Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;
.super Ljava/lang/Object;
.source "AlipayAuthenticator.java"


# static fields
.field private static sConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;


# instance fields
.field private mAlipayAuthenticatorService:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

.field private mContext:Landroid/content/Context;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->sConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$InitCallback;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object v2, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mAlipayAuthenticatorService:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    .line 236
    iput-object v2, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 241
    iput-object v2, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mContext:Landroid/content/Context;

    .line 248
    if-nez p1, :cond_0

    .line 249
    new-instance v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;

    const-string/jumbo v1, "Invalid parameter exception"

    invoke-direct {v0, v1, v2}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;-><init>(Ljava/lang/String;Lcom/alipay/security/mobile/agent/AlipayAuthenticator$1;)V

    throw v0

    .line 252
    :cond_0
    iput-object p1, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mContext:Landroid/content/Context;

    .line 253
    iput-object v2, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mAlipayAuthenticatorService:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    .line 254
    new-instance v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection$1;

    invoke-direct {v0, p0, p2}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection$1;-><init>(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$InitCallback;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 272
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;)Z
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->isConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;)Z
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->bindService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->unbindService()V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;Landroid/os/Bundle;Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener;)I
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0, p1, p2}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->sendCommandAsync(Landroid/os/Bundle;Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->sendCommand(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;)Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mAlipayAuthenticatorService:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;)Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mAlipayAuthenticatorService:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    return-object p1
.end method

.method static synthetic access$802(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;)Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;
    .locals 0

    .prologue
    .line 227
    sput-object p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->sConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    return-object p0
.end method

.method private bindService()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 292
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 295
    sget-object v2, Lcom/alipay/security/mobile/agent/Version;->SERVICE_PACKAGE_NAME:Ljava/lang/String;

    .line 297
    :try_start_0
    const-string/jumbo v3, "KtSH_COUctZpUnIrhpOobXUbfWY"

    iget-object v4, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->getApkKeyHash(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "qi9jRyfvLzSHCk7cLWFW2mR2T9g"

    iget-object v4, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->getApkKeyHash(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 299
    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.alipay.security.mobile.alipayauthenticatorservice.AuthenticatorService"

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 302
    iget-object v3, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 304
    if-eqz v1, :cond_1

    .line 305
    invoke-static {v2}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->access$902(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v1

    .line 312
    :cond_2
    :goto_0
    return v0

    .line 310
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final declared-synchronized getInstance(Landroid/content/Context;Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$InitCallback;)Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;
    .locals 2

    .prologue
    .line 277
    const-class v1, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->sConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->sConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    iget-object v0, v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mAlipayAuthenticatorService:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    if-nez v0, :cond_1

    .line 278
    :cond_0
    new-instance v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    invoke-direct {v0, p0, p1}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;-><init>(Landroid/content/Context;Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$InitCallback;)V

    sput-object v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->sConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    .line 280
    :cond_1
    sget-object v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->sConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isConnected()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mAlipayAuthenticatorService:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendCommand(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mAlipayAuthenticatorService:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    invoke-interface {v1, p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;->processCommand(Landroid/os/Bundle;)I

    .line 336
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 342
    :goto_0
    return-object p1

    .line 339
    :cond_0
    new-instance v1, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;

    const-string/jumbo v2, "Null pointer exception"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;-><init>(Ljava/lang/String;Lcom/alipay/security/mobile/agent/AlipayAuthenticator$1;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :catch_0
    move-exception v1

    move-object p1, v0

    goto :goto_0
.end method

.method private sendCommandAsync(Landroid/os/Bundle;Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener;)I
    .locals 3

    .prologue
    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mAlipayAuthenticatorService:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    invoke-interface {v0, p1, p2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;->processCommandAsync(Landroid/os/Bundle;Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 360
    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;

    const-string/jumbo v1, "Null pointer exception"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;-><init>(Ljava/lang/String;Lcom/alipay/security/mobile/agent/AlipayAuthenticator$1;)V

    throw v0
.end method

.method private unbindService()V
    .locals 2

    .prologue
    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->mAlipayAuthenticatorService:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    .line 325
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
