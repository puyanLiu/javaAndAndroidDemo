.class public final Lcom/alipay/nfc/tech/FeliCa$MemoryConfigurationBlock;
.super Lcom/alipay/nfc/tech/FeliCa;
.source "FeliCa.java"


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 195
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, v1, :cond_1

    :cond_0
    new-array p1, v1, [B

    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/nfc/tech/FeliCa;-><init>([B)V

    .line 196
    return-void
.end method


# virtual methods
.method public final isNdefSupport()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 199
    iget-object v1, p0, Lcom/alipay/nfc/tech/FeliCa$MemoryConfigurationBlock;->data:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/nfc/tech/FeliCa$MemoryConfigurationBlock;->data:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, -0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final varargs isWritable([I)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$MemoryConfigurationBlock;->data:[B

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return v2

    .line 211
    :cond_0
    array-length v5, p1

    move v4, v2

    move v3, v1

    :goto_1
    if-lt v4, v5, :cond_1

    move v2, v3

    .line 222
    goto :goto_0

    .line 211
    :cond_1
    aget v0, p1, v4

    .line 212
    and-int/lit16 v6, v0, 0xff

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    .line 213
    const/16 v7, 0x8

    if-ge v0, v7, :cond_3

    .line 214
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$MemoryConfigurationBlock;->data:[B

    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_2

    move v0, v1

    :goto_2
    and-int/2addr v0, v3

    .line 211
    :goto_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 214
    goto :goto_2

    .line 216
    :cond_3
    const/16 v7, 0x10

    if-ge v0, v7, :cond_5

    .line 217
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$MemoryConfigurationBlock;->data:[B

    aget-byte v0, v0, v1

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_4

    move v0, v1

    :goto_4
    and-int/2addr v0, v3

    .line 218
    goto :goto_3

    :cond_4
    move v0, v2

    .line 217
    goto :goto_4

    .line 220
    :cond_5
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$MemoryConfigurationBlock;->data:[B

    const/4 v7, 0x2

    aget-byte v0, v0, v7

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_6

    move v0, v1

    :goto_5
    and-int/2addr v0, v3

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_5
.end method

.method public final setNdefSupport(Z)V
    .locals 3

    .prologue
    .line 203
    iget-object v1, p0, Lcom/alipay/nfc/tech/FeliCa$MemoryConfigurationBlock;->data:[B

    const/4 v2, 0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 204
    return-void

    .line 203
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
