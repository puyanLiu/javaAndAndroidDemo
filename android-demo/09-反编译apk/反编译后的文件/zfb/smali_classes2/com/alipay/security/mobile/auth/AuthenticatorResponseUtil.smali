.class public Lcom/alipay/security/mobile/auth/AuthenticatorResponseUtil;
.super Ljava/lang/Object;
.source "AuthenticatorResponseUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthenticatorResponse(Landroid/os/Message;)Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;

    invoke-direct {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;-><init>()V

    .line 12
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "KEY_OPERATIONT_TYPE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->setType(I)V

    .line 14
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "KEY_RESULT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->setResult(I)V

    .line 15
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "KEY_CHECKING_POLICY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->setCheckPolicyOnly(Z)V

    .line 17
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "KEY_REGISTERED_TOKENS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->setResgistedTokens(Ljava/util/List;)V

    .line 19
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "KEY_RESULT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "KEY_MESSAGE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->setResultMessage(Ljava/lang/String;)V

    .line 26
    :goto_0
    return-object v0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "KEY_MESSAGE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->setData(Ljava/lang/String;)V

    goto :goto_0
.end method
