.class public Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;
.super Lcom/alipay/security/mobile/auth/AbstractAuthenticator;
.source "VendorFingerPrint.java"


# static fields
.field private static final KEY_DEVICEID:Ljava/lang/String; = "deviceid"

.field private static final SECURITY_PREFERENCE:Ljava/lang/String; = "securitypreference00"

.field public static minVersion:I

.field public static updateVersion:I


# instance fields
.field private lock:Ljava/lang/Object;

.field private mResult:I

.field private packageName:Ljava/lang/String;

.field private protocalType:I

.field private protocalVersion:I

.field private serverUrl:Ljava/lang/String;

.field private vendor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x6

    sput v0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->minVersion:I

    .line 51
    const/4 v0, 0x7

    sput v0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->updateVersion:I

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 56
    invoke-direct {p0}, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;-><init>()V

    .line 43
    const/16 v0, 0x65

    iput v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mResult:I

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->lock:Ljava/lang/Object;

    .line 45
    iput v1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->vendor:I

    .line 46
    iput v1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->protocalType:I

    .line 47
    iput v1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->protocalVersion:I

    .line 48
    iput-object v2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->packageName:Ljava/lang/String;

    .line 49
    iput-object v2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->serverUrl:Ljava/lang/String;

    .line 57
    iput p1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->vendor:I

    .line 58
    iput p2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->protocalType:I

    .line 59
    iput p3, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->protocalVersion:I

    .line 60
    iput-object p4, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->packageName:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->serverUrl:Ljava/lang/String;

    .line 62
    return-void
.end method

