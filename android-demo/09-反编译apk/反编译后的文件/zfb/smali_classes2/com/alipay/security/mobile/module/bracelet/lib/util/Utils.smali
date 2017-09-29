.class public final Lcom/alipay/security/mobile/module/bracelet/lib/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final UUID_BASE:Ljava/lang/String; = "0000%4s-0000-1000-8000-00805f9b34fb"

.field private static final UUID_BASE_RE:Ljava/lang/String;

.field public static final UUID_DESCRIPTOR_CHARACTERISTIC_USER_CONFIGURATION:Ljava/util/UUID;

.field public static final UUID_DESCRIPTOR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 15
    const-string/jumbo v0, "0000%4s-0000-1000-8000-00805f9b34fb"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "...."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/util/Utils;->UUID_BASE_RE:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "2902"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/util/Utils;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/util/Utils;->UUID_DESCRIPTOR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 20
    const-string/jumbo v0, "2901"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/util/Utils;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/util/Utils;->UUID_DESCRIPTOR_CHARACTERISTIC_USER_CONFIGURATION:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AESEncrypt([B[B)[B
    .locals 4

    .prologue
    .line 175
    :try_start_0
    const-string/jumbo v0, "AES/ECB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 176
    const/4 v1, 0x1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 177
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 183
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public static CRC16([B)I
    .locals 4

    .prologue
    const v2, 0xffff

    .line 66
    .line 67
    const/4 v0, 0x0

    move v1, v2

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 68
    ushr-int/lit8 v3, v1, 0x8

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v3

    and-int/2addr v1, v2

    .line 69
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v1, v3

    .line 70
    and-int/lit16 v3, v1, 0xff

    shr-int/lit8 v3, v3, 0x4

    xor-int/2addr v1, v3

    .line 71
    shl-int/lit8 v3, v1, 0xc

    and-int/2addr v3, v2

    xor-int/2addr v1, v3

    .line 72
    and-int/lit16 v3, v1, 0xff

    shl-int/lit8 v3, v3, 0x5

    and-int/2addr v3, v2

    xor-int/2addr v1, v3

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    and-int v0, v1, v2

    .line 76
    return v0
.end method

.method public static CRC8([B)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 80
    move v0, v1

    move v2, v1

    .line 81
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 82
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v2, v3

    move v3, v1

    .line 83
    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    .line 84
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    .line 85
    shr-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    .line 86
    xor-int/lit16 v2, v2, 0x8c

    .line 83
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 88
    :cond_0
    shr-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    goto :goto_2

    .line 81
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_2
    return v2
.end method

.method public static UUID([B)Ljava/util/UUID;
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 32
    array-length v0, p0

    sparse-switch v0, :sswitch_data_0

    .line 48
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 34
    :sswitch_0
    const-string/jumbo v0, "%02x%02x"

    new-array v1, v6, [Ljava/lang/Object;

    aget-byte v2, p0, v4

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v4

    aget-byte v2, p0, v5

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/util/Utils;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    goto :goto_0

    .line 37
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 38
    const-string/jumbo v1, "%02x%02x%02x%02x"

    new-array v2, v8, [Ljava/lang/Object;

    aget-byte v3, p0, v4

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    aget-byte v3, p0, v5

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    aget-byte v3, p0, v6

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v6

    aget-byte v3, p0, v7

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string/jumbo v1, "-%02x%02x-%02x%02x"

    new-array v2, v8, [Ljava/lang/Object;

    aget-byte v3, p0, v8

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x5

    aget-byte v3, p0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x6

    aget-byte v3, p0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x7

    aget-byte v3, p0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string/jumbo v1, "-%02x%02x-%02x%02x"

    new-array v2, v8, [Ljava/lang/Object;

    const/16 v3, 0x8

    aget-byte v3, p0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0x9

    aget-byte v3, p0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0xa

    aget-byte v3, p0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v6

    const/16 v3, 0xb

    aget-byte v3, p0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v1, "%02x%02x%02x%02x"

    new-array v2, v8, [Ljava/lang/Object;

    const/16 v3, 0xc

    aget-byte v3, p0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0xd

    aget-byte v3, p0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0xe

    aget-byte v3, p0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v6

    const/16 v3, 0xf

    aget-byte v3, p0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/bracelet/lib/util/Utils;->UUID128(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    goto/16 :goto_0

    .line 32
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public static UUID128(Ljava/lang/String;)Ljava/util/UUID;
    .locals 1

    .prologue
    .line 28
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public static UUID16(Ljava/lang/String;)Ljava/util/UUID;
    .locals 3

    .prologue
    .line 23
    const-string/jumbo v0, "0000%4s-0000-1000-8000-00805f9b34fb"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 52
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    const-string/jumbo v0, ""

    .line 62
    :goto_0
    return-object v0

    .line 55
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    array-length v3, p0

    move v0, v1

    .line 58
    :goto_1
    if-ge v0, v3, :cond_2

    .line 59
    aget-byte v4, p0, v0

    .line 60
    const-string/jumbo v5, "%02x "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static bytesToInt([BI)I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/alipay/security/mobile/module/bracelet/lib/util/Utils;->bytesToInt([BII)I

    move-result v0

    return v0
.end method

.method public static bytesToInt([BII)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 96
    move v1, v0

    .line 97
    :goto_0
    if-ge v0, p2, :cond_0

    .line 98
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    return v1
.end method

.method public static parsePermissions(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_0

    .line 139
    const-string/jumbo v1, "READ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_1

    .line 142
    const-string/jumbo v1, "READ_ENCRYPTED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_2

    .line 145
    const-string/jumbo v1, "READ_ENCRYPTED_MITM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_2
    and-int/lit8 v1, p0, 0x10

    if-lez v1, :cond_3

    .line 148
    const-string/jumbo v1, "WRITE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_3
    and-int/lit8 v1, p0, 0x20

    if-lez v1, :cond_4

    .line 151
    const-string/jumbo v1, "WRITE_ENCRYPTED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_4
    and-int/lit8 v1, p0, 0x40

    if-lez v1, :cond_5

    .line 154
    const-string/jumbo v1, "WRITE_ENCRYPTED_MITM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_5
    and-int/lit16 v1, p0, 0x80

    if-lez v1, :cond_6

    .line 157
    const-string/jumbo v1, "WRITE_SIGNED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_6
    and-int/lit16 v1, p0, 0x100

    if-lez v1, :cond_7

    .line 160
    const-string/jumbo v1, "WRITE_SIGNED_MITM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseProperties(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_0

    .line 110
    const-string/jumbo v1, "BROADCAST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_0
    and-int/lit16 v1, p0, 0x80

    if-lez v1, :cond_1

    .line 113
    const-string/jumbo v1, "EXTENDED_PROPS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_1
    and-int/lit8 v1, p0, 0x20

    if-lez v1, :cond_2

    .line 116
    const-string/jumbo v1, "INDICATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_2
    and-int/lit8 v1, p0, 0x10

    if-lez v1, :cond_3

    .line 119
    const-string/jumbo v1, "NOTIFY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_3
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_4

    .line 122
    const-string/jumbo v1, "READ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_4
    and-int/lit8 v1, p0, 0x40

    if-lez v1, :cond_5

    .line 125
    const-string/jumbo v1, "SIGNED_WRITE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_5
    and-int/lit8 v1, p0, 0x8

    if-lez v1, :cond_6

    .line 128
    const-string/jumbo v1, "WRITE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_6
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_7

    .line 131
    const-string/jumbo v1, "WRITE_NO_RESPONSE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseUUID(Ljava/util/UUID;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    sget-object v1, Lcom/alipay/security/mobile/module/bracelet/lib/util/Utils;->UUID_BASE_RE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 170
    :cond_0
    return-object v0
.end method
