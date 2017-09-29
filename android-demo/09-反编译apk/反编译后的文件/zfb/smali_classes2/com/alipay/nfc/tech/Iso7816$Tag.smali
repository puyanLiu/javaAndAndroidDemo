.class public final Lcom/alipay/nfc/tech/Iso7816$Tag;
.super Ljava/lang/Object;
.source "Iso7816.java"


# instance fields
.field private id:Lcom/alipay/nfc/tech/Iso7816$ID;

.field private final nfcTag:Landroid/nfc/tech/IsoDep;


# direct methods
.method public constructor <init>(Landroid/nfc/tech/IsoDep;)V
    .locals 2

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p1, p0, Lcom/alipay/nfc/tech/Iso7816$Tag;->nfcTag:Landroid/nfc/tech/IsoDep;

    .line 366
    new-instance v0, Lcom/alipay/nfc/tech/Iso7816$ID;

    invoke-virtual {p1}, Landroid/nfc/tech/IsoDep;->getTag()Landroid/nfc/Tag;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/Tag;->getId()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/Iso7816$ID;-><init>([B)V

    iput-object v0, p0, Lcom/alipay/nfc/tech/Iso7816$Tag;->id:Lcom/alipay/nfc/tech/Iso7816$ID;

    .line 367
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816$Tag;->nfcTag:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final connect()V
    .locals 1

    .prologue
    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816$Tag;->nfcTag:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final getBalance(Z)Lcom/alipay/nfc/tech/Iso7816$Response;
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    .line 400
    const/4 v1, 0x5

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v1, v2

    .line 401
    const/16 v2, 0x5c

    aput-byte v2, v1, v0

    const/4 v2, 0x3

    .line 403
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :cond_0
    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 404
    aput-byte v4, v1, v4

    .line 407
    new-instance v0, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->transceive([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    return-object v0
.end method

.method public final getID()Lcom/alipay/nfc/tech/Iso7816$ID;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816$Tag;->id:Lcom/alipay/nfc/tech/Iso7816$ID;

    return-object v0
.end method

.method public final initPurchase(Z)Lcom/alipay/nfc/tech/Iso7816$Response;
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/16 v6, 0xf

    const/16 v5, 0xb

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 385
    new-array v2, v7, [B

    const/4 v3, 0x0

    .line 386
    const/16 v4, -0x80

    aput-byte v4, v2, v3

    .line 387
    const/16 v3, 0x50

    aput-byte v3, v2, v1

    .line 388
    aput-byte v1, v2, v0

    const/4 v3, 0x3

    .line 389
    if-eqz p1, :cond_0

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, v2, v3

    const/4 v0, 0x4

    .line 390
    aput-byte v5, v2, v0

    const/4 v0, 0x5

    .line 391
    aput-byte v1, v2, v0

    const/16 v0, 0xa

    .line 392
    aput-byte v7, v2, v0

    const/16 v0, 0x22

    aput-byte v0, v2, v5

    const/16 v0, 0xc

    const/16 v1, 0x33

    aput-byte v1, v2, v0

    const/16 v0, 0xd

    .line 393
    const/16 v1, 0x44

    aput-byte v1, v2, v0

    const/16 v0, 0xe

    const/16 v1, 0x55

    aput-byte v1, v2, v0

    const/16 v0, 0x66

    aput-byte v0, v2, v6

    const/16 v0, 0x10

    aput-byte v6, v2, v0

    .line 396
    new-instance v0, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v2}, Lcom/alipay/nfc/tech/Iso7816$Tag;->transceive([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    return-object v0

    :cond_0
    move v0, v1

    .line 389
    goto :goto_0
.end method

.method public final isConnected()Z
    .locals 1

    .prologue
    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816$Tag;->nfcTag:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 489
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final readBinary(I)Lcom/alipay/nfc/tech/Iso7816$Response;
    .locals 3

    .prologue
    .line 433
    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x1

    .line 434
    const/16 v2, -0x50

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 435
    and-int/lit8 v2, p1, 0x1f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 440
    new-instance v1, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->transceive([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    return-object v1
.end method

.method public final readData(I)Lcom/alipay/nfc/tech/Iso7816$Response;
    .locals 3

    .prologue
    .line 444
    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    .line 445
    const/16 v2, -0x36

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    .line 447
    and-int/lit8 v2, p1, 0x1f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 451
    new-instance v1, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->transceive([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    return-object v1
.end method

.method public final readRecord(I)Lcom/alipay/nfc/tech/Iso7816$Response;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 422
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 423
    const/16 v1, -0x4e

    aput-byte v1, v0, v2

    const/4 v1, 0x2

    .line 424
    aput-byte v2, v0, v1

    const/4 v1, 0x3

    .line 425
    shl-int/lit8 v2, p1, 0x3

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 429
    new-instance v1, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->transceive([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    return-object v1
.end method

.method public final readRecord(II)Lcom/alipay/nfc/tech/Iso7816$Response;
    .locals 3

    .prologue
    .line 411
    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x1

    .line 412
    const/16 v2, -0x4e

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 413
    int-to-byte v2, p2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    .line 414
    shl-int/lit8 v2, p1, 0x3

    or-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 418
    new-instance v1, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->transceive([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    return-object v1
.end method

.method public final varargs selectByID([B)Lcom/alipay/nfc/tech/Iso7816$Response;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 455
    array-length v0, p1

    add-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 456
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 457
    const/16 v2, -0x5c

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 458
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 459
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 460
    array-length v2, p1

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 461
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 463
    new-instance v1, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->transceive([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    return-object v1
.end method

.method public final varargs selectByName([B)Lcom/alipay/nfc/tech/Iso7816$Response;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 467
    array-length v0, p1

    add-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 468
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 469
    const/16 v2, -0x5c

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 470
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 471
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 472
    array-length v2, p1

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 473
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 475
    new-instance v1, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->transceive([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    return-object v1
.end method

.method public final transceive([B)[B
    .locals 1

    .prologue
    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816$Tag;->nfcTag:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0, p1}, Landroid/nfc/tech/IsoDep;->transceive([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 508
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/nfc/tech/Iso7816$Response;->ERROR:[B

    goto :goto_0
.end method

.method public final verify()Lcom/alipay/nfc/tech/Iso7816$Response;
    .locals 3

    .prologue
    .line 374
    const/4 v0, 0x7

    new-array v0, v0, [B

    const/4 v1, 0x1

    .line 375
    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    .line 378
    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    .line 379
    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    .line 381
    new-instance v1, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->transceive([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    return-object v1
.end method
