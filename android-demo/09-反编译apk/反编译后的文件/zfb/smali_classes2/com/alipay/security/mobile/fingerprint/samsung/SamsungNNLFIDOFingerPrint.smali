.class public Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;
.super Lcom/alipay/security/mobile/auth/AbstractAuthenticator;
.source "SamsungNNLFIDOFingerPrint.java"


# static fields
.field private static final KEY_DEVICEID:Ljava/lang/String; = "deviceid"

.field private static final SECURITY_PREFERENCE:Ljava/lang/String; = "securitypreference00"


# instance fields
.field private initHandler:Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$InitHandler;

.field private lock:Ljava/lang/Object;

.field private mDeviceid:Ljava/lang/String;

.field private mResult:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->mDeviceid:Ljava/lang/String;

    .line 47
    const/16 v0, 0x65

    iput v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->mResult:I

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->lock:Ljava/lang/Object;

    .line 255
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;)Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$InitHandler;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->initHandler:Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$InitHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->mResult:I

    return v0
.end method

.method static synthetic access$202(Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;I)I
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->mResult:I

    return p1
.end method

.method static synthetic access$300(Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)I
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->toInit(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)I

    move-result v0

    return v0
.end method

.method private isSupportFingerPrint(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 288
    :try_start_0
    new-instance v1, Lcom/samsung/android/sdk/pass/Spass;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pass/Spass;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 289
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pass/Spass;->initialize(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 297
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pass/Spass;->isFeatureEnabled(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .line 300
    :goto_0
    return v0

    .line 293
    :catch_0
    move-exception v1

    goto :goto_0

    .line 295
    :catch_1
    move-exception v1

    goto :goto_0

    .line 300
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private sha_hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 314
    :try_start_0
    const-string/jumbo v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 319
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 320
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 322
    const-string/jumbo v1, ""

    .line 323
    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 326
    aget-byte v3, v2, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 328
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

    .line 325
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    move-object v0, p1

    .line 333
    :cond_0
    return-object v0

    .line 330
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

.method private toInit(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)I
    .locals 4

    .prologue
    const/16 v0, 0x65

    .line 124
    if-nez p1, :cond_0

    .line 125
    :try_start_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-static {v1}, Lcom/alipay/security/mobile/auth/AuthenticatorResponseUtil;->getAuthenticatorResponse(Landroid/os/Message;)Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/alipay/security/mobile/auth/AuthenticatorCallback;->callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V

    .line 157
    :goto_0
    return v0

    .line 129
    :cond_0
    iput-object p1, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->context:Landroid/content/Context;

    .line 130
    invoke-static {}, Lcom/fido/android/framework/agent/Fido;->Instance()Lcom/fido/android/framework/agent/Fido;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fido/android/framework/agent/Fido;->uninit()V

    .line 131
    invoke-virtual {p0}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->mDeviceid:Ljava/lang/String;

    .line 132
    invoke-direct {p0, p1}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->isSupportFingerPrint(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-static {v1}, Lcom/alipay/security/mobile/auth/AuthenticatorResponseUtil;->getAuthenticatorResponse(Landroid/os/Message;)Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/alipay/security/mobile/auth/AuthenticatorCallback;->callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V

    .line 135
    const/16 v0, 0x6f

    goto :goto_0

    .line 143
    :cond_1
    new-instance v1, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$InitHandler;

    invoke-direct {v1, p2}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$InitHandler;-><init>(Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    iput-object v1, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->initHandler:Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$InitHandler;

    .line 145
    invoke-static {}, Lcom/fido/android/framework/agent/Fido;->Instance()Lcom/fido/android/framework/agent/Fido;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->initHandler:Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$InitHandler;

    invoke-virtual {v1, p1, v2}, Lcom/fido/android/framework/agent/Fido;->init(Landroid/content/Context;Landroid/os/Handler;)Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v1

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "hardware result"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils;->getResult(Lcom/fido/android/framework/agent/api/ResultType;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    sget-object v2, Lcom/fido/android/framework/agent/api/ResultType;->NOT_COMPATIBLE:Lcom/fido/android/framework/agent/api/ResultType;

    invoke-virtual {v2, v1}, Lcom/fido/android/framework/agent/api/ResultType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    const/16 v0, 0x6a

    goto :goto_0

    .line 149
    :cond_2
    sget-object v2, Lcom/fido/android/framework/agent/api/ResultType;->NOT_INSTALLED:Lcom/fido/android/framework/agent/api/ResultType;

    invoke-virtual {v2, v1}, Lcom/fido/android/framework/agent/api/ResultType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 150
    const/16 v0, 0x69

    goto :goto_0

    .line 152
    :cond_3
    invoke-static {v1}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils;->getResult(Lcom/fido/android/framework/agent/api/ResultType;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-static {v1}, Lcom/alipay/security/mobile/auth/AuthenticatorResponseUtil;->getAuthenticatorResponse(Landroid/os/Message;)Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/alipay/security/mobile/auth/AuthenticatorCallback;->callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public checkUserStatus(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x2

    return v0
.end method

.method protected doAuthenticate(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 2

    .prologue
    .line 179
    new-instance v0, Lcom/alipay/security/mobile/fingerprint/samsung/AuthenticateOperation;

    invoke-direct {v0, p1, p2}, Lcom/alipay/security/mobile/fingerprint/samsung/AuthenticateOperation;-><init>(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    .line 182
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 183
    return-void
.end method

.method protected doDeregister(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 2

    .prologue
    .line 191
    new-instance v0, Lcom/alipay/security/mobile/fingerprint/samsung/DeRegisterOperation;

    invoke-direct {v0, p1, p2}, Lcom/alipay/security/mobile/fingerprint/samsung/DeRegisterOperation;-><init>(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    .line 193
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 194
    return-void
.end method

.method protected doRegister(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 2

    .prologue
    .line 168
    new-instance v0, Lcom/alipay/security/mobile/fingerprint/samsung/RegisterOperation;

    invoke-direct {v0, p1, p2}, Lcom/alipay/security/mobile/fingerprint/samsung/RegisterOperation;-><init>(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    .line 170
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 171
    return-void
.end method

.method public getAuthInfo()Lcom/alipay/security/mobile/auth/AuthInfo;
    .locals 6

    .prologue
    .line 244
    new-instance v0, Lcom/alipay/security/mobile/auth/AuthInfo;

    sget v1, Lcom/alipay/security/mobile/auth/Constants;->TYPE_FINGERPRINT:I

    sget v2, Lcom/alipay/security/mobile/auth/Constants;->VENDOR_SAMSUNG:I

    sget v3, Lcom/alipay/security/mobile/auth/Constants;->PROTOCOL_TYPE_NNL_FIDO:I

    const/4 v4, 0x1

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/alipay/security/mobile/auth/AuthInfo;-><init>(IIIILjava/lang/String;)V

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->mDeviceid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->mDeviceid:Ljava/lang/String;

    .line 222
    :cond_0
    :goto_0
    return-object v0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->context:Landroid/content/Context;

    const-string/jumbo v1, "securitypreference00"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 206
    const-string/jumbo v0, "deviceid"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/util/DeviceInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-le v2, v3, :cond_2

    .line 210
    invoke-direct {p0, v0}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->sha_hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 212
    const-string/jumbo v2, "deviceid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 213
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 215
    :cond_2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->sha_hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 218
    const-string/jumbo v2, "deviceid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 219
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 76
    sget-object v1, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    new-instance v0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$1;

    invoke-direct {v0, p0, p2}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$1;-><init>(Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    .line 90
    new-instance v2, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$2;-><init>(Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    .line 107
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 109
    iget-object v2, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->lock:Ljava/lang/Object;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    :try_start_3
    iget v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->mResult:I

    monitor-exit v1

    return v0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registedFingerPrintNumber()I
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;

    iget-object v1, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->hasRegisteredFinger()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method
