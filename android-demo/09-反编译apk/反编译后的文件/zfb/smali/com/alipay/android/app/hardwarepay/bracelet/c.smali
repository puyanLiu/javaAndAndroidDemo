.class final Lcom/alipay/android/app/hardwarepay/bracelet/c;
.super Ljava/lang/Object;
.source "BraceletOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

.field private final synthetic d:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;Landroid/content/Context;Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->c:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    iput-object p4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->d:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;->a(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->z()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/security/mobile/auth/IAuthenticator;->init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;->a(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->c:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->d:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-interface {v0, v1, v2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    .line 116
    return-void
.end method
