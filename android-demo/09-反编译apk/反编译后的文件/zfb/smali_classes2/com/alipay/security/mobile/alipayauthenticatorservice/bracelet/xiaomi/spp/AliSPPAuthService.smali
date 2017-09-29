.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;
.super Ljava/lang/Object;
.source "AliSPPAuthService.java"

# interfaces
.implements Lcom/alipay/security/mobile/module/bracelet/lib/service/AliIAuthService;


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 29
    return-void
.end method


# virtual methods
.method public authenticate(I[B)[B
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 96
    if-nez p2, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-object v0

    .line 99
    :cond_1
    :try_start_0
    array-length v2, p2

    if-lt v2, v5, :cond_0

    .line 103
    const/16 v2, 0x16

    new-array v2, v2, [B

    .line 106
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 107
    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    .line 108
    const/4 v3, 0x1

    const/16 v4, 0x11

    aput-byte v4, v2, v3

    .line 109
    const/4 v3, 0x2

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 110
    const/4 v3, 0x3

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 111
    const/4 v3, 0x4

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 112
    const/4 v3, 0x5

    shr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 113
    :goto_1
    if-ge v1, v5, :cond_2

    .line 114
    add-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x2

    aget-byte v4, p2, v1

    aput-byte v4, v2, v3

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 118
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 119
    const/16 v2, 0x800

    new-array v2, v2, [B

    .line 120
    iget-object v3, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 122
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 123
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_0

    .line 124
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public authroize(I[B)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/16 v6, 0x10

    const/4 v0, 0x0

    .line 62
    if-nez p2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    :try_start_0
    array-length v2, p2

    if-lt v2, v6, :cond_0

    .line 68
    const/16 v2, 0x16

    new-array v3, v2, [B

    .line 69
    const/4 v2, 0x0

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    .line 70
    const/4 v2, 0x1

    const/16 v4, 0x10

    aput-byte v4, v3, v2

    .line 71
    const/4 v2, 0x2

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 72
    const/4 v2, 0x3

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 73
    const/4 v2, 0x4

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 74
    const/4 v2, 0x5

    shr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    move v2, v0

    .line 75
    :goto_1
    if-ge v2, v6, :cond_2

    .line 76
    add-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x2

    aget-byte v5, p2, v2

    aput-byte v5, v3, v4

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 78
    :cond_2
    iget-object v2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 80
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 81
    const/16 v3, 0x800

    new-array v3, v3, [B

    .line 82
    iget-object v4, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 84
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 85
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v2, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    move v0, v1

    .line 86
    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;->mInputStream:Ljava/io/InputStream;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;->mOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public confirm(I)Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public getWearableInfo()[B
    .locals 5

    .prologue
    const/16 v4, 0x14

    .line 145
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [B

    .line 147
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 148
    const/4 v1, 0x1

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    .line 149
    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 151
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 152
    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 153
    iget-object v2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 155
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 156
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v1, v1

    if-ne v1, v4, :cond_0

    .line 157
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;->mSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;->mInputStream:Ljava/io/InputStream;

    .line 36
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/spp/AliSPPAuthService;->mOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showPayment(I[B)Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method
