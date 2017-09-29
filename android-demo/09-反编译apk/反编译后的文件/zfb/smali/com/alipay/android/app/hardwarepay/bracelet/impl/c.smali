.class final Lcom/alipay/android/app/hardwarepay/bracelet/impl/c;
.super Ljava/lang/Object;
.source "BraceletPayHelperImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

.field private final synthetic d:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;Landroid/content/Context;Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/c;->a:Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/c;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/c;->c:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    iput-object p4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/c;->d:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/c;->a:Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->a(Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/c;->b:Landroid/content/Context;

    new-instance v2, Lcom/alipay/android/app/hardwarepay/bracelet/impl/d;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/impl/d;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/impl/c;)V

    .line 168
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->z()Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/security/mobile/auth/IAuthenticator;->init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/c;->a:Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->a(Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/c;->c:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/c;->d:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-interface {v0, v1, v2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    .line 170
    return-void
.end method
