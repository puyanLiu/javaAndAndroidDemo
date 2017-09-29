.class public Lcom/alipay/nfc/card/pboc/MyBankCard;
.super Lcom/alipay/nfc/card/pboc/PbocCard;
.source "MyBankCard.java"


# static fields
.field private static final MAX_TRANS_LOG:I = 0xa


# direct methods
.method protected constructor <init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/alipay/nfc/card/pboc/PbocCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    .line 18
    const-string/jumbo v0, "UNKNOWN_CARD"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/MyBankCard;->card_type:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "?"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/MyBankCard;->busi_type:Ljava/lang/String;

    .line 21
    return-void
.end method

.method static final load(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/MyBankCard;
    .locals 15

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 30
    sget-object v1, Lcom/alipay/nfc/card/pboc/PbocCard;->DFN_PSE:[B

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->selectByName([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    .line 35
    sget-object v1, Lcom/alipay/nfc/card/pboc/PbocCard;->DFN_PSE:[B

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->selectByName([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 40
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/alipay/nfc/tech/Iso7816$Tag;->readRecord(II)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 44
    const/16 v0, 0x4f

    invoke-virtual {v1, v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes(B)[B

    move-result-object v2

    .line 47
    invoke-static {v2}, Lcom/alipay/nfc/Util;->byte2hexString([B)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "a000000333010101"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 49
    new-instance v0, Lcom/alipay/nfc/card/pboc/MyBankCard;

    invoke-direct {v0, p0}, Lcom/alipay/nfc/card/pboc/MyBankCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    .line 50
    const-string/jumbo v3, "DEBIT_CARD"

    iput-object v3, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->card_type:Ljava/lang/String;

    .line 64
    :goto_0
    const/16 v3, 0x50

    invoke-virtual {v1, v3}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes(B)[B

    move-result-object v3

    .line 66
    if-eqz v2, :cond_6

    .line 67
    invoke-virtual {p0, v2}, Lcom/alipay/nfc/tech/Iso7816$Tag;->selectByName([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 69
    const/4 v1, 0x5

    new-array v1, v1, [B

    const/4 v2, 0x1

    .line 70
    const/16 v4, -0x4e

    aput-byte v4, v1, v2

    const/4 v2, 0x2

    .line 71
    const/4 v4, 0x1

    aput-byte v4, v1, v2

    const/4 v2, 0x3

    .line 72
    const/16 v4, 0xc

    aput-byte v4, v1, v2

    const/4 v2, 0x4

    .line 73
    const/16 v4, 0x3c

    aput-byte v4, v1, v2

    .line 75
    new-instance v2, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->transceive([B)[B

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    const/16 v1, 0x57

    invoke-virtual {v2, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes(B)[B

    move-result-object v2

    .line 77
    const/4 v1, 0x5

    new-array v1, v1, [B

    const/4 v4, 0x0

    const/16 v5, -0x80

    aput-byte v5, v1, v4

    const/4 v4, 0x1

    .line 78
    const/16 v5, -0x36

    aput-byte v5, v1, v4

    const/4 v4, 0x2

    .line 79
    const/16 v5, -0x61

    aput-byte v5, v1, v4

    const/4 v4, 0x3

    .line 80
    const/16 v5, 0x79

    aput-byte v5, v1, v4

    .line 83
    new-instance v4, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->transceive([B)[B

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    const/16 v1, 0x79

    invoke-virtual {v4, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes(B)[B

    move-result-object v4

    .line 85
    const/4 v1, 0x5

    new-array v1, v1, [B

    const/4 v5, 0x0

    const/16 v6, -0x80

    aput-byte v6, v1, v5

    const/4 v5, 0x1

    .line 86
    const/16 v6, -0x36

    aput-byte v6, v1, v5

    const/4 v5, 0x2

    .line 87
    const/16 v6, -0x61

    aput-byte v6, v1, v5

    const/4 v5, 0x3

    .line 88
    const/16 v6, 0x77

    aput-byte v6, v1, v5

    .line 91
    new-instance v5, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->transceive([B)[B

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    const/16 v1, 0x77

    invoke-virtual {v5, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes(B)[B

    move-result-object v5

    .line 94
    const/4 v1, 0x5

    new-array v1, v1, [B

    const/4 v6, 0x0

    const/16 v7, -0x80

    aput-byte v7, v1, v6

    const/4 v6, 0x1

    .line 95
    const/16 v7, -0x36

    aput-byte v7, v1, v6

    const/4 v6, 0x2

    .line 96
    const/16 v7, -0x61

    aput-byte v7, v1, v6

    const/4 v6, 0x3

    .line 97
    const/16 v7, 0x78

    aput-byte v7, v1, v6

    .line 100
    new-instance v6, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->transceive([B)[B

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    const/16 v1, 0x78

    invoke-virtual {v6, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes(B)[B

    move-result-object v6

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->logList:Ljava/util/List;

    .line 177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    const/4 v1, 0x0

    :goto_1
    iget-object v8, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->logList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/16 v9, 0xa

    if-lt v8, v9, :cond_a

    .line 299
    :cond_0
    invoke-static {v4}, Lcom/alipay/nfc/Util;->byte2hexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 300
    const-string/jumbo v4, "%.2f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    int-to-float v1, v1

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v1, v10

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v8, v9

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->cash:Ljava/lang/String;

    .line 302
    invoke-static {v5}, Lcom/alipay/nfc/Util;->byte2hexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 303
    const-string/jumbo v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    int-to-float v1, v1

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->balance_limit:Ljava/lang/String;

    .line 305
    invoke-static {v6}, Lcom/alipay/nfc/Util;->byte2hexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 306
    const-string/jumbo v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    int-to-float v1, v1

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->trans_limit:Ljava/lang/String;

    .line 309
    invoke-static {v3}, Lcom/alipay/nfc/Util;->trimZero([B)[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 311
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v4, "gbk"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->card_desc:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 316
    :cond_1
    :goto_2
    const/4 v1, 0x5

    new-array v1, v1, [B

    const/4 v3, 0x0

    const/16 v4, -0x80

    aput-byte v4, v1, v3

    const/4 v3, 0x1

    .line 317
    const/16 v4, -0x36

    aput-byte v4, v1, v3

    const/4 v3, 0x2

    .line 318
    const/16 v4, -0x61

    aput-byte v4, v1, v3

    const/4 v3, 0x3

    .line 319
    const/16 v4, 0x36

    aput-byte v4, v1, v3

    .line 322
    new-instance v3, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->transceive([B)[B

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {v3, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes([B)[B

    move-result-object v1

    .line 323
    invoke-static {v1}, Lcom/alipay/nfc/Util;->toInt([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->count:Ljava/lang/String;

    .line 327
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->log:Ljava/lang/String;

    .line 341
    const/4 v1, 0x5

    new-array v1, v1, [B

    const/4 v3, 0x1

    .line 342
    const/16 v4, -0x4e

    aput-byte v4, v1, v3

    const/4 v3, 0x2

    .line 343
    const/4 v4, 0x1

    aput-byte v4, v1, v3

    const/4 v3, 0x3

    .line 344
    const/16 v4, 0x14

    aput-byte v4, v1, v3

    const/4 v3, 0x4

    .line 345
    const/16 v4, 0x44

    aput-byte v4, v1, v3

    .line 347
    new-instance v3, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->transceive([B)[B

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    .line 351
    if-eqz v2, :cond_e

    array-length v1, v2

    if-lez v1, :cond_e

    .line 352
    invoke-static {v2}, Lcom/alipay/nfc/Util;->byte2hexString([B)Ljava/lang/String;

    move-result-object v4

    .line 354
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 355
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v1, v5, :cond_d

    move v1, v2

    .line 363
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 373
    :goto_4
    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-virtual {v3, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes([B)[B

    move-result-object v1

    .line 374
    if-eqz v1, :cond_3

    .line 375
    array-length v2, v1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_f

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "20"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "%02X.%02X.%02X"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-byte v7, v1, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget-byte v7, v1, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x2

    aget-byte v1, v1, v7

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->date:Ljava/lang/String;

    .line 382
    :cond_3
    :goto_5
    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    invoke-virtual {v3, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes([B)[B

    move-result-object v1

    .line 383
    if-eqz v1, :cond_4

    .line 384
    iget-object v2, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->date:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 385
    iget-object v2, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->date:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " - "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->date:Ljava/lang/String;

    .line 389
    :goto_6
    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_11

    .line 390
    iget-object v2, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->date:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "20"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%02X.%02X.%02X"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-byte v6, v1, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-byte v6, v1, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x2

    aget-byte v1, v1, v6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->date:Ljava/lang/String;

    .line 402
    :cond_4
    :goto_7
    const/4 v1, 0x5

    new-array v1, v1, [B

    const/4 v2, 0x1

    .line 403
    const/16 v3, -0x4e

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    .line 404
    const/4 v3, 0x1

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    .line 405
    const/16 v3, 0xc

    aput-byte v3, v1, v2

    const/4 v2, 0x4

    .line 406
    const/16 v3, 0x3c

    aput-byte v3, v1, v2

    .line 409
    new-instance v2, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->transceive([B)[B

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    .line 416
    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    invoke-virtual {v2, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/nfc/Util;->trimZero([B)[B

    move-result-object v1

    if-eqz v1, :cond_5

    .line 417
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [B

    fill-array-data v3, :array_4

    invoke-virtual {v2, v3}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/nfc/Util;->trimZero([B)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->idcard:Ljava/lang/String;

    .line 424
    :cond_5
    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    invoke-virtual {v2, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/nfc/Util;->trimZero([B)[B

    move-result-object v1

    if-eqz v1, :cond_12

    .line 426
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [B

    fill-array-data v3, :array_6

    invoke-virtual {v2, v3}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/nfc/Util;->trimZero([B)[B

    move-result-object v2

    const-string/jumbo v3, "gbk"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 480
    :cond_6
    :goto_8
    return-object v0

    .line 51
    :cond_7
    invoke-static {v2}, Lcom/alipay/nfc/Util;->byte2hexString([B)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "a000000333010102"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 53
    new-instance v0, Lcom/alipay/nfc/card/pboc/MyBankCard;

    invoke-direct {v0, p0}, Lcom/alipay/nfc/card/pboc/MyBankCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    .line 54
    const-string/jumbo v3, "CREDIT_CARD"

    iput-object v3, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->card_type:Ljava/lang/String;

    goto/16 :goto_0

    .line 55
    :cond_8
    invoke-static {v2}, Lcom/alipay/nfc/Util;->byte2hexString([B)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "a000000333010103"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 57
    new-instance v0, Lcom/alipay/nfc/card/pboc/MyBankCard;

    invoke-direct {v0, p0}, Lcom/alipay/nfc/card/pboc/MyBankCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    .line 58
    const-string/jumbo v3, "QUASI_CREDIT_CARD"

    iput-object v3, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->card_type:Ljava/lang/String;

    goto/16 :goto_0

    .line 60
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 179
    :cond_a
    const/4 v8, 0x5

    new-array v8, v8, [B

    const/4 v9, 0x1

    .line 180
    const/16 v10, -0x4e

    aput-byte v10, v8, v9

    const/4 v9, 0x2

    .line 181
    const/4 v10, 0x1

    aput-byte v10, v8, v9

    const/4 v9, 0x3

    .line 182
    const/16 v10, 0x5c

    aput-byte v10, v8, v9

    .line 185
    const/4 v9, 0x2

    const/4 v10, 0x2

    aget-byte v10, v8, v10

    add-int/2addr v10, v1

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 188
    new-instance v9, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v8}, Lcom/alipay/nfc/tech/Iso7816$Tag;->transceive([B)[B

    move-result-object v8

    invoke-direct {v9, v8}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    .line 190
    invoke-virtual {v9}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 191
    new-instance v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;

    invoke-direct {v8}, Lcom/alipay/nfc/card/pboc/LogInfoInner;-><init>()V

    .line 195
    invoke-virtual {v9}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes()[B

    move-result-object v9

    .line 199
    const/4 v10, 0x6

    const/4 v11, 0x6

    invoke-static {v9, v10, v11}, Lcom/alipay/nfc/Util;->byte2hexString([BII)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 202
    const/16 v11, 0x2a

    const/4 v12, 0x1

    invoke-static {v9, v11, v12}, Lcom/alipay/nfc/Util;->byte2hexString([BII)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    .line 251
    if-eqz v10, :cond_b

    .line 252
    const-string/jumbo v11, "\u672a\u77e5"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->optype:Ljava/lang/String;

    .line 257
    :goto_9
    const-string/jumbo v11, "%02X.%02X.%02X %02X:%02X:%02X "

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 258
    const/4 v14, 0x0

    aget-byte v14, v9, v14

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    aget-byte v14, v9, v14

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x2

    aget-byte v14, v9, v14

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, 0x3

    aget-byte v14, v9, v14

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const/4 v14, 0x4

    aget-byte v14, v9, v14

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    const/4 v14, 0x5

    aget-byte v14, v9, v14

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    .line 257
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->datetime:Ljava/lang/String;

    .line 259
    const-string/jumbo v11, "<br />"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->datetime:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    int-to-float v10, v10

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Lcom/alipay/nfc/Util;->toAmountString(F)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->cash:Ljava/lang/String;

    .line 262
    const-string/jumbo v10, " | "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->cash:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const/16 v10, 0x14

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Lcom/alipay/nfc/Util;->byte2hexString([BII)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    .line 272
    const-string/jumbo v10, "\u672a\u77e5"

    iput-object v10, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->currency:Ljava/lang/String;

    .line 274
    :goto_a
    const-string/jumbo v10, " | "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->currency:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const/16 v10, 0x16

    const/16 v11, 0x2a

    invoke-static {v9, v10, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/nfc/Util;->trimZero([B)[B

    move-result-object v10

    if-eqz v10, :cond_c

    .line 280
    :try_start_2
    new-instance v10, Ljava/lang/String;

    const/16 v11, 0x16

    const/16 v12, 0x2a

    invoke-static {v9, v11, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    invoke-static {v11}, Lcom/alipay/nfc/Util;->trimZero([B)[B

    move-result-object v11

    const-string/jumbo v12, "gbk"

    invoke-direct {v10, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v10, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->location:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 287
    :goto_b
    const-string/jumbo v10, " | "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->location:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string/jumbo v10, " | "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->optype:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string/jumbo v10, " | type:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v12, 0x2c

    const/4 v13, 0x1

    invoke-static {v9, v12, v13}, Lcom/alipay/nfc/Util;->byte2hexString([BII)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "<br>"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v9, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->logList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 205
    :sswitch_0
    const-string/jumbo v11, "\u5546\u54c1\u6216\u670d\u52a1"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->optype:Ljava/lang/String;

    goto/16 :goto_9

    .line 208
    :sswitch_1
    const-string/jumbo v11, "\u63d0\u6b3e/\u73b0\u91d1\u4ed8\u6b3e"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->optype:Ljava/lang/String;

    goto/16 :goto_9

    .line 211
    :sswitch_2
    const-string/jumbo v11, "\u8c03\u6574"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->optype:Ljava/lang/String;

    goto/16 :goto_9

    .line 214
    :sswitch_3
    const-string/jumbo v11, "\u4fe1\u7528\u8bc1"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->optype:Ljava/lang/String;

    goto/16 :goto_9

    .line 217
    :sswitch_4
    const-string/jumbo v11, "\u76f4\u63a5\u8f6c\u8d26"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->optype:Ljava/lang/String;

    goto/16 :goto_9

    .line 220
    :sswitch_5
    const-string/jumbo v11, "\u5546\u54c1\u6216\u670d\u52a1\u5e76\u73b0\u91d1\u652f\u4ed8"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->optype:Ljava/lang/String;

    goto/16 :goto_9

    .line 224
    :sswitch_6
    const-string/jumbo v11, "\u8fd8\u6b3e"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->optype:Ljava/lang/String;

    goto/16 :goto_9

    .line 227
    :sswitch_7
    const-string/jumbo v11, "\u5b58\u6b3e"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->optype:Ljava/lang/String;

    goto/16 :goto_9

    .line 230
    :sswitch_8
    const-string/jumbo v11, "\u8c03\u6574"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->optype:Ljava/lang/String;

    goto/16 :goto_9

    .line 233
    :sswitch_9
    const-string/jumbo v11, "\u5708\u5b58"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->optype:Ljava/lang/String;

    goto/16 :goto_9

    .line 236
    :sswitch_a
    const-string/jumbo v11, "\u5708\u5b58"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->optype:Ljava/lang/String;

    goto/16 :goto_9

    .line 240
    :sswitch_b
    const-string/jumbo v11, "\u67e5\u8be2\u53ef\u7528\u8d44\u91d1"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->optype:Ljava/lang/String;

    goto/16 :goto_9

    .line 243
    :sswitch_c
    const-string/jumbo v11, "\u67e5\u8be2\u4f59\u989d"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->optype:Ljava/lang/String;

    goto/16 :goto_9

    .line 247
    :sswitch_d
    const-string/jumbo v11, "\u8d26\u6237\u8f6c\u8d26"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->optype:Ljava/lang/String;

    goto/16 :goto_9

    .line 266
    :sswitch_e
    const-string/jumbo v10, "\u4eba\u6c11\u5e01"

    iput-object v10, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->currency:Ljava/lang/String;

    goto/16 :goto_a

    .line 269
    :sswitch_f
    const-string/jumbo v10, "\u7f8e\u5143"

    iput-object v10, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->currency:Ljava/lang/String;

    goto/16 :goto_a

    :catch_0
    move-exception v10

    .line 282
    :cond_c
    const-string/jumbo v10, ""

    iput-object v10, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->location:Ljava/lang/String;

    goto/16 :goto_b

    .line 356
    :cond_d
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 357
    const/16 v6, 0x30

    if-lt v5, v6, :cond_2

    const/16 v6, 0x39

    if-gt v5, v6, :cond_2

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 366
    :cond_e
    const/16 v1, 0x5a

    invoke-virtual {v3, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes(B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/nfc/Util;->byte2hexString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->serl:Ljava/lang/String;

    goto/16 :goto_4

    .line 377
    :cond_f
    array-length v2, v1

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    .line 378
    const-string/jumbo v2, "%02X%02X.%02X.%02X"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-byte v6, v1, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-byte v6, v1, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x2

    aget-byte v6, v1, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x3

    aget-byte v1, v1, v6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->date:Ljava/lang/String;

    goto/16 :goto_5

    .line 387
    :cond_10
    const-string/jumbo v2, ""

    iput-object v2, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->date:Ljava/lang/String;

    goto/16 :goto_6

    .line 391
    :cond_11
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 392
    iget-object v2, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->date:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "%02X%02X.%02X.%02X"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-byte v6, v1, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-byte v6, v1, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x2

    aget-byte v6, v1, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x3

    aget-byte v1, v1, v6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->date:Ljava/lang/String;

    goto/16 :goto_7

    .line 430
    :cond_12
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->name:Ljava/lang/String;

    goto/16 :goto_8

    .line 427
    :catch_1
    move-exception v1

    goto/16 :goto_8

    :catch_2
    move-exception v1

    goto/16 :goto_2

    .line 322
    nop

    :array_0
    .array-data 1
        -0x61t
        0x36t
    .end array-data

    .line 373
    nop

    :array_1
    .array-data 1
        0x5ft
        0x25t
    .end array-data

    .line 382
    nop

    :array_2
    .array-data 1
        0x5ft
        0x24t
    .end array-data

    .line 416
    nop

    :array_3
    .array-data 1
        -0x61t
        0x61t
    .end array-data

    .line 417
    nop

    :array_4
    .array-data 1
        -0x61t
        0x61t
    .end array-data

    .line 424
    nop

    :array_5
    .array-data 1
        0x5ft
        0x20t
    .end array-data

    .line 426
    nop

    :array_6
    .array-data 1
        0x5ft
        0x20t
    .end array-data

    .line 202
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0x20 -> :sswitch_6
        0x21 -> :sswitch_7
        0x22 -> :sswitch_8
        0x23 -> :sswitch_9
        0x24 -> :sswitch_a
        0x30 -> :sswitch_b
        0x31 -> :sswitch_c
        0x40 -> :sswitch_d
    .end sparse-switch

    .line 264
    :sswitch_data_1
    .sparse-switch
        0x156 -> :sswitch_e
        0x840 -> :sswitch_f
    .end sparse-switch
.end method
