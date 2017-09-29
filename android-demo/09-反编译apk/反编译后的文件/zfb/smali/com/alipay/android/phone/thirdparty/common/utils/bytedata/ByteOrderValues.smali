.class public final Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;
.super Ljava/lang/Object;
.source "ByteOrderValues.java"


# static fields
.field public static final BIG_ENDIAN:I = 0x1

.field public static final LITTLE_ENDIAN:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static getBoolean([B)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 15
    aget-byte v1, p0, v0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static getByte([B)B
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->getByte([BI)B

    move-result v0

    return v0
.end method

.method public static getByte([BI)B
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    return v0
.end method

.method public static getDouble([B)D
    .locals 2

    .prologue
    .line 165
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->getDouble([BI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getDouble([BI)D
    .locals 2

    .prologue
    .line 169
    invoke-static {p0, p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->getLong([BI)J

    move-result-wide v0

    .line 170
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFloat([B)F
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->getFloat([BI)F

    move-result v0

    return v0
.end method

.method public static getFloat([BI)F
    .locals 1

    .prologue
    .line 103
    invoke-static {p0, p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->getInt([BI)I

    move-result v0

    .line 104
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static getInt([B)I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->getInt([BI)I

    move-result v0

    return v0
.end method

.method public static getInt([BI)I
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 69
    if-ne p1, v2, :cond_0

    .line 70
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte v1, p0, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 74
    :goto_0
    return v0

    :cond_0
    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public static getLong([B)J
    .locals 2

    .prologue
    .line 143
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->getLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong([BI)J
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 147
    if-ne p1, v5, :cond_0

    .line 148
    aget-byte v0, p0, v6

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    aget-byte v2, p0, v5

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-byte v2, p0, v7

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-byte v2, p0, v8

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-byte v2, p0, v9

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x7

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 155
    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x7

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-byte v2, p0, v9

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-byte v2, p0, v8

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-byte v2, p0, v7

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-byte v2, p0, v5

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-byte v2, p0, v6

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    goto :goto_0
.end method

.method public static getShort([B)S
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->getShort([BI)S

    move-result v0

    return v0
.end method

.method public static getShort([BI)S
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 43
    if-ne p1, v1, :cond_0

    .line 44
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 46
    :goto_0
    return v0

    :cond_0
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_0
.end method

.method public static putBoolean(Z[B)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, p1, v1

    .line 20
    return-void

    :cond_0
    move v0, v1

    .line 19
    goto :goto_0
.end method

.method public static putByte(B[B)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->putByte(B[BI)V

    .line 32
    return-void
.end method

.method public static putByte(B[BI)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    aput-byte p0, p1, v0

    .line 36
    return-void
.end method

.method public static putDouble(D[B)V
    .locals 0

    .prologue
    .line 174
    :goto_0
    goto/32 :goto_0
.end method

.method public static putDouble(D[BI)V
    .locals 2

    .prologue
    .line 178
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 179
    invoke-static {v0, v1, p2, p3}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->putLong(J[BI)V

    .line 180
    return-void
.end method

.method public static putFloat(F[B)V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->putFloat(F[BI)V

    .line 109
    return-void
.end method

.method public static putFloat(F[BI)V
    .locals 1

    .prologue
    .line 112
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 113
    invoke-static {v0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->putInt(I[BI)V

    .line 114
    return-void
.end method

.method public static putInt(I[B)V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->putInt(I[BI)V

    .line 82
    return-void
.end method

.method public static putInt(I[BI)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 85
    if-ne p2, v1, :cond_0

    .line 86
    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    .line 87
    shr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    .line 88
    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, v3

    .line 89
    int-to-byte v0, p0

    aput-byte v0, p1, v4

    .line 96
    :goto_0
    return-void

    .line 91
    :cond_0
    int-to-byte v0, p0

    aput-byte v0, p1, v2

    .line 92
    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    .line 93
    shr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, v3

    .line 94
    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, v4

    goto :goto_0
.end method

.method public static putLong(J[B)V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->putLong(J[BI)V

    .line 118
    return-void
.end method

.method public static putLong(J[BI)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 121
    if-ne p3, v2, :cond_0

    .line 122
    const/16 v0, 0x38

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, v3

    .line 123
    const/16 v0, 0x30

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, v2

    .line 124
    const/16 v0, 0x28

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, v4

    .line 125
    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, v5

    .line 126
    const/16 v0, 0x18

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, v6

    .line 127
    const/4 v0, 0x5

    const/16 v1, 0x10

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 128
    const/4 v0, 0x6

    const/16 v1, 0x8

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 129
    const/4 v0, 0x7

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 140
    :goto_0
    return-void

    .line 131
    :cond_0
    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, v3

    .line 132
    const/16 v0, 0x8

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, v2

    .line 133
    const/16 v0, 0x10

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, v4

    .line 134
    const/16 v0, 0x18

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, v5

    .line 135
    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, v6

    .line 136
    const/4 v0, 0x5

    const/16 v1, 0x28

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 137
    const/4 v0, 0x6

    const/16 v1, 0x30

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 138
    const/4 v0, 0x7

    const/16 v1, 0x38

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    goto :goto_0
.end method

.method public static putShort(S[B)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->putShort(S[BI)V

    .line 52
    return-void
.end method

.method public static putShort(S[BI)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 55
    if-ne p2, v1, :cond_0

    .line 56
    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    .line 57
    int-to-byte v0, p0

    aput-byte v0, p1, v1

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    int-to-byte v0, p0

    aput-byte v0, p1, v2

    .line 60
    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    goto :goto_0
.end method
