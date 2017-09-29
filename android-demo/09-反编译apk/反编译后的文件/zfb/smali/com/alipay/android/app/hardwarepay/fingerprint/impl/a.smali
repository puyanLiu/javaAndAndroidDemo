.class final Lcom/alipay/android/app/hardwarepay/fingerprint/impl/a;
.super Ljava/lang/Object;
.source "FingerprintPayHelperImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:I

.field private final synthetic d:I

.field private final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;Landroid/content/Context;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/a;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/a;->b:Landroid/content/Context;

    iput p3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/a;->c:I

    iput p4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/a;->d:I

    iput-object p5, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/a;->e:Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/a;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a(Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/a;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;

    invoke-static {v2}, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->b(Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;)Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    move-result-object v2

    .line 111
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->z()Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/security/mobile/auth/IAuthenticator;->init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 113
    const-string/jumbo v1, "msp"

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u94b1\u5305PhoneCashierHardwarePayServiceImpl process type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    iget v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/a;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/a;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/a;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a(Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v0

    new-instance v1, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    iget v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/a;->c:I

    iget v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/a;->d:I

    .line 118
    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/a;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;-><init>(IILjava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/a;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;

    invoke-static {v2}, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->b(Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;)Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    move-result-object v2

    .line 117
    invoke-interface {v0, v1, v2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    .line 119
    return-void
.end method
