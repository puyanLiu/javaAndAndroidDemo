.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;
.super Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuth;
.source "BraceletRegister.java"


# static fields
.field protected static final TAG:Ljava/lang/String;

.field private static key:[B


# instance fields
.field private deviceFeature:I

.field private deviceModel:Ljava/lang/String;

.field private deviceType:I

.field private hasDeviceInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuth;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/bluetooth/BluetoothDevice;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->hasDeviceInfo:Z

    .line 43
    iput v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->deviceType:I

    .line 45
    iput v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->deviceFeature:I

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->deviceModel:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private readDeviceInfo([B)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 120
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lt v0, v2, :cond_0

    .line 121
    iput-boolean v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->hasDeviceInfo:Z

    .line 122
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->deviceType:I

    .line 123
    aget-byte v0, p1, v1

    iput v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->deviceFeature:I

    .line 124
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 125
    aget-byte v0, p1, v2

    .line 126
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x3

    add-int/lit8 v0, v0, 0x3

    invoke-static {p1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->deviceModel:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->deviceModel:Ljava/lang/String;

    const-string/jumbo v1, " "

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->deviceModel:Ljava/lang/String;

    .line 131
    :cond_0
    return-void
.end method

.method private sendMessageToTee()Landroid/os/Bundle;
    .locals 23

    .prologue
    .line 134
    new-instance v7, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->mContext:Landroid/content/Context;

    invoke-direct {v7, v5}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;-><init>(Landroid/content/Context;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->mMessage:Landroid/os/Bundle;

    const-string/jumbo v6, "KEY_MESSAGE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    const-class v8, Lcom/alipay/fido/message/RegisterRequest;

    invoke-virtual {v6, v5, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/fido/message/RegisterRequest;

    .line 140
    invoke-virtual {v5}, Lcom/alipay/fido/message/RegisterRequest;->getRegData()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x8

    invoke-static {v6, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    .line 142
    new-instance v6, Lcom/alipay/fido/message/FinalChallengeParams;

    invoke-direct {v6}, Lcom/alipay/fido/message/FinalChallengeParams;-><init>()V

    .line 143
    invoke-virtual {v5}, Lcom/alipay/fido/message/RegisterRequest;->getHeader()Lcom/alipay/fido/message/OperationHeader;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/fido/message/OperationHeader;->getAppID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/alipay/fido/message/FinalChallengeParams;->setAppID(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v5}, Lcom/alipay/fido/message/RegisterRequest;->getChallenge()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/alipay/fido/message/FinalChallengeParams;->setChallenge(Ljava/lang/String;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->mFacetId:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/alipay/fido/message/FinalChallengeParams;->setFacetID(Ljava/lang/String;)V

    .line 146
    :try_start_0
    invoke-static {v6}, Lcom/alipay/security/mobile/util/MessageUtils;->toFinalChallenge(Lcom/alipay/fido/message/FinalChallengeParams;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 154
    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v9, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 156
    sget-object v6, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->AAID:Ljava/lang/String;

    const-string/jumbo v11, "UTF-8"

    invoke-virtual {v6, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 157
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->hasDeviceInfo:Z

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->deviceModel:Ljava/lang/String;

    invoke-static {v11}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 159
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->deviceModel:Ljava/lang/String;

    const-string/jumbo v12, "UTF-8"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 164
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    .line 165
    const-string/jumbo v12, "UTF-8"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 166
    invoke-virtual {v7}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->getDeviceIDByte()[B

    move-result-object v12

    .line 168
    array-length v13, v8

    .line 169
    array-length v14, v10

    .line 170
    array-length v15, v6

    .line 171
    array-length v0, v12

    move/from16 v16, v0

    .line 172
    array-length v0, v11

    move/from16 v17, v0

    .line 174
    add-int/lit8 v18, v13, 0x8

    add-int/lit8 v18, v18, 0x4

    add-int v18, v18, v14

    add-int/lit8 v18, v18, 0x4

    add-int v18, v18, v15

    add-int/lit8 v18, v18, 0x4

    add-int v18, v18, v16

    add-int/lit8 v18, v18, 0x4

    add-int v18, v18, v17

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 177
    sget v19, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Commands;->COMMAND_BRACELET_REG:I

    invoke-static/range {v19 .. v19}, Lcom/alipay/fido/message/ByteUtils;->toBytes(I)[B

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v18

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    invoke-static {v13}, Lcom/alipay/fido/message/ByteUtils;->toBytes(I)[B

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x4

    const/16 v22, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v18

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    const/16 v19, 0x0

    const/16 v20, 0x8

    move/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v8, v0, v1, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    add-int/lit8 v8, v13, 0x8

    .line 190
    invoke-static {v14}, Lcom/alipay/fido/message/ByteUtils;->toBytes(I)[B

    move-result-object v13

    const/16 v19, 0x0

    const/16 v20, 0x4

    move/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v13, v0, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    add-int/lit8 v8, v8, 0x4

    .line 192
    const/4 v13, 0x0

    move-object/from16 v0, v18

    invoke-static {v10, v13, v0, v8, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    add-int/2addr v8, v14

    .line 196
    invoke-static {v15}, Lcom/alipay/fido/message/ByteUtils;->toBytes(I)[B

    move-result-object v10

    const/4 v13, 0x0

    const/4 v14, 0x4

    move-object/from16 v0, v18

    invoke-static {v10, v13, v0, v8, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    add-int/lit8 v8, v8, 0x4

    .line 198
    const/4 v10, 0x0

    move-object/from16 v0, v18

    invoke-static {v6, v10, v0, v8, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    add-int/2addr v8, v15

    .line 202
    invoke-static/range {v17 .. v17}, Lcom/alipay/fido/message/ByteUtils;->toBytes(I)[B

    move-result-object v10

    const/4 v13, 0x0

    const/4 v14, 0x4

    move-object/from16 v0, v18

    invoke-static {v10, v13, v0, v8, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    add-int/lit8 v8, v8, 0x4

    .line 204
    const/4 v10, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v11, v10, v0, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    add-int v8, v8, v17

    .line 208
    invoke-static/range {v16 .. v16}, Lcom/alipay/fido/message/ByteUtils;->toBytes(I)[B

    move-result-object v10

    const/4 v11, 0x0

    const/4 v13, 0x4

    move-object/from16 v0, v18

    invoke-static {v10, v11, v0, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    add-int/lit8 v8, v8, 0x4

    .line 210
    const/4 v10, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v12, v10, v0, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->invokeCmd([B)[B

    move-result-object v7

    .line 218
    invoke-static {v7}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->buildResult([B)Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    move-result-object v8

    .line 221
    invoke-virtual {v8}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getStatus()I

    move-result v10

    if-nez v10, :cond_1

    .line 223
    invoke-static {v7}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->getKeyFromResult([B)[B

    move-result-object v7

    sput-object v7, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->key:[B

    .line 225
    new-instance v7, Lcom/alipay/fido/message/OperationHeader;

    invoke-direct {v7}, Lcom/alipay/fido/message/OperationHeader;-><init>()V

    .line 226
    invoke-virtual {v5}, Lcom/alipay/fido/message/RegisterRequest;->getHeader()Lcom/alipay/fido/message/OperationHeader;

    move-result-object v5

    .line 227
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5, v9, v7, v8}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->makeRegResponse(Lcom/alipay/fido/message/OperationHeader;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;)Ljava/lang/String;

    move-result-object v5

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->getReponseType()I

    move-result v6

    const/16 v7, 0x64

    invoke-static {v6, v7, v5}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->constructResultBundle(IILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 237
    :goto_1
    return-object v5

    .line 149
    :catch_0
    move-exception v5

    .line 150
    sget-object v6, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->getReponseType()I

    move-result v5

    const/16 v6, 0x65

    invoke-static {v5, v6}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->constructResultBundle(II)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_1

    .line 235
    :cond_1
    sget-object v5, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "bracelet register result not 0, "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getStatusString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->getReponseType()I

    move-result v5

    const/16 v6, 0x65

    invoke-static {v5, v6}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->constructResultBundle(II)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_1

    :catch_1
    move-exception v11

    goto/16 :goto_0
.end method


# virtual methods
.method protected doTransaction()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/16 v2, 0x65

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->getPeripheral()Lcom/alipay/security/mobile/module/bracelet/lib/profile/IAliAuthProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/profile/IAliAuthProfile;->getAuthService()Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;->getWearableInfo()[B

    move-result-object v0

    .line 60
    invoke-direct {p0, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->readDeviceInfo([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->sendMessageToTee()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->isSuccess(Landroid/os/Bundle;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_0

    .line 116
    :goto_1
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string/jumbo v1, "get device info error"

    invoke-static {v1, v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    .line 74
    const-string/jumbo v1, "bracelet register"

    invoke-static {v1, v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->getReponseType()I

    move-result v0

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->constructResultBundle(II)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 79
    :cond_0
    sget-object v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->key:[B

    if-nez v1, :cond_1

    .line 80
    const-string/jumbo v0, "bracelet register"

    const-string/jumbo v1, "kii is null"

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->getReponseType()I

    move-result v0

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->constructResultBundle(II)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->deviceFeature:I

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/UIUtil;->startFPActivity(Landroid/content/Context;II)V

    .line 86
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->sendStatusChangeBroadcast(I)V

    .line 89
    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletConnectorAdapter;->getPeripheral()Lcom/alipay/security/mobile/module/bracelet/lib/profile/IAliAuthProfile;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/security/mobile/module/bracelet/lib/profile/IAliAuthProfile;->getAuthService()Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;

    move-result-object v1

    const v2, 0x20001

    sget-object v3, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->key:[B

    invoke-interface {v1, v2, v3}, Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;->authroize(I[B)Z

    move-result v1

    .line 91
    if-nez v1, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->getReponseType()I

    move-result v0

    const/16 v1, 0x71

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->constructResultBundle(II)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 114
    :cond_2
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;->sendStatusChangeBroadcast(I)V

    goto :goto_1
.end method

.method protected getReponseType()I
    .locals 1

    .prologue
    .line 245
    const/16 v0, 0x8

    return v0
.end method
