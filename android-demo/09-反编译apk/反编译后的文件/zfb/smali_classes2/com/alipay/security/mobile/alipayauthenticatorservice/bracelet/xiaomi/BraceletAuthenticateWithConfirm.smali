.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;
.super Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuth;
.source "BraceletAuthenticateWithConfirm.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuth;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/bluetooth/BluetoothDevice;)V

    .line 44
    return-void
.end method

.method private sendMessageToTee([B)Landroid/os/Bundle;
    .locals 17

    .prologue
    .line 107
    :try_start_0
    new-instance v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;-><init>(Landroid/content/Context;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;->mMessage:Landroid/os/Bundle;

    const-string/jumbo v3, "KEY_MESSAGE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/alipay/fido/message/AuthenticationRequest;

    invoke-virtual {v3, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/fido/message/AuthenticationRequest;

    .line 114
    invoke-virtual {v1}, Lcom/alipay/fido/message/AuthenticationRequest;->getAuthData()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 116
    new-instance v4, Lcom/alipay/fido/message/FinalChallengeParams;

    invoke-direct {v4}, Lcom/alipay/fido/message/FinalChallengeParams;-><init>()V

    .line 117
    invoke-virtual {v1}, Lcom/alipay/fido/message/AuthenticationRequest;->getHeader()Lcom/alipay/fido/message/OperationHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/fido/message/OperationHeader;->getAppID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/fido/message/FinalChallengeParams;->setAppID(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Lcom/alipay/fido/message/AuthenticationRequest;->getChallenge()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/fido/message/FinalChallengeParams;->setChallenge(Ljava/lang/String;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;->mFacetId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/fido/message/FinalChallengeParams;->setFacetID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    :try_start_1
    invoke-static {v4}, Lcom/alipay/security/mobile/util/MessageUtils;->toFinalChallenge(Lcom/alipay/fido/message/FinalChallengeParams;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 129
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 131
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 132
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 133
    invoke-virtual {v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->getDeviceIDByte()[B

    move-result-object v2

    .line 135
    array-length v7, v3

    .line 136
    array-length v8, v5

    .line 137
    array-length v9, v6

    .line 138
    array-length v10, v2

    .line 139
    move-object/from16 v0, p1

    array-length v11, v0

    .line 141
    add-int/lit8 v12, v7, 0x8

    add-int/lit8 v12, v12, 0x4

    add-int/2addr v12, v8

    add-int/lit8 v12, v12, 0x4

    add-int/2addr v12, v9

    add-int/lit8 v12, v12, 0x4

    add-int/2addr v12, v11

    add-int/lit8 v12, v12, 0x4

    add-int/2addr v12, v10

    new-array v12, v12, [B

    .line 144
    sget v13, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Commands;->COMMAND_BRACELET_AUTH:I

    invoke-static {v13}, Lcom/alipay/fido/message/ByteUtils;->toBytes(I)[B

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-static {v13, v14, v12, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    invoke-static {v7}, Lcom/alipay/fido/message/ByteUtils;->toBytes(I)[B

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-static {v13, v14, v12, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    const/4 v13, 0x0

    const/16 v14, 0x8

    invoke-static {v3, v13, v12, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    add-int/lit8 v3, v7, 0x8

    .line 158
    invoke-static {v8}, Lcom/alipay/fido/message/ByteUtils;->toBytes(I)[B

    move-result-object v7

    const/4 v13, 0x0

    const/4 v14, 0x4

    invoke-static {v7, v13, v12, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    add-int/lit8 v3, v3, 0x4

    .line 160
    const/4 v7, 0x0

    invoke-static {v5, v7, v12, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    add-int/2addr v3, v8

    .line 164
    invoke-static {v9}, Lcom/alipay/fido/message/ByteUtils;->toBytes(I)[B

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-static {v5, v7, v12, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    add-int/lit8 v3, v3, 0x4

    .line 166
    const/4 v5, 0x0

    invoke-static {v6, v5, v12, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    add-int/2addr v3, v9

    .line 170
    invoke-static {v10}, Lcom/alipay/fido/message/ByteUtils;->toBytes(I)[B

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {v5, v6, v12, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    add-int/lit8 v3, v3, 0x4

    .line 172
    const/4 v5, 0x0

    invoke-static {v2, v5, v12, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    add-int v2, v3, v10

    .line 176
    invoke-static {v11}, Lcom/alipay/fido/message/ByteUtils;->toBytes(I)[B

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v3, v5, v12, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    add-int/lit8 v2, v2, 0x4

    .line 178
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v12, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    new-instance v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;-><init>(Landroid/content/Context;)V

    .line 183
    invoke-virtual {v2, v12}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->invokeCmd([B)[B

    move-result-object v2

    .line 186
    invoke-static {v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->buildResult([B)Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    move-result-object v2

    .line 191
    invoke-virtual {v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getStatus()I

    move-result v3

    if-nez v3, :cond_0

    .line 193
    new-instance v3, Lcom/alipay/fido/message/OperationHeader;

    invoke-direct {v3}, Lcom/alipay/fido/message/OperationHeader;-><init>()V

    .line 194
    invoke-virtual {v1}, Lcom/alipay/fido/message/AuthenticationRequest;->getHeader()Lcom/alipay/fido/message/OperationHeader;

    move-result-object v1

    .line 195
    invoke-static {v1, v4, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->makeAuthResponse(Lcom/alipay/fido/message/OperationHeader;Ljava/lang/String;Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;)Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;->getReponseType()I

    move-result v2

    const/16 v3, 0x64

    invoke-static {v2, v3, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->constructResultBundle(IILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 209
    :goto_0
    return-object v1

    .line 124
    :catch_0
    move-exception v1

    .line 125
    sget-object v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;->getReponseType()I

    move-result v1

    const/16 v2, 0x65

    invoke-static {v1, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->constructResultBundle(II)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    .line 202
    :cond_0
    sget-object v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "bracelet auth TA onResult not 0, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getStatusString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;->getReponseType()I

    move-result v1

    const/16 v2, 0x65

    invoke-static {v1, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->constructResultBundle(II)Landroid/os/Bundle;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_0

    .line 207
    :catch_1
    move-exception v1

    .line 208
    sget-object v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;->getReponseType()I

    move-result v1

    const/16 v2, 0x65

    invoke-static {v1, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->constructResultBundle(II)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected doTransaction()Landroid/os/Bundle;
    .locals 4

    .prologue
    const v3, 0x20001

    .line 49
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;->mMessage:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/alipay/fido/message/AuthenticationRequest;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/fido/message/AuthenticationRequest;

    .line 52
    invoke-virtual {v0}, Lcom/alipay/fido/message/AuthenticationRequest;->getChallenge()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/alipay/security/mobile/util/DigestUtil;->MD5(Ljava/lang/String;)[B

    move-result-object v1

    .line 56
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;->sendStatusChangeBroadcast(I)V

    .line 58
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->getPeripheral()Lcom/alipay/security/mobile/module/bracelet/lib/profile/IAliAuthProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/profile/IAliAuthProfile;->getAuthService()Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;->authenticate(I[B)[B

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->getPeripheral()Lcom/alipay/security/mobile/module/bracelet/lib/profile/IAliAuthProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/profile/IAliAuthProfile;->getAuthService()Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;->authenticate(I[B)[B

    move-result-object v0

    .line 64
    :cond_0
    if-nez v0, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;->disconnectBracelet()V

    .line 71
    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;->initialPeripheral()V

    .line 72
    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;->connectToBracelet()Z

    .line 73
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->getPeripheral()Lcom/alipay/security/mobile/module/bracelet/lib/profile/IAliAuthProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/profile/IAliAuthProfile;->getAuthService()Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;->authenticate(I[B)[B

    move-result-object v0

    .line 75
    :cond_1
    if-nez v0, :cond_3

    .line 80
    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;->getReponseType()I

    move-result v0

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->constructResultBundle(II)Landroid/os/Bundle;

    move-result-object v0

    .line 102
    :cond_2
    :goto_0
    return-object v0

    .line 85
    :cond_3
    invoke-direct {p0, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;->sendMessageToTee([B)Landroid/os/Bundle;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->isSuccess(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;->sendStatusChangeBroadcast(I)V

    goto :goto_0
.end method

.method protected getReponseType()I
    .locals 1

    .prologue
    .line 216
    const/16 v0, 0x9

    return v0
.end method
