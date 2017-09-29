.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;
.super Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuth;
.source "BraceletAuthenticateWithUpdate.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private key:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuth;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/bluetooth/BluetoothDevice;)V

    .line 47
    return-void
.end method

.method private sendMessageToTee([B)Landroid/os/Bundle;
    .locals 22

    .prologue
    .line 103
    :try_start_0
    new-instance v6, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->mContext:Landroid/content/Context;

    invoke-direct {v6, v5}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;-><init>(Landroid/content/Context;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->mMessage:Landroid/os/Bundle;

    const-string/jumbo v7, "KEY_MESSAGE"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    const-class v8, Lcom/alipay/fido/message/AuthenticationRequest;

    invoke-virtual {v7, v5, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/fido/message/AuthenticationRequest;

    .line 110
    invoke-virtual {v5}, Lcom/alipay/fido/message/AuthenticationRequest;->getAuthData()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    invoke-static {v7, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 112
    new-instance v8, Lcom/alipay/fido/message/FinalChallengeParams;

    invoke-direct {v8}, Lcom/alipay/fido/message/FinalChallengeParams;-><init>()V

    .line 113
    invoke-virtual {v5}, Lcom/alipay/fido/message/AuthenticationRequest;->getHeader()Lcom/alipay/fido/message/OperationHeader;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/fido/message/OperationHeader;->getAppID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alipay/fido/message/FinalChallengeParams;->setAppID(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v5}, Lcom/alipay/fido/message/AuthenticationRequest;->getChallenge()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alipay/fido/message/FinalChallengeParams;->setChallenge(Ljava/lang/String;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->mFacetId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/alipay/fido/message/FinalChallengeParams;->setFacetID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    :try_start_1
    invoke-static {v8}, Lcom/alipay/security/mobile/util/MessageUtils;->toFinalChallenge(Lcom/alipay/fido/message/FinalChallengeParams;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 125
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 127
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    .line 128
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 129
    invoke-virtual {v6}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->getDeviceIDByte()[B

    move-result-object v11

    .line 131
    array-length v12, v7

    .line 132
    array-length v13, v9

    .line 133
    array-length v14, v10

    .line 134
    array-length v15, v11

    .line 135
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    .line 137
    add-int/lit8 v17, v12, 0x8

    add-int/lit8 v17, v17, 0x4

    add-int v17, v17, v13

    add-int/lit8 v17, v17, 0x4

    add-int v17, v17, v14

    add-int/lit8 v17, v17, 0x4

    add-int v17, v17, v15

    add-int/lit8 v17, v17, 0x4

    add-int v17, v17, v16

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 140
    sget v18, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Commands;->COMMAND_BRACELET_AUTH_UPDATE:I

    invoke-static/range {v18 .. v18}, Lcom/alipay/fido/message/ByteUtils;->toBytes(I)[B

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    invoke-static {v12}, Lcom/alipay/fido/message/ByteUtils;->toBytes(I)[B

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    const/16 v18, 0x0

    const/16 v19, 0x8

    move/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v7, v0, v1, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    add-int/lit8 v7, v12, 0x8

    .line 154
    invoke-static {v13}, Lcom/alipay/fido/message/ByteUtils;->toBytes(I)[B

    move-result-object v12

    const/16 v18, 0x0

    const/16 v19, 0x4

    move/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v12, v0, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    add-int/lit8 v7, v7, 0x4

    .line 156
    const/4 v12, 0x0

    move-object/from16 v0, v17

    invoke-static {v9, v12, v0, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    add-int/2addr v7, v13

    .line 160
    invoke-static {v14}, Lcom/alipay/fido/message/ByteUtils;->toBytes(I)[B

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x4

    move-object/from16 v0, v17

    invoke-static {v9, v12, v0, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    add-int/lit8 v7, v7, 0x4

    .line 162
    const/4 v9, 0x0

    move-object/from16 v0, v17

    invoke-static {v10, v9, v0, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    add-int/2addr v7, v14

    .line 166
    invoke-static {v15}, Lcom/alipay/fido/message/ByteUtils;->toBytes(I)[B

    move-result-object v9

    const/4 v10, 0x0

    const/4 v12, 0x4

    move-object/from16 v0, v17

    invoke-static {v9, v10, v0, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    add-int/lit8 v7, v7, 0x4

    .line 168
    const/4 v9, 0x0

    move-object/from16 v0, v17

    invoke-static {v11, v9, v0, v7, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    add-int/2addr v7, v15

    .line 172
    invoke-static/range {v16 .. v16}, Lcom/alipay/fido/message/ByteUtils;->toBytes(I)[B

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x4

    move-object/from16 v0, v17

    invoke-static {v9, v10, v0, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    add-int/lit8 v7, v7, 0x4

    .line 174
    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v16

    invoke-static {v0, v9, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->invokeCmd([B)[B

    move-result-object v6

    .line 181
    invoke-static {v6}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->buildResult([B)Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    move-result-object v7

    .line 184
    invoke-virtual {v7}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getStatus()I

    move-result v9

    if-nez v9, :cond_0

    .line 186
    invoke-static {v6}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->getKeyFromResult([B)[B

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->key:[B

    .line 188
    new-instance v6, Lcom/alipay/fido/message/OperationHeader;

    invoke-direct {v6}, Lcom/alipay/fido/message/OperationHeader;-><init>()V

    .line 189
    invoke-virtual {v5}, Lcom/alipay/fido/message/AuthenticationRequest;->getHeader()Lcom/alipay/fido/message/OperationHeader;

    move-result-object v5

    .line 190
    invoke-static {v5, v8, v7}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->makeAuthResponse(Lcom/alipay/fido/message/OperationHeader;Ljava/lang/String;Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;)Ljava/lang/String;

    move-result-object v5

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->getReponseType()I

    move-result v6

    const/16 v7, 0x64

    invoke-static {v6, v7, v5}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->constructResultBundle(IILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 202
    :goto_0
    return-object v5

    .line 120
    :catch_0
    move-exception v5

    .line 121
    sget-object v6, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->getReponseType()I

    move-result v5

    const/16 v6, 0x65

    invoke-static {v5, v6}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->constructResultBundle(II)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->getReponseType()I

    move-result v5

    const/16 v6, 0x65

    invoke-static {v5, v6}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->constructResultBundle(II)Landroid/os/Bundle;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    goto :goto_0

    .line 200
    :catch_1
    move-exception v5

    .line 201
    sget-object v6, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->getReponseType()I

    move-result v5

    const/16 v6, 0x65

    invoke-static {v5, v6}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->constructResultBundle(II)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method protected doTransaction()Landroid/os/Bundle;
    .locals 5

    .prologue
    const v4, 0x20001

    const/16 v3, 0x65

    .line 52
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->mMessage:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/alipay/fido/message/AuthenticationRequest;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/fido/message/AuthenticationRequest;

    .line 55
    invoke-virtual {v0}, Lcom/alipay/fido/message/AuthenticationRequest;->getChallenge()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/alipay/security/mobile/util/DigestUtil;->MD5(Ljava/lang/String;)[B

    move-result-object v1

    .line 58
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->sendStatusChangeBroadcast(I)V

    .line 60
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->getPeripheral()Lcom/alipay/security/mobile/module/bracelet/lib/profile/IAliAuthProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/profile/IAliAuthProfile;->getAuthService()Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;

    move-result-object v0

    invoke-interface {v0, v4, v1}, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;->authenticate(I[B)[B

    move-result-object v0

    .line 62
    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->getPeripheral()Lcom/alipay/security/mobile/module/bracelet/lib/profile/IAliAuthProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/profile/IAliAuthProfile;->getAuthService()Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;

    move-result-object v0

    invoke-interface {v0, v4, v1}, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;->authenticate(I[B)[B

    move-result-object v0

    .line 67
    :cond_0
    if-nez v0, :cond_2

    .line 68
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bracelet update cii is null"

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->getReponseType()I

    move-result v0

    invoke-static {v0, v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->constructResultBundle(II)Landroid/os/Bundle;

    move-result-object v0

    .line 97
    :cond_1
    :goto_0
    return-object v0

    .line 74
    :cond_2
    invoke-direct {p0, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->sendMessageToTee([B)Landroid/os/Bundle;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->isSuccess(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->key:[B

    if-nez v1, :cond_3

    .line 80
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bracelet update kii is null"

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->getReponseType()I

    move-result v0

    invoke-static {v0, v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->constructResultBundle(II)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->sendStatusChangeBroadcast(I)V

    .line 87
    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->getPeripheral()Lcom/alipay/security/mobile/module/bracelet/lib/profile/IAliAuthProfile;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/security/mobile/module/bracelet/lib/profile/IAliAuthProfile;->getAuthService()Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->key:[B

    invoke-interface {v1, v4, v2}, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;->authroize(I[B)Z

    move-result v1

    .line 89
    if-nez v1, :cond_4

    .line 90
    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->getReponseType()I

    move-result v0

    invoke-static {v0, v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->constructResultBundle(II)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_4
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;->sendStatusChangeBroadcast(I)V

    goto :goto_0
.end method

.method protected getReponseType()I
    .locals 1

    .prologue
    .line 209
    const/16 v0, 0x9

    return v0
.end method
