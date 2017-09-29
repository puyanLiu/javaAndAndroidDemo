.class public final Lcom/alipay/nfc/tech/FeliCa$Service;
.super Lcom/alipay/nfc/tech/FeliCa;
.source "FeliCa.java"


# instance fields
.field private final blockListElements:[Lcom/alipay/nfc/tech/FeliCa$BlockListElement;

.field private final serviceCodes:[Lcom/alipay/nfc/tech/FeliCa$ServiceCode;


# direct methods
.method public varargs constructor <init>([Lcom/alipay/nfc/tech/FeliCa$ServiceCode;[Lcom/alipay/nfc/tech/FeliCa$BlockListElement;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 230
    invoke-direct {p0}, Lcom/alipay/nfc/tech/FeliCa;-><init>()V

    .line 231
    if-nez p1, :cond_0

    new-array p1, v0, [Lcom/alipay/nfc/tech/FeliCa$ServiceCode;

    :cond_0
    iput-object p1, p0, Lcom/alipay/nfc/tech/FeliCa$Service;->serviceCodes:[Lcom/alipay/nfc/tech/FeliCa$ServiceCode;

    .line 232
    if-nez p2, :cond_1

    new-array p2, v0, [Lcom/alipay/nfc/tech/FeliCa$BlockListElement;

    :cond_1
    iput-object p2, p0, Lcom/alipay/nfc/tech/FeliCa$Service;->blockListElements:[Lcom/alipay/nfc/tech/FeliCa$BlockListElement;

    .line 234
    return-void
.end method


# virtual methods
.method public final getBytes()[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 239
    .line 240
    iget-object v4, p0, Lcom/alipay/nfc/tech/FeliCa$Service;->serviceCodes:[Lcom/alipay/nfc/tech/FeliCa$ServiceCode;

    array-length v5, v4

    move v2, v0

    move v1, v0

    :goto_0
    if-lt v2, v5, :cond_0

    .line 244
    iget-object v3, p0, Lcom/alipay/nfc/tech/FeliCa$Service;->blockListElements:[Lcom/alipay/nfc/tech/FeliCa$BlockListElement;

    array-length v4, v3

    move v2, v1

    move v1, v0

    :goto_1
    if-lt v1, v4, :cond_1

    .line 248
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 249
    iget-object v3, p0, Lcom/alipay/nfc/tech/FeliCa$Service;->serviceCodes:[Lcom/alipay/nfc/tech/FeliCa$ServiceCode;

    array-length v4, v3

    move v1, v0

    :goto_2
    if-lt v1, v4, :cond_2

    .line 253
    iget-object v1, p0, Lcom/alipay/nfc/tech/FeliCa$Service;->blockListElements:[Lcom/alipay/nfc/tech/FeliCa$BlockListElement;

    array-length v3, v1

    :goto_3
    if-lt v0, v3, :cond_3

    .line 257
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 240
    :cond_0
    aget-object v3, v4, v2

    .line 241
    invoke-virtual {v3}, Lcom/alipay/nfc/tech/FeliCa$ServiceCode;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v3, v1

    .line 240
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_0

    .line 244
    :cond_1
    aget-object v5, v3, v1

    .line 245
    invoke-virtual {v5}, Lcom/alipay/nfc/tech/FeliCa$BlockListElement;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v2, v5

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 249
    :cond_2
    aget-object v5, v3, v1

    .line 250
    invoke-virtual {v5}, Lcom/alipay/nfc/tech/FeliCa$ServiceCode;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 253
    :cond_3
    aget-object v4, v1, v0

    .line 254
    invoke-virtual {v4}, Lcom/alipay/nfc/tech/FeliCa$BlockListElement;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    iget-object v3, p0, Lcom/alipay/nfc/tech/FeliCa$Service;->serviceCodes:[Lcom/alipay/nfc/tech/FeliCa$ServiceCode;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_0

    .line 267
    iget-object v1, p0, Lcom/alipay/nfc/tech/FeliCa$Service;->blockListElements:[Lcom/alipay/nfc/tech/FeliCa$BlockListElement;

    array-length v3, v1

    :goto_1
    if-lt v0, v3, :cond_1

    .line 270
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 263
    :cond_0
    aget-object v5, v3, v1

    .line 264
    invoke-virtual {v5}, Lcom/alipay/nfc/tech/FeliCa$ServiceCode;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    :cond_1
    aget-object v4, v1, v0

    .line 268
    invoke-virtual {v4}, Lcom/alipay/nfc/tech/FeliCa$BlockListElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
