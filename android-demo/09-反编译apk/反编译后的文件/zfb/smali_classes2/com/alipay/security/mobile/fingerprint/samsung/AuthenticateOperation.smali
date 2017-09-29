.class public Lcom/alipay/security/mobile/fingerprint/samsung/AuthenticateOperation;
.super Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;
.source "AuthenticateOperation.java"


# direct methods
.method public constructor <init>(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;-><init>(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getResult(Lcom/fido/android/framework/agent/Fido$Response;)Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;
    .locals 4

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;

    sget-object v1, Lcom/fido/android/framework/agent/api/ResultType;->FAILURE:Lcom/fido/android/framework/agent/api/ResultType;

    invoke-direct {v0, v1}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;-><init>(Lcom/fido/android/framework/agent/api/ResultType;)V

    .line 85
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;

    invoke-virtual {p1}, Lcom/fido/android/framework/agent/Fido$Response;->status()Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fido/android/framework/agent/Fido$Response;->getResponseParams()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;-><init>(Lcom/fido/android/framework/agent/api/ResultType;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    const/16 v1, 0x9

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mAuthenticatorMessage.isCheckPolicyOnly() before:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/security/mobile/fingerprint/samsung/AuthenticateOperation;->mAuthenticatorMessage:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-virtual {v2}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->isCheckPolicyOnly()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/AuthenticateOperation;->mAuthenticatorMessage:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getData()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/security/mobile/fingerprint/samsung/AuthenticateOperation;->mAuthenticatorMessage:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-virtual {v2}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->isCheckPolicyOnly()Z

    move-result v2

    const/4 v3, 0x0

    invoke-super {p0, v0, v2, v3}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;->sendOstpMessage(Ljava/lang/String;ZLjava/lang/String;)Lcom/fido/android/framework/agent/Fido$Response;

    move-result-object v4

    .line 38
    invoke-virtual {p0, v4}, Lcom/alipay/security/mobile/fingerprint/samsung/AuthenticateOperation;->getResult(Lcom/fido/android/framework/agent/Fido$Response;)Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;

    move-result-object v6

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "AuthenticateOperation result == null:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v6, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    if-eqz v6, :cond_0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AuthenticateOperation getResultStatus:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->getResultStatus()Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mAuthenticatorMessage.isCheckPolicyOnly():"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/security/mobile/fingerprint/samsung/AuthenticateOperation;->mAuthenticatorMessage:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-virtual {v2}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->isCheckPolicyOnly()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/AuthenticateOperation;->mAuthenticatorMessage:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->isCheckPolicyOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/AuthenticateOperation;->mAuthenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-virtual {v6}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->getResultStatus()Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils;->getResult(Lcom/fido/android/framework/agent/api/ResultType;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/security/mobile/fingerprint/samsung/AuthenticateOperation;->mAuthenticatorMessage:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-virtual {v3}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->isCheckPolicyOnly()Z

    move-result v3

    invoke-virtual {v6}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->getMfacErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->getSyncedRegTokens()Ljava/util/List;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/alipay/security/mobile/auth/AuthenticatorUtils;->sendAuthenticatorMessage(Lcom/alipay/security/mobile/auth/AuthenticatorCallback;IIZLjava/lang/String;Ljava/util/List;)V

    .line 70
    :goto_1
    return-void

    .line 40
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {v6}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->getResultStatus()Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v0

    sget-object v2, Lcom/fido/android/framework/agent/api/ResultType;->SUCCESS:Lcom/fido/android/framework/agent/api/ResultType;

    if-ne v0, v2, :cond_3

    .line 57
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-virtual {v4}, Lcom/fido/android/framework/agent/Fido$Response;->message()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "TokenID"

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils;->getItemValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/AuthenticateOperation;->mAuthenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-virtual {v6}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->getResultStatus()Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils;->getResult(Lcom/fido/android/framework/agent/api/ResultType;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/security/mobile/fingerprint/samsung/AuthenticateOperation;->mAuthenticatorMessage:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-virtual {v3}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->isCheckPolicyOnly()Z

    move-result v3

    invoke-virtual {v4}, Lcom/fido/android/framework/agent/Fido$Response;->message()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/alipay/security/mobile/auth/AuthenticatorUtils;->sendAuthenticatorMessage(Lcom/alipay/security/mobile/auth/AuthenticatorCallback;IIZLjava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/AuthenticateOperation;->mAuthenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-virtual {v6}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->getResultStatus()Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils;->getResult(Lcom/fido/android/framework/agent/api/ResultType;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/security/mobile/fingerprint/samsung/AuthenticateOperation;->mAuthenticatorMessage:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-virtual {v3}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->isCheckPolicyOnly()Z

    move-result v3

    invoke-virtual {v6}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->getMfacErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->getSyncedRegTokens()Ljava/util/List;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/alipay/security/mobile/auth/AuthenticatorUtils;->sendAuthenticatorMessage(Lcom/alipay/security/mobile/auth/AuthenticatorCallback;IIZLjava/lang/String;Ljava/util/List;)V

    goto :goto_1
.end method
