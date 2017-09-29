.class public Lcom/alipay/fido/message/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# static fields
.field protected static final HEX_ARRAY:[C

.field public static final HEX_DIGITS:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alipay/fido/message/ByteUtils;->HEX_ARRAY:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy([BII[BI)V
    .locals 3

    .prologue
    .line 178
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 179
    add-int v1, p4, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p3, v1

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method

.method private static hexChartoByte(C)B
    .locals 1

    .prologue
    .line 77
    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .locals 6

    .prologue
    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 54
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 60
    new-array v3, v1, [B

    .line 62
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 63
    mul-int/lit8 v4, v0, 0x2

    .line 64
    aget-char v5, v2, v4

    invoke-static {v5}, Lcom/alipay/fido/message/ByteUtils;->hexChartoByte(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v4, v4, 0x1

    aget-char v4, v2, v4

    invoke-static {v4}, Lcom/alipay/fido/message/ByteUtils;->hexChartoByte(C)B

    move-result v4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    return-object v3
.end method

.method public static toBigInteger([B)Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 219
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public static toBigInteger([BII)Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 205
    new-array v0, p2, [B

    .line 207
    invoke-static {p0, p2, v0, p1}, Lcom/alipay/fido/message/ByteUtils;->write([BI[BI)V

    .line 209
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v1
.end method

.method public static toBytes(I)[B
    .locals 2

    .prologue
    .line 190
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 191
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alipay/fido/message/ByteUtils;->write(I[BI)V

    .line 192
    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 33
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [C

    .line 34
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 35
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 36
    mul-int/lit8 v3, v0, 0x2

    sget-object v4, Lcom/alipay/fido/message/ByteUtils;->HEX_ARRAY:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 37
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/alipay/fido/message/ByteUtils;->HEX_ARRAY:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v1, v3

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static toInt([B)I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/fido/message/ByteUtils;->toInt([BI)I

    move-result v0

    return v0
.end method

.method public static toInt([BI)I
    .locals 2

    .prologue
    .line 99
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 100
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 101
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 102
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 103
    return v0
.end method

.method public static toUInt16([B)I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/fido/message/ByteUtils;->toUInt16([BI)I

    move-result v0

    return v0
.end method

.method public static toUInt16([BI)I
    .locals 2

    .prologue
    .line 124
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 125
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 126
    return v0
.end method

.method public static write(I[BI)V
    .locals 2

    .prologue
    .line 149
    add-int/lit8 v0, p2, 0x0

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 150
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 151
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 152
    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 153
    return-void
.end method

.method public static write([BI[BI)V
    .locals 3

    .prologue
    .line 163
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 164
    add-int v1, p3, v0

    aget-byte v2, p0, v0

    aput-byte v2, p2, v1

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method

.method public static writeUInt16(I[BI)V
    .locals 2

    .prologue
    .line 137
    add-int/lit8 v0, p2, 0x0

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 138
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 139
    return-void
.end method
