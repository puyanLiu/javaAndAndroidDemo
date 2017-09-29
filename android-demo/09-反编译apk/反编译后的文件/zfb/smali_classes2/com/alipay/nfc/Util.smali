.class public final Lcom/alipay/nfc/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final HEX:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/nfc/Util;->HEX:[C

    .line 20
    return-void

    .line 21
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static byte2hexString([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    if-eqz p0, :cond_0

    .line 90
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/alipay/nfc/Util;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static byte2hexString([BII)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    if-eqz p0, :cond_0

    .line 111
    invoke-static {p0, p1, p2}, Lcom/alipay/nfc/Util;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static parseInt(Ljava/lang/String;II)I
    .locals 1

    .prologue
    .line 156
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 161
    :goto_0
    return p2

    .line 158
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toAmountString(F)Ljava/lang/String;
    .locals 4

    .prologue
    .line 165
    const-string/jumbo v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toBytes(I)[B
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    .line 29
    ushr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 30
    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 28
    return-object v0
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .locals 7

    .prologue
    .line 64
    mul-int/lit8 v0, p2, 0x2

    new-array v1, v0, [C

    .line 65
    add-int v2, p1, p2

    .line 67
    const/4 v0, 0x0

    .line 68
    :goto_0
    if-lt p1, v2, :cond_0

    .line 73
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 69
    :cond_0
    aget-byte v3, p0, p1

    .line 70
    add-int/lit8 v4, v0, 0x1

    sget-object v5, Lcom/alipay/nfc/Util;->HEX:[C

    shr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v0

    .line 71
    add-int/lit8 v0, v4, 0x1

    sget-object v5, Lcom/alipay/nfc/Util;->HEX:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    aput-char v3, v1, v4

    .line 68
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static toHexStringR([BII)Ljava/lang/String;
    .locals 7

    .prologue
    .line 77
    mul-int/lit8 v0, p2, 0x2

    new-array v2, v0, [C

    .line 79
    const/4 v0, 0x0

    .line 80
    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ge v1, p1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 81
    :cond_0
    aget-byte v3, p0, v1

    .line 82
    add-int/lit8 v4, v0, 0x1

    sget-object v5, Lcom/alipay/nfc/Util;->HEX:[C

    shr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v2, v0

    .line 83
    add-int/lit8 v0, v4, 0x1

    sget-object v5, Lcom/alipay/nfc/Util;->HEX:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    aput-char v3, v2, v4

    .line 80
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static varargs toInt([B)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 55
    .line 56
    array-length v2, p0

    move v1, v0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 60
    return v1

    .line 56
    :cond_0
    aget-byte v3, p0, v0

    .line 57
    shl-int/lit8 v1, v1, 0x8

    .line 58
    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static toInt([BII)I
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 36
    add-int v1, p1, p2

    .line 37
    :goto_0
    if-lt p1, v1, :cond_0

    .line 41
    return v0

    .line 38
    :cond_0
    shl-int/lit8 v0, v0, 0x8

    .line 39
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    .line 37
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static toIntR([BII)I
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 47
    :goto_0
    if-ltz p1, :cond_0

    if-gtz p2, :cond_1

    .line 51
    :cond_0
    return v0

    .line 48
    :cond_1
    shl-int/lit8 v0, v0, 0x8

    .line 49
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 47
    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0
.end method

.method public static trimZero([B)[B
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x20

    .line 131
    if-nez p0, :cond_0

    move-object v0, v1

    .line 148
    :goto_0
    return-object v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    .line 136
    array-length v2, p0

    .line 137
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_1

    aget-byte v3, p0, v0

    if-eqz v3, :cond_3

    aget-byte v3, p0, v0

    if-eq v3, v4, :cond_3

    .line 141
    :cond_1
    :goto_2
    if-lez v2, :cond_2

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, p0, v3

    if-eqz v3, :cond_4

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, p0, v3

    if-eq v3, v4, :cond_4

    .line 145
    :cond_2
    if-lt v0, v2, :cond_5

    move-object v0, v1

    .line 146
    goto :goto_0

    .line 138
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 142
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 148
    :cond_5
    invoke-static {p0, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_0
.end method
