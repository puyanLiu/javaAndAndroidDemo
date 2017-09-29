.class public Lcom/alipay/security/mobile/fingerprint/samsung/RegisterOperation;
.super Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;
.source "RegisterOperation.java"


# direct methods
.method public constructor <init>(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;-><init>(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getResult(Lcom/fido/android/framework/agent/Fido$Response;)Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;
    .locals 4

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    new-instance v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;

    sget-object v1, Lcom/fido/android/framework/agent/api/ResultType;->FAILURE:Lcom/fido/android/framework/agent/api/ResultType;

    invoke-direct {v0, v1}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;-><init>(Lcom/fido/android/framework/agent/api/ResultType;)V

    .line 75
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;

    invoke-virtual {p1}, Lcom/fido/android/framework/agent/Fido$Response;->status()Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fido/android/framework/agent/Fido$Response;->getResponseParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fido/android/framework/agent/Fido$Response;->syncedRegTokens()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;-><init>(Lcom/fido/android/framework/agent/api/ResultType;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    const/16 v1, 0x8

    .line 32
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/RegisterOperation;->mAuthenticatorMessage:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getData()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/security/mobile/fingerprint/samsung/RegisterOperation;->mAuthenticatorMessage:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-virtual {v2}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->isCheckPolicyOnly()Z

    move-result v2

    const/4 v3, 0x0

    invoke-super {p0, v0, v2, v3}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;->sendOstpMessage(Ljava/lang/String;ZLjava/lang/String;)Lcom/fido/android/framework/agent/Fido$Response;

    move-result-object v4

    .line 35
    invoke-virtual {p0, v4}, Lcom/alipay/security/mobile/fingerprint/samsung/RegisterOperation;->getResult(Lcom/fido/android/framework/agent/Fido$Response;)Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;

    move-result-object v6

    .line 37
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/RegisterOperation;->mAuthenticatorMessage:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->isCheckPolicyOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/RegisterOperation;->mAuthenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-virtual {v6}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->getResultStatus()Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils;->getResult(Lcom/fido/android/framework/agent/api/ResultType;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/security/mobile/fingerprint/samsung/RegisterOperation;->mAuthenticatorMessage:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-virtual {v3}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->isCheckPolicyOnly()Z

    move-result v3

    invoke-virtual {v6}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->getMfacErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->getSyncedRegTokens()Ljava/util/List;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/alipay/security/mobile/auth/AuthenticatorUtils;->sendAuthenticatorMessage(Lcom/alipay/security/mobile/auth/AuthenticatorCallback;IIZLjava/lang/String;Ljava/util/List;)V

    .line 60
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {v6}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->getResultStatus()Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v0

    sget-object v2, Lcom/fido/android/framework/agent/api/ResultType;->SUCCESS:Lcom/fido/android/framework/agent/api/ResultType;

    if-ne v0, v2, :cond_1

    .line 47
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-virtual {v4}, Lcom/fido/android/framework/agent/Fido$Response;->message()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "TokenID"

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils;->getItemValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/RegisterOperation;->mAuthenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-virtual {v6}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->getResultStatus()Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils;->getResult(Lcom/fido/android/framework/agent/api/ResultType;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/security/mobile/fingerprint/samsung/RegisterOperation;->mAuthenticatorMessage:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-virtual {v3}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->isCheckPolicyOnly()Z

    move-result v3

    invoke-virtual {v4}, Lcom/fido/android/framework/agent/Fido$Response;->message()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/alipay/security/mobile/auth/AuthenticatorUtils;->sendAuthenticatorMessage(Lcom/alipay/security/mobile/auth/AuthenticatorCallback;IIZLjava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/RegisterOperation;->mAuthenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-virtual {v6}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->getResultStatus()Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils;->getResult(Lcom/fido/android/framework/agent/api/ResultType;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/security/mobile/fingerprint/samsung/RegisterOperation;->mAuthenticatorMessage:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-virtual {v3}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->isCheckPolicyOnly()Z

    move-result v3

    invoke-virtual {v6}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->getMfacErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->getSyncedRegTokens()Ljava/util/List;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/alipay/security/mobile/auth/AuthenticatorUtils;->sendAuthenticatorMessage(Lcom/alipay/security/mobile/auth/AuthenticatorCallback;IIZLjava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method
