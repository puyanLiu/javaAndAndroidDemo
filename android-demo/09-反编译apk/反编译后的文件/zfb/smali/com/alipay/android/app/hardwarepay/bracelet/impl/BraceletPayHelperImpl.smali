.class public Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;
.super Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;
.source "BraceletPayHelperImpl.java"


# instance fields
.field private a:Lcom/alipay/security/mobile/auth/IAuthenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;)Lcom/alipay/security/mobile/auth/IAuthenticator;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILjava/lang/String;)I
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    invoke-static {v0, p2}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->create(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 43
    new-instance v2, Lcom/alipay/android/app/hardwarepay/bracelet/impl/a;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/impl/a;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;)V

    .line 42
    invoke-interface {v0, v1, v2, p3}, Lcom/alipay/security/mobile/auth/IAuthenticator;->init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I

    move-result v0

    .line 48
    return v0
.end method

.method public final a(IILjava/lang/String;Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 102
    new-instance v1, Lcom/alipay/android/app/hardwarepay/bracelet/impl/b;

    invoke-direct {v1, p0, p4}, Lcom/alipay/android/app/hardwarepay/bracelet/impl/b;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;Landroid/content/Context;)V

    .line 144
    const/4 v0, 0x0

    .line 146
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "[extraPara:"

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 147
    const-string/jumbo v0, "[extraPara:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0xb

    .line 148
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 147
    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 149
    const/4 v2, 0x0

    const-string/jumbo v3, "[extraPara:"

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 151
    :cond_0
    new-instance v2, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-direct {v2, p1, p2, p3}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;-><init>(IILjava/lang/String;)V

    .line 153
    invoke-virtual {v2, v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->setExtraParams(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    .line 155
    const-string/jumbo v4, "msp"

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[BraceletPayServiceImpl]\u624b\u73af\u652f\u4ed8\u8fde\u63a5type:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 157
    const-string/jumbo v6, " version:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "   \u6570\u636e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 158
    const-string/jumbo v6, " extraPara:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/alipay/android/app/hardwarepay/bracelet/impl/c;

    invoke-direct {v3, p0, p4, v2, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/impl/c;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;Landroid/content/Context;Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 171
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 172
    return-void
.end method

.method public final a(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 53
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 54
    const-string/jumbo v1, "msp"

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u94b1\u5305-BraceletPayHelperImpl-\u56de\u8c03command\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 56
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;

    if-nez v0, :cond_3

    .line 60
    :cond_0
    sget-object v0, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->c:Ljava/lang/Object;

    .line 62
    :goto_0
    if-nez v0, :cond_1

    .line 63
    sput v4, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->b:I

    .line 74
    :goto_1
    return-void

    .line 67
    :cond_1
    instance-of v1, v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;

    if-eqz v1, :cond_2

    .line 68
    check-cast v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;

    .line 69
    invoke-interface {v0, p2, p3}, Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;->callBack(ILjava/lang/String;)V

    .line 71
    :cond_2
    sput v4, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->b:I

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->c:Ljava/lang/Object;

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

    .line 78
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-interface {v0}, Lcom/alipay/security/mobile/auth/IAuthenticator;->getAuthInfo()Lcom/alipay/security/mobile/auth/AuthInfo;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_0

    .line 80
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/security/mobile/auth/AuthInfo;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 81
    invoke-virtual {v1}, Lcom/alipay/security/mobile/auth/AuthInfo;->getVendor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    const/4 v2, 0x2

    .line 82
    invoke-virtual {v1}, Lcom/alipay/security/mobile/auth/AuthInfo;->getPhoneModle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 83
    invoke-virtual {v1}, Lcom/alipay/security/mobile/auth/AuthInfo;->getProtocolVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    .line 84
    invoke-virtual {v1}, Lcom/alipay/security/mobile/auth/AuthInfo;->getProtocolType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    .line 85
    invoke-virtual {v1}, Lcom/alipay/security/mobile/auth/AuthInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-interface {v2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    .line 87
    const-string/jumbo v2, "msp"

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u624b\u73afauthinfo[AUTH_TYPE:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "][VENDOR:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 89
    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "][PROTOCOL_VERSION:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 90
    aget-object v4, v0, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "][PROTOCOL_TYPE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 91
    aget-object v4, v0, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "][DEVICE_ID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 92
    const/4 v4, 0x6

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "][BL_DOWNLOAD_URL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 93
    aget-object v4, v0, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
