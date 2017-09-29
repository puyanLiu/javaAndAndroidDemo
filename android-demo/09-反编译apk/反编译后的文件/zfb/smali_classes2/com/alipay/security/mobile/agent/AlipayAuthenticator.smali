.class public Lcom/alipay/security/mobile/agent/AlipayAuthenticator;
.super Ljava/lang/Object;
.source "AlipayAuthenticator.java"


# static fields
.field private static bindServicePackageName:Ljava/lang/String;

.field private static mAlipayAuthenticator:Lcom/alipay/security/mobile/agent/AlipayAuthenticator;


# instance fields
.field private mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

.field private mAuthenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

.field private mContext:Landroid/content/Context;

.field private processListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->bindServicePackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mContext:Landroid/content/Context;

    .line 58
    iput-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    .line 78
    new-instance v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$1;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$1;-><init>(Lcom/alipay/security/mobile/agent/AlipayAuthenticator;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->processListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener;

    .line 385
    return-void
.end method

.method public static Instance()Lcom/alipay/security/mobile/agent/AlipayAuthenticator;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticator:Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    invoke-direct {v0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticator:Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    .line 71
    :cond_0
    sget-object v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticator:Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    return-object v0
.end method

.method static synthetic access$000(Lcom/alipay/security/mobile/agent/AlipayAuthenticator;)Lcom/alipay/security/mobile/auth/AuthenticatorCallback;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAuthenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    return-object v0
.end method

.method static synthetic access$902(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->bindServicePackageName:Ljava/lang/String;

    return-object p0
.end method

.method private authentServiceConnection()Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    invoke-static {v0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->access$600(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;)Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    invoke-static {v0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->access$600(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;)Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_2

    .line 212
    :cond_1
    sget-object v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticator:Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->uninit()V

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    if-nez v0, :cond_3

    .line 216
    new-instance v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;

    const-string/jumbo v1, "AlipayAuthenticator not connected"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;-><init>(Ljava/lang/String;Lcom/alipay/security/mobile/agent/AlipayAuthenticator$1;)V

    throw v0

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    return-object v0
.end method

.method public static getApkKeyHash(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 407
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 409
    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 413
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 415
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 417
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 419
    const-string/jumbo v0, "X509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 423
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    .line 425
    const-string/jumbo v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 427
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 429
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 431
    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 433
    const-string/jumbo v1, "="

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$InitCallback;)I
    .locals 4

    .prologue
    .line 103
    sget-object v1, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 107
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mContext:Landroid/content/Context;

    if-nez v0, :cond_4

    .line 108
    iput-object v2, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mContext:Landroid/content/Context;

    .line 114
    :cond_0
    :goto_0
    const-string/jumbo v0, ""

    sget-object v3, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->bindServicePackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/security/mobile/agent/Version;->SERVICE_PACKAGE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->bindServicePackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->uninit()V

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "package:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->bindServicePackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/alipay/security/mobile/agent/Version;->SERVICE_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {v2}, Lcom/alipay/security/mobile/agent/Version;->checkServiceVersion(Landroid/content/Context;)I

    move-result v0

    .line 122
    invoke-static {v2, p2}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->getInstance(Landroid/content/Context;Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$InitCallback;)Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    move-result-object v2

    .line 123
    const/16 v3, 0x7a

    if-ne v0, v3, :cond_3

    .line 124
    iget-object v3, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->access$100(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 125
    :cond_2
    invoke-static {v2}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->access$200(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    .line 126
    const/16 v0, 0x7e

    .line 141
    :cond_3
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    .line 109
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->uninit()V

    .line 112
    iput-object v2, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mContext:Landroid/content/Context;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 135
    :try_start_4
    sget-object v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticator:Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->uninit()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    :goto_2
    const/16 v0, 0x69

    goto :goto_1

    .line 128
    :cond_5
    :try_start_5
    iput-object v2, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 129
    const/16 v0, 0x64

    goto :goto_1

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public process(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 193
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->authentServiceConnection()Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->access$500(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/alipay/security/mobile/agent/AlipayAuthenticator$RequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 197
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public processAsync(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;I)V
    .locals 3

    .prologue
    .line 164
    iput-object p2, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAuthenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    .line 166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 167
    const-string/jumbo v1, "KEY_OPERATIONT_TYPE"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    const-string/jumbo v1, "KEY_MESSAGE"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string/jumbo v1, "KEY_VENDOR_TYPE"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    const-string/jumbo v1, "KEY_AUTHENTICATOR_TYPE"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getAuthenticatorType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    const-string/jumbo v1, "KEY_EXTRA_PARAMS"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getExtraParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string/jumbo v1, "KEY_VERSION"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->authentServiceConnection()Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->processListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener;

    invoke-static {v1, v0, v2}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->access$400(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;Landroid/os/Bundle;Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener;)I
    :try_end_0
    .catch Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/alipay/security/mobile/agent/AlipayAuthenticator$RequestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 180
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public uninit()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    invoke-static {v0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->access$300(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;)V

    .line 151
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    .line 152
    return-void
.end method
