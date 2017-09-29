.class public Lcom/alipay/fido/message/TLV;
.super Ljava/lang/Object;
.source "TLV.java"


# static fields
.field public static UINT16_MIN:I

.field public static UNIT16_MAX:I


# instance fields
.field children:Ljava/util/List;

.field length:I

.field tag:I

.field value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/alipay/fido/message/TLV;->UINT16_MIN:I

    .line 20
    const v0, 0xffff

    sput v0, Lcom/alipay/fido/message/TLV;->UNIT16_MAX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lcom/alipay/fido/message/TLV;->setTag(I)V

    .line 55
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/alipay/fido/message/TLV;->tag:I

    .line 64
    iput p2, p0, Lcom/alipay/fido/message/TLV;->length:I

    .line 65
    return-void
.end method


# virtual methods
.method public calcLength()I
    .locals 3

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 221
    iget-object v1, p0, Lcom/alipay/fido/message/TLV;->children:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/alipay/fido/message/TLV;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/fido/message/TLV;

    .line 223
    invoke-virtual {v0}, Lcom/alipay/fido/message/TLV;->calcLength()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 224
    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alipay/fido/message/TLV;->setLength(I)V

    .line 226
    add-int/lit8 v0, v1, 0x4

    .line 233
    :goto_1
    return v0

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/alipay/fido/message/TLV;->value:[B

    if-eqz v1, :cond_2

    .line 230
    iget-object v0, p0, Lcom/alipay/fido/message/TLV;->value:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x0

    .line 232
    :cond_2
    invoke-virtual {p0, v0}, Lcom/alipay/fido/message/TLV;->setLength(I)V

    .line 233
    add-int/lit8 v0, v0, 0x4

    goto :goto_1
.end method

.method public decode(Lcom/alipay/fido/message/ByteArray;)V
    .locals 3

    .prologue
    .line 312
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/fido/message/ByteArray;->readUINT16()I

    move-result v0

    iput v0, p0, Lcom/alipay/fido/message/TLV;->tag:I

    .line 313
    invoke-virtual {p1}, Lcom/alipay/fido/message/ByteArray;->readUINT16()I

    move-result v0

    iput v0, p0, Lcom/alipay/fido/message/TLV;->length:I

    .line 315
    iget v0, p0, Lcom/alipay/fido/message/TLV;->length:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/fido/message/TLV;->value:[B

    .line 317
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/alipay/fido/message/TLV;->length:I

    if-ge v0, v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/alipay/fido/message/TLV;->value:[B

    invoke-virtual {p1}, Lcom/alipay/fido/message/ByteArray;->readByte()B

    move-result v2

    aput-byte v2, v1, v0

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/fido/message/TLV;->decodeValueIntoChildren()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    new-instance v1, Lcom/alipay/fido/message/MessageException;

    invoke-direct {v1, v0}, Lcom/alipay/fido/message/MessageException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public decodeValueIntoChildren()V
    .locals 3

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/alipay/fido/message/TLV;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    :cond_0
    return-void

    .line 337
    :cond_1
    :try_start_0
    new-instance v0, Lcom/alipay/fido/message/ByteArray;

    iget-object v1, p0, Lcom/alipay/fido/message/TLV;->value:[B

    invoke-direct {v0, v1}, Lcom/alipay/fido/message/ByteArray;-><init>([B)V

    .line 339
    iget-object v1, p0, Lcom/alipay/fido/message/TLV;->children:Ljava/util/List;

    if-nez v1, :cond_2

    .line 340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/fido/message/TLV;->children:Ljava/util/List;

    .line 345
    :goto_0
    invoke-virtual {v0}, Lcom/alipay/fido/message/ByteArray;->end()Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    new-instance v1, Lcom/alipay/fido/message/TLV;

    invoke-direct {v1}, Lcom/alipay/fido/message/TLV;-><init>()V

    .line 347
    invoke-virtual {v1, v0}, Lcom/alipay/fido/message/TLV;->decode(Lcom/alipay/fido/message/ByteArray;)V

    .line 348
    iget-object v2, p0, Lcom/alipay/fido/message/TLV;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    new-instance v1, Lcom/alipay/fido/message/MessageException;

    invoke-direct {v1, v0}, Lcom/alipay/fido/message/MessageException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 342
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/alipay/fido/message/TLV;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected encode(Lcom/alipay/fido/message/ByteArray;)V
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/alipay/fido/message/TLV;->calcLength()I

    .line 276
    iget v0, p0, Lcom/alipay/fido/message/TLV;->tag:I

    invoke-virtual {p1, v0}, Lcom/alipay/fido/message/ByteArray;->writeUINT16(I)V

    .line 277
    iget v0, p0, Lcom/alipay/fido/message/TLV;->length:I

    invoke-virtual {p1, v0}, Lcom/alipay/fido/message/ByteArray;->writeUINT16(I)V

    .line 279
    iget-object v0, p0, Lcom/alipay/fido/message/TLV;->children:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/alipay/fido/message/TLV;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/fido/message/TLV;

    .line 281
    invoke-virtual {v0, p1}, Lcom/alipay/fido/message/TLV;->encode(Lcom/alipay/fido/message/ByteArray;)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/alipay/fido/message/TLV;->value:[B

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/alipay/fido/message/TLV;->value:[B

    iget-object v1, p0, Lcom/alipay/fido/message/TLV;->value:[B

    array-length v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/alipay/fido/message/ByteArray;->write([BI)V

    .line 286
    :cond_1
    return-void
.end method

.method public encode()[B
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/alipay/fido/message/TLV;->calcLength()I

    .line 243
    iget v0, p0, Lcom/alipay/fido/message/TLV;->length:I

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 245
    new-instance v1, Lcom/alipay/fido/message/ByteArray;

    invoke-direct {v1, v0}, Lcom/alipay/fido/message/ByteArray;-><init>([B)V

    .line 247
    invoke-virtual {p0, v1}, Lcom/alipay/fido/message/TLV;->encode(Lcom/alipay/fido/message/ByteArray;)V

    .line 249
    return-object v0
.end method

.method protected encodeValue(Lcom/alipay/fido/message/ByteArray;)V
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/alipay/fido/message/TLV;->calcLength()I

    .line 295
    iget-object v0, p0, Lcom/alipay/fido/message/TLV;->children:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/alipay/fido/message/TLV;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/fido/message/TLV;

    .line 297
    invoke-virtual {v0, p1}, Lcom/alipay/fido/message/TLV;->encode(Lcom/alipay/fido/message/ByteArray;)V

    goto :goto_0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/alipay/fido/message/TLV;->value:[B

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/alipay/fido/message/TLV;->value:[B

    iget-object v1, p0, Lcom/alipay/fido/message/TLV;->value:[B

    array-length v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/alipay/fido/message/ByteArray;->write([BI)V

    .line 302
    :cond_1
    return-void
.end method

.method public encodeValue()[B
    .locals 2

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/alipay/fido/message/TLV;->calcLength()I

    .line 260
    iget v0, p0, Lcom/alipay/fido/message/TLV;->length:I

    new-array v0, v0, [B

    .line 262
    new-instance v1, Lcom/alipay/fido/message/ByteArray;

    invoke-direct {v1, v0}, Lcom/alipay/fido/message/ByteArray;-><init>([B)V

    .line 264
    invoke-virtual {p0, v1}, Lcom/alipay/fido/message/TLV;->encodeValue(Lcom/alipay/fido/message/ByteArray;)V

    .line 266
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 390
    if-ne p0, p1, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v0

    .line 392
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 393
    goto :goto_0

    .line 394
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 395
    goto :goto_0

    .line 396
    :cond_3
    check-cast p1, Lcom/alipay/fido/message/TLV;

    .line 397
    iget-object v2, p0, Lcom/alipay/fido/message/TLV;->children:Ljava/util/List;

    if-nez v2, :cond_4

    .line 398
    iget-object v2, p1, Lcom/alipay/fido/message/TLV;->children:Ljava/util/List;

    if-eqz v2, :cond_5

    move v0, v1

    .line 399
    goto :goto_0

    .line 400
    :cond_4
    iget-object v2, p0, Lcom/alipay/fido/message/TLV;->children:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/fido/message/TLV;->children:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 401
    goto :goto_0

    .line 402
    :cond_5
    iget v2, p0, Lcom/alipay/fido/message/TLV;->length:I

    iget v3, p1, Lcom/alipay/fido/message/TLV;->length:I

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 403
    goto :goto_0

    .line 404
    :cond_6
    iget v2, p0, Lcom/alipay/fido/message/TLV;->tag:I

    iget v3, p1, Lcom/alipay/fido/message/TLV;->tag:I

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 405
    goto :goto_0

    .line 406
    :cond_7
    iget-object v2, p0, Lcom/alipay/fido/message/TLV;->value:[B

    iget-object v3, p1, Lcom/alipay/fido/message/TLV;->value:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 407
    goto :goto_0
.end method

.method public findByTag(I)Lcom/alipay/fido/message/TLV;
    .locals 2

    .prologue
    .line 159
    iget v0, p0, Lcom/alipay/fido/message/TLV;->tag:I

    if-ne v0, p1, :cond_0

    .line 169
    :goto_0
    return-object p0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/alipay/fido/message/TLV;->children:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/alipay/fido/message/TLV;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/fido/message/TLV;

    .line 163
    invoke-virtual {v0, p1}, Lcom/alipay/fido/message/TLV;->findByTag(I)Lcom/alipay/fido/message/TLV;

    move-result-object p0

    .line 164
    if-eqz p0, :cond_1

    goto :goto_0

    .line 169
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/fido/message/TLV;->children:Ljava/util/List;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/alipay/fido/message/TLV;->length:I

    return v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/alipay/fido/message/TLV;->tag:I

    return v0
.end method

.method public getValue()[B
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/fido/message/TLV;->value:[B

    return-object v0
.end method

.method public getValueByTag(I)[B
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/alipay/fido/message/TLV;->findByTag(I)Lcom/alipay/fido/message/TLV;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/alipay/fido/message/TLV;->getValue()[B

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/alipay/fido/message/TLV;->children:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 379
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/alipay/fido/message/TLV;->length:I

    add-int/2addr v0, v1

    .line 380
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/alipay/fido/message/TLV;->tag:I

    add-int/2addr v0, v1

    .line 381
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/alipay/fido/message/TLV;->value:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 382
    return v0

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/alipay/fido/message/TLV;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isDirectory()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 361
    iget v1, p0, Lcom/alipay/fido/message/TLV;->tag:I

    const/16 v2, 0x23

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/alipay/fido/message/TLV;->tag:I

    const/16 v2, 0x31

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/alipay/fido/message/TLV;->tag:I

    const/16 v2, 0x21

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/alipay/fido/message/TLV;->tag:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/alipay/fido/message/TLV;->tag:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/alipay/fido/message/TLV;->tag:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/alipay/fido/message/TLV;->tag:I

    const/16 v2, 0x32

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/alipay/fido/message/TLV;->tag:I

    const/16 v2, 0x22

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/alipay/fido/message/TLV;->tag:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/alipay/fido/message/TLV;->tag:I

    const/16 v2, 0x24

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/alipay/fido/message/TLV;->tag:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/alipay/fido/message/TLV;->tag:I

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChildren(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alipay/fido/message/TLV;->children:Ljava/util/List;

    .line 150
    return-void
.end method

.method public setLength(I)V
    .locals 2

    .prologue
    .line 95
    sget v0, Lcom/alipay/fido/message/TLV;->UINT16_MIN:I

    if-lt p1, v0, :cond_0

    sget v0, Lcom/alipay/fido/message/TLV;->UNIT16_MAX:I

    if-le p1, v0, :cond_1

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Length should be a unsigned int 16, range 0~65535"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    iput p1, p0, Lcom/alipay/fido/message/TLV;->length:I

    .line 99
    return-void
.end method

.method public setTag(I)V
    .locals 2

    .prologue
    .line 78
    sget v0, Lcom/alipay/fido/message/TLV;->UINT16_MIN:I

    if-lt p1, v0, :cond_0

    sget v0, Lcom/alipay/fido/message/TLV;->UNIT16_MAX:I

    if-le p1, v0, :cond_1

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tag should be a unsigned int 16, range 0~65535"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    iput p1, p0, Lcom/alipay/fido/message/TLV;->tag:I

    .line 82
    return-void
.end method

.method public setValue(B)V
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/fido/message/TLV;->value:[B

    .line 120
    iget-object v0, p0, Lcom/alipay/fido/message/TLV;->value:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 121
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/fido/message/TLV;->setValue([B)V

    .line 136
    return-void
.end method

.method public setValue([B)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alipay/fido/message/TLV;->value:[B

    .line 113
    return-void
.end method

.method public setValueByTag(ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/fido/message/TLV;->setValueByTag(I[B)Z

    move-result v0

    return v0
.end method

.method public setValueByTag(I[B)Z
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/alipay/fido/message/TLV;->findByTag(I)Lcom/alipay/fido/message/TLV;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0, p2}, Lcom/alipay/fido/message/TLV;->setValue([B)V

    .line 198
    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValueUINT16(I)V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/fido/message/TLV;->value:[B

    .line 128
    iget-object v0, p0, Lcom/alipay/fido/message/TLV;->value:[B

    invoke-static {v0}, Lcom/alipay/fido/message/ByteArray;->wrap([B)Lcom/alipay/fido/message/ByteArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/fido/message/ByteArray;->writeUINT16(I)V

    .line 129
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "TLV [tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/fido/message/TLV;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/fido/message/TLV;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/fido/message/TLV;->value:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", children="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/fido/message/TLV;->children:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
