.class public final Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;
.super Ljava/lang/Object;
.source "CommandAPDU.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAX_APDU_SIZE:I = 0x10008

.field private static final serialVersionUID:J = 0x58875fe1cbe621dL


# instance fields
.field private apdu:[B

.field private transient dataOffset:I

.field private transient nc:I

.field private transient ne:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 115
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, v6

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;-><init>(IIII[BIII)V

    .line 116
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 134
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, v6

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;-><init>(IIII[BIII)V

    .line 135
    return-void
.end method

.method public constructor <init>(IIII[B)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 155
    invoke-static {p5}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->a([B)I

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;-><init>(IIII[BIII)V

    .line 156
    return-void
.end method

.method public constructor <init>(IIII[BI)V
    .locals 9

    .prologue
    .line 206
    const/4 v6, 0x0

    invoke-static {p5}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->a([B)I

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;-><init>(IIII[BIII)V

    .line 207
    return-void
.end method

.method public constructor <init>(IIII[BII)V
    .locals 9

    .prologue
    .line 182
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;-><init>(IIII[BIII)V

    .line 183
    return-void
.end method

.method public constructor <init>(IIII[BIII)V
    .locals 7

    .prologue
    const/16 v6, 0x100

    const/4 v5, 0x7

    const/4 v4, 0x4

    const/4 v0, 0x0

    const/4 v3, 0x5

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    invoke-static {p5, p6, p7}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->a([BII)V

    .line 316
    const v1, 0xffff

    if-le p7, v1, :cond_0

    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "dataLength is too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_0
    if-gez p8, :cond_1

    .line 320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ne must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_1
    const/high16 v1, 0x10000

    if-le p8, v1, :cond_2

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ne is too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_2
    iput p8, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->ne:I

    .line 326
    iput p7, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->nc:I

    .line 327
    if-nez p7, :cond_8

    .line 328
    if-nez p8, :cond_4

    .line 330
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    .line 331
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->a(IIII)V

    .line 405
    :cond_3
    :goto_0
    return-void

    .line 334
    :cond_4
    if-gt p8, v6, :cond_6

    .line 337
    if-eq p8, v6, :cond_5

    int-to-byte v0, p8

    .line 338
    :cond_5
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    .line 339
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->a(IIII)V

    .line 340
    iget-object v1, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    aput-byte v0, v1, v4

    goto :goto_0

    .line 345
    :cond_6
    const/high16 v1, 0x10000

    if-ne p8, v1, :cond_7

    move v1, v0

    .line 352
    :goto_1
    new-array v2, v5, [B

    iput-object v2, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    .line 353
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->a(IIII)V

    .line 354
    iget-object v2, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    aput-byte v1, v2, v3

    .line 355
    iget-object v1, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    const/4 v2, 0x6

    aput-byte v0, v1, v2

    goto :goto_0

    .line 349
    :cond_7
    shr-int/lit8 v0, p8, 0x8

    int-to-byte v1, v0

    .line 350
    int-to-byte v0, p8

    goto :goto_1

    .line 359
    :cond_8
    if-nez p8, :cond_a

    .line 361
    const/16 v1, 0xff

    if-gt p7, v1, :cond_9

    .line 363
    add-int/lit8 v0, p7, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    .line 364
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->a(IIII)V

    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    int-to-byte v1, p7

    aput-byte v1, v0, v4

    .line 366
    iput v3, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->dataOffset:I

    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    invoke-static {p5, p6, v0, v3, p7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 370
    :cond_9
    add-int/lit8 v1, p7, 0x7

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    .line 371
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->a(IIII)V

    .line 372
    iget-object v1, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    aput-byte v0, v1, v4

    .line 373
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    shr-int/lit8 v1, p7, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 374
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    const/4 v1, 0x6

    int-to-byte v2, p7

    aput-byte v2, v0, v1

    .line 375
    iput v5, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->dataOffset:I

    .line 376
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    invoke-static {p5, p6, v0, v5, p7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 380
    :cond_a
    const/16 v1, 0xff

    if-gt p7, v1, :cond_c

    if-gt p8, v6, :cond_c

    .line 382
    add-int/lit8 v1, p7, 0x6

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    .line 383
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->a(IIII)V

    .line 384
    iget-object v1, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    int-to-byte v2, p7

    aput-byte v2, v1, v4

    .line 385
    iput v3, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->dataOffset:I

    .line 386
    iget-object v1, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    invoke-static {p5, p6, v1, v3, p7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    iget-object v1, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    iget-object v2, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq p8, v6, :cond_b

    int-to-byte v0, p8

    :cond_b
    aput-byte v0, v1, v2

    goto/16 :goto_0

    .line 390
    :cond_c
    add-int/lit8 v1, p7, 0x9

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    .line 391
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->a(IIII)V

    .line 392
    iget-object v1, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    aput-byte v0, v1, v4

    .line 393
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    shr-int/lit8 v1, p7, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 394
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    const/4 v1, 0x6

    int-to-byte v2, p7

    aput-byte v2, v0, v1

    .line 395
    iput v5, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->dataOffset:I

    .line 396
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    invoke-static {p5, p6, v0, v5, p7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    const/high16 v0, 0x10000

    if-eq p8, v0, :cond_3

    .line 398
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    .line 399
    iget-object v1, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    shr-int/lit8 v2, p8, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 400
    iget-object v1, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v2, p8

    aput-byte v2, v1, v0

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 102
    invoke-direct {p0}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->a()V

    .line 103
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    .line 39
    invoke-direct {p0}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->a()V

    .line 40
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->a([BII)V

    .line 63
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    invoke-direct {p0}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->a()V

    .line 66
    return-void
.end method

.method private static a([B)I
    .locals 1

    .prologue
    .line 210
    if-eqz p0, :cond_0

    array-length v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 6

    .prologue
    const/high16 v2, 0x10000

    const/16 v0, 0x100

    const/4 v3, 0x4

    const/4 v5, 0x7

    const/4 v4, 0x5

    .line 228
    iget-object v1, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    array-length v1, v1

    if-ge v1, v3, :cond_0

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "apdu must be at least 4 bytes long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    array-length v1, v1

    if-ne v1, v3, :cond_1

    .line 281
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    .line 236
    iget-object v3, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    array-length v3, v3

    if-ne v3, v4, :cond_3

    .line 238
    if-nez v1, :cond_2

    :goto_1
    iput v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->ne:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 241
    :cond_3
    if-eqz v1, :cond_7

    .line 242
    iget-object v2, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    array-length v2, v2

    add-int/lit8 v3, v1, 0x5

    if-ne v2, v3, :cond_4

    .line 244
    iput v1, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->nc:I

    .line 245
    iput v4, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->dataOffset:I

    goto :goto_0

    .line 247
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    array-length v2, v2

    add-int/lit8 v3, v1, 0x6

    if-ne v2, v3, :cond_6

    .line 249
    iput v1, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->nc:I

    .line 250
    iput v4, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->dataOffset:I

    .line 251
    iget-object v1, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    iget-object v2, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 252
    if-nez v1, :cond_5

    :goto_2
    iput v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->ne:I

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2

    .line 255
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid APDU: length="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", b1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    array-length v0, v0

    if-ge v0, v5, :cond_8

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid APDU: length="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", b1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v3, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    const/4 v4, 0x6

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    .line 262
    iget-object v3, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    array-length v3, v3

    if-ne v3, v5, :cond_a

    .line 264
    if-nez v0, :cond_9

    move v0, v2

    :cond_9
    iput v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->ne:I

    goto/16 :goto_0

    .line 267
    :cond_a
    if-nez v0, :cond_b

    .line 268
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invalid APDU: length="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", b1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", b2||b3="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    :cond_b
    iget-object v3, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    array-length v3, v3

    add-int/lit8 v4, v0, 0x7

    if-ne v3, v4, :cond_c

    .line 272
    iput v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->nc:I

    .line 273
    iput v5, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->dataOffset:I

    goto/16 :goto_0

    .line 275
    :cond_c
    iget-object v3, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    array-length v3, v3

    add-int/lit8 v4, v0, 0x9

    if-ne v3, v4, :cond_e

    .line 277
    iput v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->nc:I

    .line 278
    iput v5, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->dataOffset:I

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    .line 280
    iget-object v1, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v3, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    .line 281
    if-nez v0, :cond_d

    :goto_3
    iput v2, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->ne:I

    goto/16 :goto_0

    :cond_d
    move v2, v0

    goto :goto_3

    .line 283
    :cond_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invalid APDU: length="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", b1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", b2||b3="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private a(IIII)V
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 409
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 410
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    const/4 v1, 0x2

    int-to-byte v2, p3

    aput-byte v2, v0, v1

    .line 411
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    const/4 v1, 0x3

    int-to-byte v2, p4

    aput-byte v2, v0, v1

    .line 412
    return-void
.end method

.method private static a([BII)V
    .locals 2

    .prologue
    .line 69
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Offset and length must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    if-nez p0, :cond_2

    .line 73
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "offset and length must be 0 if array is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_2
    array-length v0, p0

    sub-int/2addr v0, p2

    if-le p1, v0, :cond_3

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Offset plus length exceed array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_3
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 512
    if-ne p0, p1, :cond_0

    .line 513
    const/4 v0, 0x1

    .line 519
    :goto_0
    return v0

    .line 515
    :cond_0
    instance-of v0, p1, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;

    if-nez v0, :cond_1

    .line 516
    const/4 v0, 0x0

    goto :goto_0

    .line 518
    :cond_1
    check-cast p1, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;

    .line 519
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    iget-object v1, p1, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public final getBytes()[B
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final getCLA()I
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final getData()[B
    .locals 5

    .prologue
    .line 470
    iget v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->nc:I

    new-array v0, v0, [B

    .line 471
    iget-object v1, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    iget v2, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->dataOffset:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->nc:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    return-object v0
.end method

.method public final getINS()I
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final getNc()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->nc:I

    return v0
.end method

.method public final getNe()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->ne:I

    return v0
.end method

.method public final getP1()I
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final getP2()I
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CommmandAPDU: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->apdu:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " bytes, nc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->nc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ne="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->ne:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
