.class public final Lcom/alipay/nfc/tech/FeliCa$Tag;
.super Ljava/lang/Object;
.source "FeliCa.java"


# instance fields
.field private idm:Lcom/alipay/nfc/tech/FeliCa$IDm;

.field private isFeliCaLite:Z

.field private final nfcTag:Landroid/nfc/tech/NfcF;

.field private pmm:Lcom/alipay/nfc/tech/FeliCa$PMm;

.field private sys:I


# direct methods
.method public constructor <init>(Landroid/nfc/tech/NfcF;)V
    .locals 2

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    iput-object p1, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->nfcTag:Landroid/nfc/tech/NfcF;

    .line 428
    invoke-virtual {p1}, Landroid/nfc/tech/NfcF;->getSystemCode()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/nfc/tech/FeliCa$SystemCode;->toInt([B)I

    move-result v0

    iput v0, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->sys:I

    .line 429
    new-instance v0, Lcom/alipay/nfc/tech/FeliCa$IDm;

    invoke-virtual {p1}, Landroid/nfc/tech/NfcF;->getTag()Landroid/nfc/Tag;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/Tag;->getId()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/FeliCa$IDm;-><init>([B)V

    iput-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->idm:Lcom/alipay/nfc/tech/FeliCa$IDm;

    .line 430
    new-instance v0, Lcom/alipay/nfc/tech/FeliCa$PMm;

    invoke-virtual {p1}, Landroid/nfc/tech/NfcF;->getManufacturer()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/FeliCa$PMm;-><init>([B)V

    iput-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->pmm:Lcom/alipay/nfc/tech/FeliCa$PMm;

    .line 431
    return-void
.end method

.method private searchServiceCode(I)[B
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    .line 509
    new-instance v0, Lcom/alipay/nfc/tech/FeliCa$Command;

    iget-object v1, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->idm:Lcom/alipay/nfc/tech/FeliCa$IDm;

    const/4 v2, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 510
    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 509
    invoke-direct {v0, v6, v1, v2}, Lcom/alipay/nfc/tech/FeliCa$Command;-><init>(BLcom/alipay/nfc/tech/FeliCa$IDm;[B)V

    .line 512
    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/FeliCa$Tag;->transceive(Lcom/alipay/nfc/tech/FeliCa$Command;)[B

    move-result-object v0

    .line 513
    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    aget-byte v1, v0, v5

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    .line 514
    :cond_0
    sget-object v0, Lcom/alipay/nfc/tech/FeliCa;->EMPTY:[B

    .line 516
    :goto_0
    return-object v0

    :cond_1
    array-length v1, v0

    invoke-static {v0, v6, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final checkFeliCaLite()Z
    .locals 1

    .prologue
    .line 446
    const v0, 0x88b4

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/FeliCa$Tag;->polling(I)Lcom/alipay/nfc/tech/FeliCa$PollingResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/FeliCa$PollingResponse;->getIDm()Lcom/alipay/nfc/tech/FeliCa$IDm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/FeliCa$IDm;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->isFeliCaLite:Z

    .line 447
    iget-boolean v0, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->isFeliCaLite:Z

    return v0

    .line 446
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->nfcTag:Landroid/nfc/tech/NfcF;

    invoke-virtual {v0}, Landroid/nfc/tech/NfcF;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final connect()V
    .locals 1

    .prologue
    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->nfcTag:Landroid/nfc/tech/NfcF;

    invoke-virtual {v0}, Landroid/nfc/tech/NfcF;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final getIDm()Lcom/alipay/nfc/tech/FeliCa$IDm;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->idm:Lcom/alipay/nfc/tech/FeliCa$IDm;

    return-object v0
.end method

.method public final getMemoryConfigBlock()Lcom/alipay/nfc/tech/FeliCa$MemoryConfigurationBlock;
    .locals 2

    .prologue
    .line 562
    const/16 v0, -0x78

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/FeliCa$Tag;->readWithoutEncryption(B)Lcom/alipay/nfc/tech/FeliCa$ReadResponse;

    move-result-object v1

    .line 563
    if-eqz v1, :cond_0

    new-instance v0, Lcom/alipay/nfc/tech/FeliCa$MemoryConfigurationBlock;

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/FeliCa$ReadResponse;->getBlockData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/FeliCa$MemoryConfigurationBlock;-><init>([B)V

    :goto_0
    return-object v0

    .line 564
    :cond_0
    const/4 v0, 0x0

    .line 563
    goto :goto_0
.end method

.method public final getPMm()Lcom/alipay/nfc/tech/FeliCa$PMm;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->pmm:Lcom/alipay/nfc/tech/FeliCa$PMm;

    return-object v0
.end method

.method public final getServiceCodeList()[Lcom/alipay/nfc/tech/FeliCa$ServiceCode;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v6, -0x1

    .line 489
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 493
    :goto_0
    invoke-direct {p0, v0}, Lcom/alipay/nfc/tech/FeliCa$Tag;->searchServiceCode(I)[B

    move-result-object v3

    .line 494
    array-length v4, v3

    if-eq v4, v7, :cond_0

    array-length v4, v3

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 495
    :cond_0
    array-length v4, v3

    if-ne v4, v7, :cond_2

    .line 498
    const/4 v4, 0x0

    aget-byte v4, v3, v4

    if-ne v4, v6, :cond_1

    aget-byte v4, v3, v1

    if-eq v4, v6, :cond_3

    .line 499
    :cond_1
    new-instance v4, Lcom/alipay/nfc/tech/FeliCa$ServiceCode;

    invoke-direct {v4, v3}, Lcom/alipay/nfc/tech/FeliCa$ServiceCode;-><init>([B)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 492
    goto :goto_0

    .line 505
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alipay/nfc/tech/FeliCa$ServiceCode;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/nfc/tech/FeliCa$ServiceCode;

    return-object v0
.end method

.method public final getSystemCode()I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->sys:I

    return v0
.end method

.method public final getSystemCodeList()[Lcom/alipay/nfc/tech/FeliCa$SystemCode;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 476
    new-instance v1, Lcom/alipay/nfc/tech/FeliCa$Command;

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->idm:Lcom/alipay/nfc/tech/FeliCa$IDm;

    new-array v4, v0, [B

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/nfc/tech/FeliCa$Command;-><init>(BLcom/alipay/nfc/tech/FeliCa$IDm;[B)V

    .line 477
    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/FeliCa$Tag;->transceive(Lcom/alipay/nfc/tech/FeliCa$Command;)[B

    move-result-object v1

    .line 478
    const/16 v2, 0xa

    aget-byte v2, v1, v2

    .line 479
    new-array v3, v2, [Lcom/alipay/nfc/tech/FeliCa$SystemCode;

    .line 481
    :goto_0
    if-lt v0, v2, :cond_0

    .line 485
    return-object v3

    .line 482
    :cond_0
    new-instance v4, Lcom/alipay/nfc/tech/FeliCa$SystemCode;

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0xb

    .line 483
    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0xd

    .line 482
    invoke-static {v1, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alipay/nfc/tech/FeliCa$SystemCode;-><init>([B)V

    aput-object v4, v3, v0

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final isFeliCaLite()Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->isFeliCaLite:Z

    return v0
.end method

.method public final polling()Lcom/alipay/nfc/tech/FeliCa$PollingResponse;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 466
    new-instance v0, Lcom/alipay/nfc/tech/FeliCa$Command;

    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 467
    const/16 v2, -0x78

    aput-byte v2, v1, v3

    .line 468
    const/16 v2, -0x4c

    aput-byte v2, v1, v4

    const/4 v2, 0x2

    aput-byte v4, v1, v2

    .line 466
    invoke-direct {v0, v3, v1}, Lcom/alipay/nfc/tech/FeliCa$Command;-><init>(B[B)V

    .line 469
    new-instance v1, Lcom/alipay/nfc/tech/FeliCa$PollingResponse;

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/FeliCa$Tag;->transceive(Lcom/alipay/nfc/tech/FeliCa$Command;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/nfc/tech/FeliCa$PollingResponse;-><init>([B)V

    .line 470
    invoke-virtual {v1}, Lcom/alipay/nfc/tech/FeliCa$PollingResponse;->getIDm()Lcom/alipay/nfc/tech/FeliCa$IDm;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->idm:Lcom/alipay/nfc/tech/FeliCa$IDm;

    .line 471
    invoke-virtual {v1}, Lcom/alipay/nfc/tech/FeliCa$PollingResponse;->getPMm()Lcom/alipay/nfc/tech/FeliCa$PMm;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->pmm:Lcom/alipay/nfc/tech/FeliCa$PMm;

    .line 472
    return-object v1
.end method

.method public final polling(I)Lcom/alipay/nfc/tech/FeliCa$PollingResponse;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 455
    new-instance v0, Lcom/alipay/nfc/tech/FeliCa$Command;

    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 456
    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    const/4 v2, 0x2

    .line 457
    aput-byte v4, v1, v2

    .line 455
    invoke-direct {v0, v3, v1}, Lcom/alipay/nfc/tech/FeliCa$Command;-><init>(B[B)V

    .line 459
    new-instance v1, Lcom/alipay/nfc/tech/FeliCa$PollingResponse;

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/FeliCa$Tag;->transceive(Lcom/alipay/nfc/tech/FeliCa$Command;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/nfc/tech/FeliCa$PollingResponse;-><init>([B)V

    .line 460
    invoke-virtual {v1}, Lcom/alipay/nfc/tech/FeliCa$PollingResponse;->getIDm()Lcom/alipay/nfc/tech/FeliCa$IDm;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->idm:Lcom/alipay/nfc/tech/FeliCa$IDm;

    .line 461
    invoke-virtual {v1}, Lcom/alipay/nfc/tech/FeliCa$PollingResponse;->getPMm()Lcom/alipay/nfc/tech/FeliCa$PMm;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->pmm:Lcom/alipay/nfc/tech/FeliCa$PMm;

    .line 462
    return-object v1
.end method

.method public final readWithoutEncryption(B)Lcom/alipay/nfc/tech/FeliCa$ReadResponse;
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    .line 528
    new-instance v0, Lcom/alipay/nfc/tech/FeliCa$Command;

    iget-object v1, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->idm:Lcom/alipay/nfc/tech/FeliCa$IDm;

    new-array v2, v5, [B

    const/4 v3, 0x0

    .line 529
    aput-byte v4, v2, v3

    const/16 v3, 0xb

    aput-byte v3, v2, v4

    const/4 v3, 0x3

    .line 530
    aput-byte v4, v2, v3

    const/4 v3, 0x4

    .line 531
    const/16 v4, -0x80

    aput-byte v4, v2, v3

    const/4 v3, 0x5

    aput-byte p1, v2, v3

    .line 528
    invoke-direct {v0, v5, v1, v2}, Lcom/alipay/nfc/tech/FeliCa$Command;-><init>(BLcom/alipay/nfc/tech/FeliCa$IDm;[B)V

    .line 532
    new-instance v1, Lcom/alipay/nfc/tech/FeliCa$ReadResponse;

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/FeliCa$Tag;->transceive(Lcom/alipay/nfc/tech/FeliCa$Command;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/nfc/tech/FeliCa$ReadResponse;-><init>([B)V

    return-object v1
.end method

.method public final readWithoutEncryption(Lcom/alipay/nfc/tech/FeliCa$ServiceCode;B)Lcom/alipay/nfc/tech/FeliCa$ReadResponse;
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 520
    invoke-virtual {p1}, Lcom/alipay/nfc/tech/FeliCa$ServiceCode;->getBytes()[B

    move-result-object v0

    .line 521
    new-instance v1, Lcom/alipay/nfc/tech/FeliCa$Command;

    iget-object v2, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->idm:Lcom/alipay/nfc/tech/FeliCa$IDm;

    new-array v3, v6, [B

    .line 522
    aput-byte v5, v3, v4

    aget-byte v4, v0, v4

    aput-byte v4, v3, v5

    const/4 v4, 0x2

    aget-byte v0, v0, v5

    aput-byte v0, v3, v4

    const/4 v0, 0x3

    aput-byte v5, v3, v0

    const/4 v0, 0x4

    .line 523
    const/16 v4, -0x80

    aput-byte v4, v3, v0

    const/4 v0, 0x5

    aput-byte p2, v3, v0

    .line 521
    invoke-direct {v1, v6, v2, v3}, Lcom/alipay/nfc/tech/FeliCa$Command;-><init>(BLcom/alipay/nfc/tech/FeliCa$IDm;[B)V

    .line 524
    new-instance v0, Lcom/alipay/nfc/tech/FeliCa$ReadResponse;

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/FeliCa$Tag;->transceive(Lcom/alipay/nfc/tech/FeliCa$Command;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/FeliCa$ReadResponse;-><init>([B)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    iget-object v1, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->idm:Lcom/alipay/nfc/tech/FeliCa$IDm;

    if-eqz v1, :cond_0

    .line 571
    iget-object v1, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->idm:Lcom/alipay/nfc/tech/FeliCa$IDm;

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/FeliCa$IDm;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    iget-object v1, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->pmm:Lcom/alipay/nfc/tech/FeliCa$PMm;

    if-eqz v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->pmm:Lcom/alipay/nfc/tech/FeliCa$PMm;

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/FeliCa$PMm;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transceive(Lcom/alipay/nfc/tech/FeliCa$Command;)[B
    .locals 2

    .prologue
    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->nfcTag:Landroid/nfc/tech/NfcF;

    invoke-virtual {p1}, Lcom/alipay/nfc/tech/FeliCa$Command;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/tech/NfcF;->transceive([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 597
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/nfc/tech/FeliCa;->EMPTY:[B

    goto :goto_0
.end method

.method public final writeWithoutEncryption(B[B)Lcom/alipay/nfc/tech/FeliCa$WriteResponse;
    .locals 6

    .prologue
    const/16 v0, 0x10

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 549
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 550
    const/4 v2, 0x6

    new-array v2, v2, [B

    aput-byte v4, v2, v5

    .line 551
    const/16 v3, 0x9

    aput-byte v3, v2, v4

    const/4 v3, 0x3

    .line 552
    aput-byte v4, v2, v3

    const/4 v3, 0x4

    .line 553
    const/16 v4, -0x80

    aput-byte v4, v2, v3

    const/4 v3, 0x5

    aput-byte p1, v2, v3

    .line 550
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 554
    array-length v2, p2

    if-le v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, p2, v5, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 556
    new-instance v0, Lcom/alipay/nfc/tech/FeliCa$Command;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->idm:Lcom/alipay/nfc/tech/FeliCa$IDm;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/alipay/nfc/tech/FeliCa$Command;-><init>(BLcom/alipay/nfc/tech/FeliCa$IDm;[B)V

    .line 558
    new-instance v1, Lcom/alipay/nfc/tech/FeliCa$WriteResponse;

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/FeliCa$Tag;->transceive(Lcom/alipay/nfc/tech/FeliCa$Command;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/nfc/tech/FeliCa$WriteResponse;-><init>([B)V

    return-object v1

    .line 554
    :cond_0
    array-length v0, p2

    goto :goto_0
.end method

.method public final writeWithoutEncryption(Lcom/alipay/nfc/tech/FeliCa$ServiceCode;B[B)Lcom/alipay/nfc/tech/FeliCa$WriteResponse;
    .locals 7

    .prologue
    const/16 v0, 0x10

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 538
    invoke-virtual {p1}, Lcom/alipay/nfc/tech/FeliCa$ServiceCode;->getBytes()[B

    move-result-object v1

    .line 539
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 540
    const/4 v3, 0x6

    new-array v3, v3, [B

    aput-byte v5, v3, v6

    aget-byte v4, v1, v6

    aput-byte v4, v3, v5

    const/4 v4, 0x2

    aget-byte v1, v1, v5

    aput-byte v1, v3, v4

    const/4 v1, 0x3

    .line 541
    aput-byte v5, v3, v1

    const/4 v1, 0x4

    const/16 v4, -0x80

    aput-byte v4, v3, v1

    const/4 v1, 0x5

    aput-byte p2, v3, v1

    .line 540
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 542
    array-length v1, p3

    if-le v1, v0, :cond_0

    :goto_0
    invoke-virtual {v2, p3, v6, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 543
    new-instance v0, Lcom/alipay/nfc/tech/FeliCa$Command;

    const/16 v1, 0x8

    iget-object v3, p0, Lcom/alipay/nfc/tech/FeliCa$Tag;->idm:Lcom/alipay/nfc/tech/FeliCa$IDm;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/nfc/tech/FeliCa$Command;-><init>(BLcom/alipay/nfc/tech/FeliCa$IDm;[B)V

    .line 544
    new-instance v1, Lcom/alipay/nfc/tech/FeliCa$WriteResponse;

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/FeliCa$Tag;->transceive(Lcom/alipay/nfc/tech/FeliCa$Command;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/nfc/tech/FeliCa$WriteResponse;-><init>([B)V

    return-object v1

    .line 542
    :cond_0
    array-length v0, p3

    goto :goto_0
.end method
