.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/message/MessageCenter;
.super Ljava/lang/Object;
.source "MessageCenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendResponseMessage(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 18
    invoke-static {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->getAuthenticatorCallback()Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    move-result-object v0

    .line 20
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 21
    invoke-virtual {v1, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 22
    if-eqz v0, :cond_0

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "callback: result is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "KEY_RESULT"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->debug(Ljava/lang/String;)V

    .line 25
    invoke-static {v1}, Lcom/alipay/security/mobile/auth/AuthenticatorResponseUtil;->getAuthenticatorResponse(Landroid/os/Message;)Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/security/mobile/auth/AuthenticatorCallback;->callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V

    .line 27
    :cond_0
    return-void
.end method
