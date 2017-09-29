.class public Lcom/alipay/security/mobile/fingerprint/samsung/DeRegisterOperation;
.super Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;
.source "DeRegisterOperation.java"


# direct methods
.method public constructor <init>(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;-><init>(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getResult(Lcom/fido/android/framework/agent/Fido$Response;)Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;
    .locals 4

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;

    sget-object v1, Lcom/fido/android/framework/agent/api/ResultType;->FAILURE:Lcom/fido/android/framework/agent/api/ResultType;

    invoke-direct {v0, v1}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;-><init>(Lcom/fido/android/framework/agent/api/ResultType;)V

    .line 53
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
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 29
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/DeRegisterOperation;->mAuthenticatorMessage:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getData()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/security/mobile/fingerprint/samsung/DeRegisterOperation;->mAuthenticatorMessage:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-virtual {v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->isCheckPolicyOnly()Z

    move-result v1

    invoke-super {p0, v0, v1, v4}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;->sendOstpMessage(Ljava/lang/String;ZLjava/lang/String;)Lcom/fido/android/framework/agent/Fido$Response;

    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Lcom/alipay/security/mobile/fingerprint/samsung/DeRegisterOperation;->getResult(Lcom/fido/android/framework/agent/Fido$Response;)Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/alipay/security/mobile/fingerprint/samsung/DeRegisterOperation;->mAuthenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    const/16 v2, 0xa

    invoke-virtual {v0}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->getResultStatus()Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils;->getResult(Lcom/fido/android/framework/agent/api/ResultType;)I

    move-result v0

    iget-object v3, p0, Lcom/alipay/security/mobile/fingerprint/samsung/DeRegisterOperation;->mAuthenticatorMessage:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-virtual {v3}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->isCheckPolicyOnly()Z

    move-result v3

    invoke-static {v1, v2, v0, v3, v4}, Lcom/alipay/security/mobile/auth/AuthenticatorUtils;->sendAuthenticatorMessage(Lcom/alipay/security/mobile/auth/AuthenticatorCallback;IIZLjava/lang/String;)V

    .line 39
    return-void
.end method
