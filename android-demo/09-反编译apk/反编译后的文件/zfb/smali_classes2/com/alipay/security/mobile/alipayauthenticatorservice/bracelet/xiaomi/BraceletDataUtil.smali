.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;
.super Ljava/lang/Object;
.source "BraceletDataUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildResult([B)Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 95
    if-nez p0, :cond_0

    .line 96
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;-><init>(I[B)V

    .line 109
    :goto_0
    return-object v0

    .line 98
    :cond_0
    new-array v1, v4, [B

    .line 99
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    invoke-direct {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;-><init>()V

    .line 100
    array-length v2, p0

    const/16 v3, 0x8

    if-lt v2, v3, :cond_1

    .line 101
    invoke-static {p0, v4, v4, v1, v5}, Lcom/alipay/fido/message/ByteUtils;->copy([BII[BI)V

    .line 102
    invoke-static {v1}, Lcom/alipay/fido/message/ByteUtils;->toInt([B)I

    move-result v1

    .line 103
    array-length v2, p0

    add-int/lit8 v2, v2, -0x4

    add-int/lit8 v2, v2, -0x4

    sub-int/2addr v2, v1

    new-array v2, v2, [B

    .line 104
    add-int/lit8 v3, v1, 0x8

    array-length v4, p0

    add-int/lit8 v4, v4, -0x4

    add-int/lit8 v4, v4, -0x4

    sub-int v1, v4, v1

    invoke-static {p0, v3, v1, v2, v5}, Lcom/alipay/fido/message/ByteUtils;->copy([BII[BI)V

    .line 106
    invoke-virtual {v0, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->setData([B)V

    .line 108
    :cond_1
    invoke-static {p0}, Lcom/alipay/fido/message/ByteUtils;->toInt([B)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->setStatus(I)V

    goto :goto_0
.end method

.method public static constructResultBundle(II)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->constructResultBundle(IILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static constructResultBundle(IILjava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    const-string/jumbo v1, "KEY_OPERATIONT_TYPE"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    const-string/jumbo v1, "KEY_RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const-string/jumbo v1, "KEY_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    return-object v0
.end method

.method public static getKeyFromResult([B)[B
    .locals 5

    .prologue
    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v2, 0x4

    .line 114
    if-nez p0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    .line 118
    :cond_0
    new-array v1, v2, [B

    .line 119
    new-array v0, v3, [B

    .line 121
    invoke-static {p0, v2, v2, v1, v4}, Lcom/alipay/fido/message/ByteUtils;->copy([BII[BI)V

    .line 122
    invoke-static {v1}, Lcom/alipay/fido/message/ByteUtils;->toInt([B)I

    move-result v1

    .line 124
    if-eq v1, v3, :cond_1

    .line 125
    const-string/jumbo v2, "bracelet"

    const-string/jumbo v3, "length is not 16"

    invoke-static {v2, v3}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_1
    const/16 v2, 0x8

    invoke-static {p0, v2, v1, v0, v4}, Lcom/alipay/fido/message/ByteUtils;->copy([BII[BI)V

    goto :goto_0
.end method

.method public static isSuccess(Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 144
    if-eqz p0, :cond_0

    const-string/jumbo v0, "KEY_RESULT"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 146
    const/4 v0, 0x1

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeAuthResponse(Lcom/alipay/fido/message/OperationHeader;Ljava/lang/String;Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 38
    new-instance v0, Lcom/alipay/fido/message/AuthenticationResponse;

    invoke-direct {v0}, Lcom/alipay/fido/message/AuthenticationResponse;-><init>()V

    .line 39
    invoke-virtual {v0, p0}, Lcom/alipay/fido/message/AuthenticationResponse;->setHeader(Lcom/alipay/fido/message/OperationHeader;)V

    .line 40
    invoke-virtual {v0, p1}, Lcom/alipay/fido/message/AuthenticationResponse;->setFcParams(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getData()[B

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [B

    .line 42
    invoke-virtual {p2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getData()[B

    move-result-object v2

    invoke-virtual {p2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getData()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v4, v3, v1, v4}, Lcom/alipay/fido/message/ByteUtils;->copy([BII[BI)V

    .line 43
    new-instance v2, Lcom/alipay/fido/message/SignAssertion;

    invoke-direct {v2}, Lcom/alipay/fido/message/SignAssertion;-><init>()V

    .line 44
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/alipay/fido/message/SignAssertion;->setAaid(Ljava/lang/String;)V

    .line 45
    const-string/jumbo v3, "UAFV1ALI"

    invoke-virtual {v2, v3}, Lcom/alipay/fido/message/SignAssertion;->setScheme(Ljava/lang/String;)V

    .line 46
    const/16 v3, 0x8

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/fido/message/SignAssertion;->setSignedData(Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alipay/fido/message/SignAssertion;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/alipay/fido/message/AuthenticationResponse;->setAssertions([Lcom/alipay/fido/message/SignAssertion;)V

    .line 50
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 51
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    return-object v0
.end method

.method public static makeRegResponse(Lcom/alipay/fido/message/OperationHeader;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 64
    new-instance v0, Lcom/alipay/fido/message/RegisterResponse;

    invoke-direct {v0}, Lcom/alipay/fido/message/RegisterResponse;-><init>()V

    .line 65
    invoke-virtual {v0, p0}, Lcom/alipay/fido/message/RegisterResponse;->setHeader(Lcom/alipay/fido/message/OperationHeader;)V

    .line 66
    invoke-virtual {v0, p1}, Lcom/alipay/fido/message/RegisterResponse;->setFcParams(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getData()[B

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [B

    .line 69
    invoke-virtual {p3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getData()[B

    move-result-object v2

    invoke-virtual {p3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getData()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v4, v3, v1, v4}, Lcom/alipay/fido/message/ByteUtils;->copy([BII[BI)V

    .line 71
    new-instance v2, Lcom/alipay/fido/message/RegistrationAssertion;

    invoke-direct {v2}, Lcom/alipay/fido/message/RegistrationAssertion;-><init>()V

    .line 72
    invoke-virtual {v2, p2}, Lcom/alipay/fido/message/RegistrationAssertion;->setAaid(Ljava/lang/String;)V

    .line 73
    const-string/jumbo v3, "UAFV1ALI"

    invoke-virtual {v2, v3}, Lcom/alipay/fido/message/RegistrationAssertion;->setScheme(Ljava/lang/String;)V

    .line 74
    const/16 v3, 0x8

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/fido/message/RegistrationAssertion;->setKrd(Ljava/lang/String;)V

    .line 82
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alipay/fido/message/RegistrationAssertion;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/alipay/fido/message/RegisterResponse;->setAssertions([Lcom/alipay/fido/message/RegistrationAssertion;)V

    .line 84
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 85
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    return-object v0
.end method
