.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;
.super Ljava/lang/Object;
.source "BraceletNativeAdapter.java"


# static fields
.field public static AAID:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private braceletNative:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "HUAMI#MIBAND1"

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->AAID:Ljava/lang/String;

    .line 28
    const-class v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->mContext:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->braceletNative:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;

    .line 39
    return-void
.end method

.method private buildResult([B)Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;
    .locals 4

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;-><init>(I[B)V

    .line 174
    :goto_0
    return-object v0

    .line 166
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x4

    new-array v1, v0, [B

    .line 168
    const/4 v0, 0x4

    array-length v2, p1

    add-int/lit8 v2, v2, -0x4

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v1, v3}, Lcom/alipay/fido/message/ByteUtils;->copy([BII[BI)V

    .line 169
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    invoke-direct {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;-><init>()V

    .line 171
    invoke-static {p1}, Lcom/alipay/fido/message/ByteUtils;->toInt([B)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->setStatus(I)V

    .line 173
    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->setData([B)V

    goto :goto_0
.end method

.method private declared-synchronized getInternalDeviceID()Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;
    .locals 7

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->getIMEI()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 116
    array-length v1, v0

    .line 118
    add-int/lit8 v2, v1, 0x8

    new-array v2, v2, [B

    .line 120
    sget v3, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Commands;->COMMAND_GETDEVICEID:I

    invoke-static {v3}, Lcom/alipay/fido/message/ByteUtils;->toBytes(I)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    invoke-static {v1}, Lcom/alipay/fido/message/ByteUtils;->toBytes(I)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x4

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->braceletNative:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;

    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;->invokeCmd(Landroid/content/Context;[B)[B

    move-result-object v0

    .line 133
    invoke-direct {p0, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->buildResult([B)Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 134
    monitor-exit p0

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getDeviceID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->getDeviceIDByte()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeviceIDByte()[B
    .locals 6

    .prologue
    .line 50
    monitor-enter p0

    const/4 v1, 0x0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "bracelet_device"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;->load(Ljava/lang/Object;Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 60
    :goto_0
    if-nez v0, :cond_0

    .line 61
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->getInternalDeviceID()Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getStatus()I

    move-result v2

    if-nez v2, :cond_0

    .line 63
    invoke-virtual {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getData()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 66
    :try_start_2
    iget-object v2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "bracelet_device"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getData()[B

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;->store(Ljava/lang/Object;Ljava/lang/String;[BI)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :cond_0
    :goto_1
    monitor-exit p0

    return-object v0

    .line 58
    :catch_0
    move-exception v0

    :try_start_3
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "load device id byte error"

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public declared-synchronized getIMEI()Ljava/lang/String;
    .locals 6

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "bracelet_ALIPAY_SEC"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;->load(Ljava/lang/Object;Ljava/lang/String;I)[B

    move-result-object v2

    .line 83
    if-eqz v2, :cond_2

    .line 84
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/util/DeviceInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 95
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "bracelet_ALIPAY_SEC"

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;->store(Ljava/lang/Object;Ljava/lang/String;[BI)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 102
    :catch_1
    move-exception v1

    :try_start_4
    sget-object v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "load imei error"

    invoke-static {v1, v2}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public getUserStatus([B)Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 144
    array-length v0, p1

    add-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 145
    sget v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Commands;->COMMAND_BRACELET_USERSTATUS:I

    invoke-static {v1}, Lcom/alipay/fido/message/ByteUtils;->toBytes(I)[B

    move-result-object v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    array-length v1, p1

    invoke-static {v1}, Lcom/alipay/fido/message/ByteUtils;->toBytes(I)[B

    move-result-object v1

    invoke-static {v1, v3, v0, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    const/16 v1, 0x8

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->braceletNative:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;

    iget-object v2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;->invokeCmd(Landroid/content/Context;[B)[B

    move-result-object v0

    .line 151
    invoke-direct {p0, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->buildResult([B)Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    move-result-object v0

    .line 152
    return-object v0
.end method

.method public invokeCmd([B)[B
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->braceletNative:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;

    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNativeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/jni/BraceletNative;->invokeCmd(Landroid/content/Context;[B)[B

    move-result-object v0

    return-object v0
.end method
