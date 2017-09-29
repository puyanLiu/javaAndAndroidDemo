.class Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator$2;
.super Ljava/lang/Object;
.source "BraceletAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;

.field final synthetic val$authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

.field final synthetic val$request:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator$2;->this$0:Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;

    iput-object p2, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator$2;->val$request:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    iput-object p3, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator$2;->val$authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 121
    invoke-static {}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->Instance()Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator$2;->val$request:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    iget-object v2, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator$2;->val$authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    iget-object v3, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator$2;->this$0:Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;

    invoke-static {v3}, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->access$200(Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->processAsync(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;I)V

    .line 123
    return-void
.end method
