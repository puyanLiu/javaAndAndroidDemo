.class public Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;
.super Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;
.source "FingerprintPayHelperImpl.java"


# instance fields
.field private a:Lcom/alipay/security/mobile/auth/IAuthenticator;

.field private b:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;)Lcom/alipay/security/mobile/auth/IAuthenticator;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;)Lcom/alipay/security/mobile/auth/AuthenticatorCallback;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->b:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILjava/lang/String;)I
    .locals 5

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    invoke-static {v0, p2}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->create(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->b:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    if-nez v0, :cond_1

    .line 37
    new-instance v0, Lcom/alipay/android/app/hardwarepay/AuthenticatorCallbackImpl;

    .line 38
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/alipay/android/app/hardwarepay/AuthenticatorCallbackImpl;-><init>(Landroid/content/Context;Lcom/alipay/security/mobile/auth/IAuthenticator;Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;I)V

    .line 37
    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->b:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->b:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    .line 40
    invoke-interface {v0, v1, v2, p3}, Lcom/alipay/security/mobile/auth/IAuthenticator;->init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I

    move-result v0

    .line 42
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "msp"

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "PhoneCashierHardwarePayServiceImpl init:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return v0
.end method

.method public final a(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-interface {v0, p1}, Lcom/alipay/security/mobile/auth/IAuthenticator;->checkUserStatus(Ljava/lang/String;)I

    move-result v0

    .line 73
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    .line 74
    const-string/jumbo v2, "msp"

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u94b1\u5305-FingerprintPayHelperImpl-checkUserStatus result\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 76
    const-string/jumbo v4, " data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return v0
.end method

.method public final a(ILjava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    new-instance v1, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    .line 88
    invoke-direct {v1, p3, p1, p2}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;-><init>(IILjava/lang/String;)V

    .line 87
    invoke-interface {v0, v1}, Lcom/alipay/security/mobile/auth/IAuthenticator;->process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    .line 90
    const-string/jumbo v2, "msp"

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u94b1\u5305-FingerprintPayHelperImpl-process type\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 92
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-object v0
.end method

.method public final a(IILjava/lang/String;ILjava/lang/Object;Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->b:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/alipay/android/app/hardwarepay/AuthenticatorCallbackImpl;

    .line 101
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    check-cast p5, Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;

    invoke-direct {v0, p6, v1, p5, p4}, Lcom/alipay/android/app/hardwarepay/AuthenticatorCallbackImpl;-><init>(Landroid/content/Context;Lcom/alipay/security/mobile/auth/IAuthenticator;Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;I)V

    .line 100
    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->b:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    .line 106
    :goto_0
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/a;

    move-object v1, p0

    move-object v2, p6

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/a;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;Landroid/content/Context;IILjava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 120
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 121
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->b:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    check-cast v0, Lcom/alipay/android/app/hardwarepay/AuthenticatorCallbackImpl;

    .line 104
    check-cast p5, Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;

    invoke-virtual {v0, p5}, Lcom/alipay/android/app/hardwarepay/AuthenticatorCallbackImpl;->a(Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 125
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 126
    const-string/jumbo v1, "msp"

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u94b1\u5305-FingerprintPayHelperImpl-\u56de\u8c03command\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 128
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->e:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;

    if-nez v0, :cond_3

    .line 133
    :cond_0
    sget-object v0, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->e:Ljava/lang/Object;

    .line 136
    :goto_0
    if-nez v0, :cond_1

    .line 145
    :goto_1
    return-void

    .line 139
    :cond_1
    instance-of v1, v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;

    if-eqz v1, :cond_2

    .line 140
    check-cast v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;

    .line 141
    invoke-interface {v0, p2, p3}, Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;->callBack(ILjava/lang/String;)V

    .line 143
    :cond_2
    const/4 v0, -0x1

    sput v0, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->d:I

    .line 144
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->e:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v0, p1

    goto :goto_0
.end method

.method public final b()[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 49
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-interface {v0}, Lcom/alipay/security/mobile/auth/IAuthenticator;->getAuthInfo()Lcom/alipay/security/mobile/auth/AuthInfo;

    move-result-object v1

    .line 50
    if-nez v1, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-interface {v0}, Lcom/alipay/security/mobile/auth/IAuthenticator;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 54
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/security/mobile/auth/AuthInfo;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    .line 55
    invoke-virtual {v1}, Lcom/alipay/security/mobile/auth/AuthInfo;->getVendor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    const/4 v3, 0x2

    invoke-virtual {v1}, Lcom/alipay/security/mobile/auth/AuthInfo;->getPhoneModle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 56
    invoke-virtual {v1}, Lcom/alipay/security/mobile/auth/AuthInfo;->getProtocolVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    .line 57
    invoke-virtual {v1}, Lcom/alipay/security/mobile/auth/AuthInfo;->getProtocolType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    .line 58
    invoke-virtual {v1}, Lcom/alipay/security/mobile/auth/AuthInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x6

    aput-object v2, v0, v1

    .line 60
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    .line 61
    const-string/jumbo v2, "msp"

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "PhoneCashierHardwarePayServiceImpl Type:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 63
    const-string/jumbo v4, " Vendor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ProtocolVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 64
    aget-object v4, v0, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ProtocolType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 65
    const-string/jumbo v4, " DownloadUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " deviceId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 66
    const/4 v4, 0x6

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-interface {v0}, Lcom/alipay/security/mobile/auth/IAuthenticator;->registedFingerPrintNumber()I

    move-result v0

    return v0
.end method