.method static synthetic access$002(Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mResult:I

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method private sha_hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 350
    :try_start_0
    const-string/jumbo v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 355
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 356
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 358
    const-string/jumbo v1, ""

    .line 359
    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 362
    aget-byte v3, v2, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 363
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 364
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    move-object v0, p1

    .line 369
    :cond_0
    return-object v0

    .line 366
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public checkUserStatus(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 217
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 218
    const-string/jumbo v1, "KEY_OPERATIONT_TYPE"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    const-string/jumbo v1, "KEY_USERID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string/jumbo v1, "KEY_VENDOR_TYPE"

    iget v2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->vendor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    invoke-static {}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->Instance()Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->process(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 223
    if-nez v0, :cond_0

    .line 224
    const/4 v0, -0x1

    .line 228
    :goto_0
    return v0

    .line 227
    :cond_0
    const-string/jumbo v1, "KEY_USERSTATUS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected doAuthenticate(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method protected doDeregister(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method protected doRegister(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public getAuthInfo()Lcom/alipay/security/mobile/auth/AuthInfo;
    .locals 7

    .prologue
    .line 200
    new-instance v0, Lcom/alipay/security/mobile/auth/AuthInfo;

    sget v1, Lcom/alipay/security/mobile/auth/Constants;->TYPE_FINGERPRINT:I

    iget v2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->vendor:I

    iget v3, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->protocalType:I

    iget v4, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->protocalVersion:I

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->serverUrl:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/alipay/security/mobile/auth/AuthInfo;-><init>(IIIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x0

    .line 134
    iget-object v1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->context:Landroid/content/Context;

    const-string/jumbo v2, "securitypreference00"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 136
    const-string/jumbo v1, "deviceid"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    if-nez v1, :cond_3

    .line 138
    iget v1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->protocalVersion:I

    if-ne v1, v5, :cond_2

    .line 139
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/util/DeviceInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xb

    if-le v1, v3, :cond_1

    .line 141
    invoke-direct {p0, v0}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->sha_hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 143
    const-string/jumbo v2, "deviceid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    :cond_0
    :goto_0
    return-object v0

    .line 147
    :cond_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->sha_hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 150
    const-string/jumbo v2, "deviceid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 155
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 156
    const-string/jumbo v3, "KEY_OPERATIONT_TYPE"

    const/16 v4, 0xc

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    const-string/jumbo v3, "KEY_VENDOR_TYPE"

    iget v4, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->vendor:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    invoke-static {}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->Instance()Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->process(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_0

    .line 163
    const-string/jumbo v3, "DEVICEID"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 164
    if-eqz v1, :cond_0

    .line 167
    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 169
    const-string/jumbo v2, "deviceid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 175
    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 301
    sget-object v1, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->packageName:Ljava/lang/String;

    sput-object v0, Lcom/alipay/security/mobile/agent/Version;->SERVICE_PACKAGE_NAME:Ljava/lang/String;

    .line 304
    const/4 v0, 0x2

    sput v0, Lcom/alipay/security/mobile/agent/Version;->agentVersionCode:I

    .line 305
    iput-object p1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->context:Landroid/content/Context;

    .line 306
    new-instance v0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$1;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$1;-><init>(Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;)V

    .line 316
    invoke-static {}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->Instance()Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->init(Landroid/content/Context;Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$InitCallback;)I

    move-result v0

    iput v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mResult:I

    .line 318
    iget-object v2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 320
    :try_start_1
    iget v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mResult:I

    if-ne v0, v5, :cond_0

    .line 321
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->lock:Ljava/lang/Object;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    :try_start_3
    iget v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mResult:I

    const/16 v2, 0x7a

    if-ne v0, v2, :cond_1

    .line 329
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mResult:I

    .line 332
    :cond_1
    iget v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mResult:I

    if-ne v0, v5, :cond_2

    .line 333
    invoke-static {p1}, Lcom/alipay/security/mobile/agent/Version;->readServiceVersion(Landroid/content/Context;)I

    move-result v0

    sget v2, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->minVersion:I

    if-ge v0, v2, :cond_2

    .line 334
    const/16 v0, 0x7f

    iput v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mResult:I

    .line 337
    :cond_2
    iget v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mResult:I

    monitor-exit v1

    return v0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 338
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public prapareKeyPair()V
    .locals 3

    .prologue
    .line 261
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 262
    const-string/jumbo v1, "KEY_OPERATIONT_TYPE"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    const-string/jumbo v1, "KEY_VENDOR_TYPE"

    iget v2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->vendor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    invoke-static {}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->Instance()Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->process(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 266
    return-void
.end method

.method public process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    const-string/jumbo v1, "KEY_OPERATIONT_TYPE"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    const-string/jumbo v1, "KEY_VENDOR_TYPE"

    iget v2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->vendor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    invoke-static {}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->Instance()Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->process(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 112
    if-nez v0, :cond_1

    .line 113
    const/4 v0, 0x0

    .line 124
    :cond_0
    :goto_0
    return-object v0

    .line 115
    :cond_1
    const-string/jumbo v1, "KEY_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getType()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    .line 118
    invoke-static {v0}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/security/mobile/agent/Version;->readServiceVersion(Landroid/content/Context;)I

    move-result v1

    sget v2, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->updateVersion:I

    if-ge v1, v2, :cond_0

    .line 120
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->serverUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 4

    .prologue
    .line 82
    new-instance v0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrintsOperation;

    iget v1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->vendor:I

    invoke-direct {v0, p1, p2, v1}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrintsOperation;-><init>(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;I)V

    .line 85
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 86
    iget-object v1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/security/mobile/agent/Version;->readServiceVersion(Landroid/content/Context;)I

    move-result v1

    sget v2, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->minVersion:I

    if-ge v1, v2, :cond_1

    .line 87
    iget-object v1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->context:Landroid/content/Context;

    const-string/jumbo v2, "alipays://platformapi/startApp?appId=20000082"

    iget-object v3, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->serverUrl:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alipay/security/mobile/util/CommonUtils;->notifyUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 100
    return-void

    .line 90
    :cond_1
    new-instance v1, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-direct {v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;-><init>()V

    .line 91
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->setType(I)V

    .line 92
    invoke-virtual {p0, v1}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {v1}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->context:Landroid/content/Context;

    const-string/jumbo v3, "alipays://platformapi/startApp?appId=20000082"

    invoke-static {v2, v3, v1}, Lcom/alipay/security/mobile/util/CommonUtils;->notifyUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registedFingerPrintNumber()I
    .locals 3

    .prologue
    .line 239
    iget v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->protocalVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 240
    const/4 v0, 0x1

    .line 251
    :goto_0
    return v0

    .line 242
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 243
    const-string/jumbo v1, "KEY_OPERATIONT_TYPE"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    const-string/jumbo v1, "KEY_VENDOR_TYPE"

    iget v2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->vendor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    invoke-static {}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->Instance()Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->process(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 247
    if-nez v0, :cond_1

    .line 248
    const/4 v0, 0x0

    goto :goto_0

    .line 250
    :cond_1
    const-string/jumbo v1, "FINGERPRINTS_NUM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method
