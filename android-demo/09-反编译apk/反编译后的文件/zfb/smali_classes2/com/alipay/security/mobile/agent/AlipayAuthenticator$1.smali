.class Lcom/alipay/security/mobile/agent/AlipayAuthenticator$1;
.super Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener$Stub;
.source "AlipayAuthenticator.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/agent/AlipayAuthenticator;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/agent/AlipayAuthenticator;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$1;->this$0:Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    invoke-direct {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Landroid/os/Bundle;)I
    .locals 2

    .prologue
    .line 84
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 85
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 86
    iget-object v1, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$1;->this$0:Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    invoke-static {v1}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->access$000(Lcom/alipay/security/mobile/agent/AlipayAuthenticator;)Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    move-result-object v1

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorResponseUtil;->getAuthenticatorResponse(Landroid/os/Message;)Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/security/mobile/auth/AuthenticatorCallback;->callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V

    .line 89
    const/4 v0, 0x0

    return v0
.end method
