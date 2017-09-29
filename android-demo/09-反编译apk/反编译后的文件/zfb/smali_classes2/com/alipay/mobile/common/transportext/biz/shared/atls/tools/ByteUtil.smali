.class public Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;
.super Ljava/lang/Object;
.source "ByteUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytes2String([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 19
    if-nez p0, :cond_0

    .line 20
    const-string/jumbo v0, "[]"

    .line 32
    :goto_0
    return-object v0

    .line 23
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 24
    const-string/jumbo v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    array-length v2, p0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-byte v3, p0, v0

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 30
    :cond_1
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    .line 114
    :cond_0
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    :cond_1
    move v0, v1

    .line 116
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 117
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    .line 118
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static charToByte(C)B
    .locals 1

    .prologue
    .line 153
    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public static getLong([B)J
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-wide/16 v5, 0xff

    .line 48
    aget-byte v0, p0, v7

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x7

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    shl-long/2addr v2, v7

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static hBytesToShort([B)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 175
    aget-byte v0, p0, v1

    if-ltz v0, :cond_0

    .line 177
    aget-byte v0, p0, v1

    add-int/lit8 v0, v0, 0x0

    .line 181
    :goto_0
    mul-int/lit16 v0, v0, 0x100

    .line 182
    aget-byte v1, p0, v2

    if-ltz v1, :cond_1

    .line 183
    aget-byte v1, p0, v2

    add-int/2addr v0, v1

    .line 187
    :goto_1
    int-to-short v0, v0

    .line 188
    return v0

    .line 179
    :cond_0
    aget-byte v0, p0, v1

    add-int/lit16 v0, v0, 0x100

    goto :goto_0

    .line 185
    :cond_1
    add-int/lit16 v0, v0, 0x100

    aget-byte v1, p0, v2

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6

    .prologue
    .line 133
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    :cond_0
    const/4 v0, 0x0

    .line 144
    :cond_1
    return-object v0

    .line 136
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    .line 138
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 139
    new-array v0, v2, [B

    .line 140
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 141
    mul-int/lit8 v4, v1, 0x2

    .line 142
    aget-char v5, v3, v4

    invoke-static {v5}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->charToByte(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v4, v4, 0x1

    aget-char v4, v3, v4

    invoke-static {v4}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->charToByte(C)B

    move-result v4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static int2Bytes(I)[B
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 79
    new-array v1, v3, [B

    .line 80
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 81
    mul-int/lit8 v2, v0, 0x8

    ushr-int v2, p0, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return-object v1
.end method

.method public static intToByteArray(I)[B
    .locals 3

    .prologue
    .line 206
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 207
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 208
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 209
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 210
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 211
    return-object v0
.end method

.method public static long2Byte([BJ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p0, v3

    .line 56
    const/4 v0, 0x1

    const/16 v1, 0x30

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 57
    const/4 v0, 0x2

    const/16 v1, 0x28

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 58
    const/4 v0, 0x3

    const/16 v1, 0x20

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 59
    const/4 v0, 0x4

    const/16 v1, 0x18

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 60
    const/4 v0, 0x5

    const/16 v1, 0x10

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 61
    const/4 v0, 0x6

    const/16 v1, 0x8

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 62
    const/4 v0, 0x7

    shr-long v1, p1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 63
    return-void
.end method

.method public static seq8turn([B)[B
    .locals 6

    .prologue
    .line 37
    array-length v0, p0

    new-array v1, v0, [B

    .line 38
    invoke-static {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->getLong([B)J

    move-result-wide v2

    .line 39
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 40
    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->long2Byte([BJ)V

    .line 41
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 42
    aget-byte v2, v1, v0

    aput-byte v2, p0, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    return-object p0
.end method

.method public static shortToBytes(I)[B
    .locals 1

    .prologue
    .line 67
    int-to-short v0, p0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->toHH(S)[B

    move-result-object v0

    return-object v0
.end method

.method public static toHH(I)[B
    .locals 3

    .prologue
    .line 166
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 167
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 168
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 169
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 170
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 171
    return-object v0
.end method

.method public static toHH(S)[B
    .locals 3

    .prologue
    .line 199
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 200
    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 201
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 202
    return-object v0
.end method

.method public static toInt([BII)I
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 99
    :goto_0
    if-ge p1, p2, :cond_0

    .line 100
    aget-byte v1, p0, p1

    .line 101
    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v2, p1, 0x8

    shl-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 99
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    return v0
.end method

.method public static toLH(I)[B
    .locals 3

    .prologue
    .line 157
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 158
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 159
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 160
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 161
    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 162
    return-object v0
.end method

.method public static toLH(S)[B
    .locals 3

    .prologue
    .line 192
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 193
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 194
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 195
    return-object v0
.end method
